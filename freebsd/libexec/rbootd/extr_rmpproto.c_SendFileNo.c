
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct TYPE_5__ {scalar_t__ rmp_flnmsize; int rmp_retcode; int rmp_flnm; int rmp_version; scalar_t__ rmp_session; int rmp_seqno; int rmp_type; } ;
struct rmp_packet {TYPE_1__ r_brpl; } ;
struct TYPE_6__ {int rmplen; struct rmp_packet rmp; } ;
typedef TYPE_2__ RMPCONN ;


 int C_MAXFILE ;
 int GETWORD (int ,int) ;
 int PUTWORD (int,int ) ;
 scalar_t__ RMPBOOTDATA ;
 int RMPBOOTSIZE (scalar_t__) ;
 int RMP_BOOT_REPL ;
 int RMP_E_NODFLT ;
 int RMP_E_OKAY ;
 int RMP_VERSION ;
 int SendPacket (TYPE_2__*) ;
 int htons (int ) ;

int
SendFileNo(struct rmp_packet *req, RMPCONN *rconn, char *filelist[])
{
 struct rmp_packet *rpl;
 char *src, *dst;
 u_int8_t *size;
 int i;

 GETWORD(req->r_brpl.rmp_seqno, i);
 rpl = &rconn->rmp;




 rpl->r_brpl.rmp_type = RMP_BOOT_REPL;
 PUTWORD(i, rpl->r_brpl.rmp_seqno);
 i--;
 rpl->r_brpl.rmp_session = 0;
 rpl->r_brpl.rmp_version = htons(RMP_VERSION);

 size = &rpl->r_brpl.rmp_flnmsize;
 *size = 0;







 if (i < C_MAXFILE && filelist[i] != ((void*)0)) {
  src = filelist[i];
  dst = (char *)&rpl->r_brpl.rmp_flnm;
  for (; *src && *size < RMPBOOTDATA; (*size)++) {
   if (*src == '\0')
    break;
   *dst++ = *src++;
  }
  rpl->r_brpl.rmp_retcode = RMP_E_OKAY;
 } else
  rpl->r_brpl.rmp_retcode = RMP_E_NODFLT;

 rconn->rmplen = RMPBOOTSIZE(*size);

 return(SendPacket(rconn));
}
