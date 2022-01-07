
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int rmp_session; int rmp_offset; int rmp_size; } ;
struct TYPE_14__ {int rmp_session; int rmp_offset; int rmp_type; void* rmp_retcode; int rmp_data; } ;
struct TYPE_13__ {int rmp_session; } ;
struct rmp_packet {scalar_t__ r_type; TYPE_3__ r_rrq; TYPE_2__ r_rrpl; TYPE_1__ r_brpl; } ;
typedef int off_t ;
struct TYPE_16__ {int rmplen; int bootfd; struct rmp_packet rmp; } ;
typedef TYPE_4__ RMPCONN ;


 int COPYWORD (int ,int ) ;
 int EnetStr (TYPE_4__*) ;
 TYPE_4__* FindConn (TYPE_4__*) ;
 int FreeConn (TYPE_4__*) ;
 int GETWORD (int ,int) ;
 int LOG_ERR ;
 TYPE_4__* NewConn (TYPE_4__*) ;
 scalar_t__ RMPREADDATA ;
 int RMPREADSIZE (int) ;
 scalar_t__ RMP_BOOT_REPL ;
 void* RMP_E_ABORT ;
 void* RMP_E_BADSID ;
 void* RMP_E_EOF ;
 void* RMP_E_OKAY ;
 int RMP_READ_REPL ;
 int SEEK_SET ;
 int SendPacket (TYPE_4__*) ;
 int htons (scalar_t__) ;
 scalar_t__ lseek (int ,int ,int ) ;
 scalar_t__ ntohs (int ) ;
 int read (int ,int *,int) ;
 int syslog (int ,char*,int ) ;

int
SendReadRepl(RMPCONN *rconn)
{
 int retval = 0;
 RMPCONN *oldconn;
 struct rmp_packet *rpl, *req;
 int size = 0;
 int madeconn = 0;





 if ((oldconn = FindConn(rconn)) == ((void*)0)) {
  if ((oldconn = NewConn(rconn)) == ((void*)0))
   return(0);
  syslog(LOG_ERR, "SendReadRepl: no active connection (%s)",
         EnetStr(rconn));
  madeconn++;
 }

 req = &rconn->rmp;
 rpl = &oldconn->rmp;

 if (madeconn) {
  rpl->r_rrpl.rmp_retcode = RMP_E_ABORT;
  retval = 1;
  goto sendpkt;
 }




 if (ntohs(req->r_rrq.rmp_session) !=
     ((rpl->r_type == RMP_BOOT_REPL)? ntohs(rpl->r_brpl.rmp_session):
                                      ntohs(rpl->r_rrpl.rmp_session))) {
  syslog(LOG_ERR, "SendReadRepl: bad session id (%s)",
         EnetStr(rconn));
  rpl->r_rrpl.rmp_retcode = RMP_E_BADSID;
  retval = 1;
  goto sendpkt;
 }
 if (ntohs(req->r_rrq.rmp_size) > RMPREADDATA)
  req->r_rrq.rmp_size = htons(RMPREADDATA);




 GETWORD(req->r_rrq.rmp_offset, size);
 if (lseek(oldconn->bootfd, (off_t)size, SEEK_SET) < 0) {
  syslog(LOG_ERR, "SendReadRepl: lseek: %m (%s)",
         EnetStr(rconn));
  rpl->r_rrpl.rmp_retcode = RMP_E_ABORT;
  retval = 1;
  goto sendpkt;
 }




 if ((size = read(oldconn->bootfd, &rpl->r_rrpl.rmp_data,
                  (int) ntohs(req->r_rrq.rmp_size))) <= 0) {
  if (size < 0) {
   syslog(LOG_ERR, "SendReadRepl: read: %m (%s)",
          EnetStr(rconn));
   rpl->r_rrpl.rmp_retcode = RMP_E_ABORT;
  } else {
   rpl->r_rrpl.rmp_retcode = RMP_E_EOF;
  }
  retval = 1;
  goto sendpkt;
 }




 rpl->r_rrpl.rmp_retcode = RMP_E_OKAY;

sendpkt:



 rpl->r_rrpl.rmp_type = RMP_READ_REPL;
 COPYWORD(req->r_rrq.rmp_offset, rpl->r_rrpl.rmp_offset);
 rpl->r_rrpl.rmp_session = req->r_rrq.rmp_session;

 oldconn->rmplen = RMPREADSIZE(size);

 retval &= SendPacket(oldconn);

 if (madeconn)
  FreeConn(oldconn);

 return (retval);
}
