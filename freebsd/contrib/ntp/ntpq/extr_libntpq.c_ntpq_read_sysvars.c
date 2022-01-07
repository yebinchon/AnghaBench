
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int CTL_OP_READVAR ;
 char* currenthost ;
 int doquery (int ,int ,int ,int ,int *,int *,size_t*,char const**) ;
 int fprintf (int ,char*,...) ;
 int memcpy (char*,char const*,size_t) ;
 size_t min (size_t,size_t) ;
 int numhosts ;
 int stderr ;

size_t
ntpq_read_sysvars(
 char * resultbuf,
 size_t maxsize
 )
{
 const char * datap;
 int res;
 size_t dsize;
 u_short rstatus;

 res = doquery(CTL_OP_READVAR, 0, 0, 0, ((void*)0), &rstatus,
        &dsize, &datap);

 if (res != 0)
  return 0;

 if (dsize == 0) {
  if (numhosts > 1)
   fprintf(stderr, "server=%s ", currenthost);
  fprintf(stderr, "***No sysvar information returned\n");

  return 0;
 } else {
  dsize = min(dsize, maxsize);
  memcpy(resultbuf, datap, dsize);
 }

 return dsize;
}
