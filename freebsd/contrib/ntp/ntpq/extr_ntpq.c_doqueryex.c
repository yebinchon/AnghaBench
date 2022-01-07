
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int associd_t ;


 int ERR_INCOMPLETE ;
 int ERR_TIMEOUT ;
 int fprintf (int ,char*) ;
 int getresponse (int,int ,int *,size_t*,char const**,int) ;
 int havehost ;
 int sendrequest (int,int ,int,size_t,char const*) ;
 int sequence ;
 int show_error_msg (int,int ) ;
 int stderr ;

int
doqueryex(
 int opcode,
 associd_t associd,
 int auth,
 size_t qsize,
 const char *qdata,
 u_short *rstatus,
 size_t *rsize,
 const char **rdata,
 int quiet
 )
{
 int res;
 int done;




 if (!havehost) {
  fprintf(stderr, "***No host open, use `host' command\n");
  return -1;
 }

 done = 0;
 sequence++;

    again:



 res = sendrequest(opcode, associd, auth, qsize, qdata);
 if (res != 0)
  return res;




 res = getresponse(opcode, associd, rstatus, rsize, rdata, done);

 if (res > 0) {
  if (!done && (res == ERR_TIMEOUT || res == ERR_INCOMPLETE)) {
   if (res == ERR_INCOMPLETE) {




    sequence++;
   }
   done = 1;
   goto again;
  }
  if (!quiet)
   show_error_msg(res, associd);

 }
 return res;
}
