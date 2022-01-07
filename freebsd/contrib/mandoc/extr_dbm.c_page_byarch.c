
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dbm_res {int member_0; int page; int member_1; } ;
struct dbm_match {int dummy; } ;
typedef size_t int32_t ;
struct TYPE_2__ {scalar_t__ arch; } ;


 int ITER_ARCH ;
 int ITER_NONE ;
 char* dbm_get (scalar_t__) ;
 scalar_t__ dbm_match (struct dbm_match const*,char const*) ;
 int iteration ;
 size_t npages ;
 TYPE_1__* pages ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct dbm_res
page_byarch(const struct dbm_match *arg_match)
{
 static const struct dbm_match *match;
 struct dbm_res res = {-1, 0};
 static int32_t ip;
 const char *cp;



 if (arg_match != ((void*)0)) {
  iteration = ITER_ARCH;
  match = arg_match;
  ip = 0;
  return res;
 }



 for ( ; ip < npages; ip++)
  if (pages[ip].arch)
   for (cp = dbm_get(pages[ip].arch);
       *cp != '\0';
       cp = strchr(cp, '\0') + 1)
    if (dbm_match(match, cp)) {
     res.page = ip++;
     return res;
    }



 iteration = ITER_NONE;
 match = ((void*)0);
 return res;
}
