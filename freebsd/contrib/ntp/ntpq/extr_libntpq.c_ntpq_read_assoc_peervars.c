
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int associd_t ;


 int CTL_OP_READVAR ;
 char* currenthost ;
 int doquery (int ,int,int ,int ,int *,int *,size_t*,char const**) ;
 int fprintf (int ,char*,...) ;
 int memcpy (char*,char const*,size_t) ;
 int numhosts ;
 int stderr ;

int
ntpq_read_assoc_peervars(
 associd_t associd,
 char * resultbuf,
 int maxsize
 )
{
 const char * datap;
 int res;
 size_t dsize;
 u_short rstatus;

 res = doquery(CTL_OP_READVAR, associd, 0, 0, ((void*)0), &rstatus,
        &dsize, &datap);
 if (res != 0)
  return 0;
 if (dsize <= 0) {
  if (numhosts > 1)
   fprintf(stderr, "server=%s ", currenthost);
  fprintf(stderr,
   "***No information returned for association %d\n",
   associd);

  return 0;
 }
 if (dsize > maxsize)
  dsize = maxsize;
 memcpy(resultbuf, datap, dsize);

 return dsize;
}
