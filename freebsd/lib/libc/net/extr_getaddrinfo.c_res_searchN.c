
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct res_target {scalar_t__ answer; } ;
typedef TYPE_1__* res_state ;
typedef int abuf ;
struct TYPE_9__ {int rcode; } ;
struct TYPE_8__ {scalar_t__ ndots; int res_h_errno; int options; scalar_t__ dnsrch; } ;
typedef TYPE_2__ HEADER ;


 scalar_t__ ECONNREFUSED ;

 int MAXDNAME ;

 int RES_DEFNAMES ;
 int RES_DNSRCH ;
 int RES_NOTLDQUERY ;
 int RES_SET_H_ERRNO (TYPE_1__*,int const) ;
 int SERVFAIL ;

 scalar_t__ errno ;
 char* res_hostalias (TYPE_1__*,char const*,char*,int) ;
 int res_queryN (char const*,struct res_target*,TYPE_1__*) ;
 int res_querydomainN (char const*,char const*,struct res_target*,TYPE_1__*) ;

__attribute__((used)) static int
res_searchN(const char *name, struct res_target *target, res_state res)
{
 const char *cp, * const *domain;
 HEADER *hp = (HEADER *)(void *)target->answer;
 u_int dots;
 int trailing_dot, ret, saved_herrno;
 int got_nodata = 0, got_servfail = 0, root_on_list = 0;
 int tried_as_is = 0;
 int searched = 0;
 char abuf[MAXDNAME];

 errno = 0;
 RES_SET_H_ERRNO(res, 130);
 dots = 0;
 for (cp = name; *cp; cp++)
  dots += (*cp == '.');
 trailing_dot = 0;
 if (cp > name && *--cp == '.')
  trailing_dot++;




 if (!dots &&
     (cp = res_hostalias(res, name, abuf, sizeof(abuf))) != ((void*)0))
  return (res_queryN(cp, target, res));






 saved_herrno = -1;
 if (dots >= res->ndots || trailing_dot) {
  ret = res_querydomainN(name, ((void*)0), target, res);
  if (ret > 0 || trailing_dot)
   return (ret);
  if (errno == ECONNREFUSED) {
   RES_SET_H_ERRNO(res, 128);
   return (-1);
  }
  switch (res->res_h_errno) {
  case 129:
  case 130:
   break;
  case 128:
   if (hp->rcode == SERVFAIL)
    break;

  default:
   return (-1);
  }
  saved_herrno = res->res_h_errno;
  tried_as_is++;
 }







 if ((!dots && (res->options & RES_DEFNAMES)) ||
     (dots && !trailing_dot && (res->options & RES_DNSRCH))) {
  int done = 0;

  for (domain = (const char * const *)res->dnsrch;
     *domain && !done;
     domain++) {
   searched = 1;

   if (domain[0][0] == '\0' ||
       (domain[0][0] == '.' && domain[0][1] == '\0'))
    root_on_list++;

   if (root_on_list && tried_as_is)
    continue;

   ret = res_querydomainN(name, *domain, target, res);
   if (ret > 0)
    return (ret);
   if (errno == ECONNREFUSED) {
    RES_SET_H_ERRNO(res, 128);
    return (-1);
   }

   switch (res->res_h_errno) {
   case 129:
    got_nodata++;

   case 130:

    break;
   case 128:
    got_servfail++;
    if (hp->rcode == SERVFAIL) {

     break;
    }

   default:

    done++;
   }




   if (!(res->options & RES_DNSRCH))
           done++;
  }
 }

 switch (res->res_h_errno) {
 case 129:
 case 130:
  break;
 case 128:
  if (hp->rcode == SERVFAIL)
   break;

 default:
  goto giveup;
 }





 if ((dots || !searched || !(res->options & RES_NOTLDQUERY)) &&
     !(tried_as_is || root_on_list)) {
  ret = res_querydomainN(name, ((void*)0), target, res);
  if (ret > 0)
   return (ret);
 }
giveup:
 if (saved_herrno != -1)
  RES_SET_H_ERRNO(res, saved_herrno);
 else if (got_nodata)
  RES_SET_H_ERRNO(res, 129);
 else if (got_servfail)
  RES_SET_H_ERRNO(res, 128);
 return (-1);
}
