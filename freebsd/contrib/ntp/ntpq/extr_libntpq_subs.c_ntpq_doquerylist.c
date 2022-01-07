
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct varlist {int dummy; } ;
struct ntpq_varlist {int dummy; } ;
typedef int associd_t ;


 int doquerylist (struct varlist*,int,int ,int,int *,size_t*,char const**) ;

int
ntpq_doquerylist(
 struct ntpq_varlist *vlist,
 int op,
 associd_t associd,
 int auth,
 u_short *rstatus,
 size_t *dsize,
 const char **datap
 )
{
 return doquerylist((struct varlist *)vlist, op, associd, auth,
      rstatus, dsize, datap);
}
