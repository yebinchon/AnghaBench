
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_9__ {int rcode; } ;
struct TYPE_8__ {scalar_t__ ndots; int res_h_errno; unsigned int options; scalar_t__ dnsrch; } ;
typedef TYPE_2__ HEADER ;


 scalar_t__ ECONNREFUSED ;


 int NS_MAXDNAME ;
 unsigned int RES_DEFNAMES ;
 unsigned int RES_DNSRCH ;
 unsigned int RES_NOTLDQUERY ;
 int RES_SET_H_ERRNO (TYPE_1__*,int const) ;
 int SERVFAIL ;

 scalar_t__ errno ;
 char* res_hostalias (TYPE_1__*,char const*,char*,int) ;
 int res_nquery (TYPE_1__*,char const*,int,int,int *,int) ;
 int res_nquerydomain (TYPE_1__*,char const*,char const*,int,int,int *,int) ;

int
res_nsearch(res_state statp,
     const char *name,
     int class, int type,
     u_char *answer,
     int anslen)
{
 const char *cp, * const *domain;
 HEADER *hp = (HEADER *) answer;
 char tmp[NS_MAXDNAME];
 u_int dots;
 int trailing_dot, ret, saved_herrno;
 int got_nodata = 0, got_servfail = 0, root_on_list = 0;
 int tried_as_is = 0;
 int searched = 0;

 errno = 0;
 RES_SET_H_ERRNO(statp, 130);
 dots = 0;
 for (cp = name; *cp != '\0'; cp++)
  dots += (*cp == '.');
 trailing_dot = 0;
 if (cp > name && *--cp == '.')
  trailing_dot++;


 if (!dots && (cp = res_hostalias(statp, name, tmp, sizeof tmp))!= ((void*)0))
  return (res_nquery(statp, cp, class, type, answer, anslen));






 saved_herrno = -1;
 if (dots >= statp->ndots || trailing_dot) {
  ret = res_nquerydomain(statp, name, ((void*)0), class, type,
      answer, anslen);
  if (ret > 0 || trailing_dot)
   return (ret);
  if (errno == ECONNREFUSED) {
   RES_SET_H_ERRNO(statp, 128);
   return (-1);
  }
  switch (statp->res_h_errno) {
  case 129:
  case 130:
   break;
  case 128:
   if (hp->rcode == SERVFAIL)
    break;

  default:
   return (-1);
  }
  saved_herrno = statp->res_h_errno;
  tried_as_is++;
 }







 if ((!dots && (statp->options & RES_DEFNAMES) != 0U) ||
     (dots && !trailing_dot && (statp->options & RES_DNSRCH) != 0U)) {
  int done = 0;

  for (domain = (const char * const *)statp->dnsrch;
       *domain && !done;
       domain++) {
   searched = 1;

   if (domain[0][0] == '\0' ||
       (domain[0][0] == '.' && domain[0][1] == '\0'))
    root_on_list++;

   if (root_on_list && tried_as_is)
    continue;

   ret = res_nquerydomain(statp, name, *domain,
            class, type,
            answer, anslen);
   if (ret > 0)
    return (ret);
   if (errno == ECONNREFUSED) {
    RES_SET_H_ERRNO(statp, 128);
    return (-1);
   }

   switch (statp->res_h_errno) {
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




   if ((statp->options & RES_DNSRCH) == 0U)
    done++;
  }
 }

 switch (statp->res_h_errno) {
 case 129:
 case 130:
  break;
 case 128:
  if (hp->rcode == SERVFAIL)
   break;

 default:
  goto giveup;
 }





 if ((dots || !searched || (statp->options & RES_NOTLDQUERY) == 0U) &&
     !(tried_as_is || root_on_list)) {
  ret = res_nquerydomain(statp, name, ((void*)0), class, type,
           answer, anslen);
  if (ret > 0)
   return (ret);
 }
giveup:
 if (saved_herrno != -1)
  RES_SET_H_ERRNO(statp, saved_herrno);
 else if (got_nodata)
  RES_SET_H_ERRNO(statp, 129);
 else if (got_servfail)
  RES_SET_H_ERRNO(statp, 128);
 return (-1);
}
