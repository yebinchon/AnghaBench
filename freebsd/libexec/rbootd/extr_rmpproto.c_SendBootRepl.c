
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct TYPE_11__ {size_t rmp_flnmsize; char rmp_flnm; void* rmp_retcode; void* rmp_version; void* rmp_session; int rmp_seqno; int rmp_type; } ;
struct TYPE_10__ {size_t rmp_flnmsize; char rmp_flnm; int rmp_seqno; } ;
struct rmp_packet {TYPE_2__ r_brpl; TYPE_1__ r_brq; } ;
struct TYPE_12__ {int rmplen; int bootfd; struct rmp_packet rmp; } ;
typedef TYPE_3__ RMPCONN ;


 int COPYWORD (int ,int ) ;
 size_t C_MAXFILE ;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ ENOENT ;
 int EnetStr (TYPE_3__*) ;
 TYPE_3__* FindConn (TYPE_3__*) ;
 int GenSessID () ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int O_RDONLY ;
 int RMPBOOTDATA ;
 int RMPBOOTSIZE (size_t) ;
 int RMP_BOOT_REPL ;
 void* RMP_E_BUSY ;
 void* RMP_E_NOFILE ;
 void* RMP_E_OKAY ;
 void* RMP_E_OPENFILE ;
 int RMP_VERSION ;
 int RemoveConn (TYPE_3__*) ;
 scalar_t__ STREQN (char*,char*) ;
 int SendPacket (TYPE_3__*) ;
 scalar_t__ errno ;
 void* htons (int ) ;
 int open (char*,int ,int) ;
 char* strrchr (char*,char) ;
 int syslog (int ,char*,int ,...) ;

int
SendBootRepl(struct rmp_packet *req, RMPCONN *rconn, char *filelist[])
{
 int retval;
 char *filename, filepath[RMPBOOTDATA+1];
 RMPCONN *oldconn;
 struct rmp_packet *rpl;
 char *src, *dst1, *dst2;
 u_int8_t i;





 if ((oldconn = FindConn(rconn)) != ((void*)0)) {
  syslog(LOG_WARNING, "%s: dropping existing connection",
         EnetStr(oldconn));
  RemoveConn(oldconn);
 }

 rpl = &rconn->rmp;




 rpl->r_brpl.rmp_type = RMP_BOOT_REPL;
 COPYWORD(req->r_brq.rmp_seqno, rpl->r_brpl.rmp_seqno);
 rpl->r_brpl.rmp_session = htons(GenSessID());
 rpl->r_brpl.rmp_version = htons(RMP_VERSION);
 rpl->r_brpl.rmp_flnmsize = req->r_brq.rmp_flnmsize;




 src = &req->r_brq.rmp_flnm;
 dst1 = filepath;
 dst2 = &rpl->r_brpl.rmp_flnm;
 for (i = 0; i < req->r_brq.rmp_flnmsize; i++)
  *dst1++ = *dst2++ = *src++;
 *dst1 = '\0';
 filename = (filename = strrchr(filepath,'/'))? ++filename: filepath;




 for (i = 0; i < C_MAXFILE && filelist[i] != ((void*)0); i++)
  if (STREQN(filename, filelist[i]))
   goto match;




 rpl->r_brpl.rmp_retcode = RMP_E_NOFILE;
 retval = 0;
 goto sendpkt;

match:
 if ((rconn->bootfd = open(filename, O_RDONLY, 0600)) < 0) {
  rpl->r_brpl.rmp_retcode = (errno == ENOENT)? RMP_E_NOFILE:
   (errno == EMFILE || errno == ENFILE)? RMP_E_BUSY:
   RMP_E_OPENFILE;
  retval = 0;
 } else {
  rpl->r_brpl.rmp_retcode = RMP_E_OKAY;
  retval = 1;
 }

sendpkt:
 syslog(LOG_INFO, "%s: request to boot %s (%s)",
        EnetStr(rconn), filename, retval? "granted": "denied");

 rconn->rmplen = RMPBOOTSIZE(rpl->r_brpl.rmp_flnmsize);

 return (retval & SendPacket(rconn));
}
