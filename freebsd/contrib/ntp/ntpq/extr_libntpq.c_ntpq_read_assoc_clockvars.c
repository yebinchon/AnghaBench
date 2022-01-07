
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int associd_t ;


 int CTL_OP_READCLOCK ;
 int memcpy (char*,char const*,size_t) ;
 int ntpq_doquerylist (int ,int ,int ,int ,int *,size_t*,char const**) ;
 int ntpq_varlist ;
 int numhosts ;

int
ntpq_read_assoc_clockvars(
 associd_t associd,
 char * resultbuf,
 int maxsize
 )
{
 const char *datap;
 int res;
 size_t dsize;
 u_short rstatus;

 res = ntpq_doquerylist(ntpq_varlist, CTL_OP_READCLOCK, associd,
          0, &rstatus, &dsize, &datap);
 if (res != 0)
  return 0;

 if (dsize == 0) {
  if (numhosts > 1)
   return 0;
 } else {
  if (dsize > maxsize)
   dsize = maxsize;
  memcpy(resultbuf, datap, dsize);
 }

 return dsize;
}
