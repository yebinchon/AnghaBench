
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct TYPE_5__ {scalar_t__ rmp_flnmsize; int rmp_flnm; int rmp_version; scalar_t__ rmp_session; int rmp_seqno; int rmp_retcode; int rmp_type; } ;
struct rmp_packet {TYPE_1__ r_brpl; } ;
struct TYPE_6__ {int rmplen; struct rmp_packet rmp; } ;
typedef TYPE_2__ RMPCONN ;


 char* MyHost ;
 int RMPBOOTSIZE (scalar_t__) ;
 int RMP_BOOT_REPL ;
 int RMP_E_OKAY ;
 scalar_t__ RMP_HOSTLEN ;
 int RMP_VERSION ;
 int SendPacket (TYPE_2__*) ;
 int ZEROWORD (int ) ;
 int htons (int ) ;

int
SendServerID(RMPCONN *rconn)
{
 struct rmp_packet *rpl;
 char *src, *dst;
 u_int8_t *size;

 rpl = &rconn->rmp;




 rpl->r_brpl.rmp_type = RMP_BOOT_REPL;
 rpl->r_brpl.rmp_retcode = RMP_E_OKAY;
 ZEROWORD(rpl->r_brpl.rmp_seqno);
 rpl->r_brpl.rmp_session = 0;
 rpl->r_brpl.rmp_version = htons(RMP_VERSION);

 size = &rpl->r_brpl.rmp_flnmsize;





 src = MyHost;
 dst = (char *) &rpl->r_brpl.rmp_flnm;
 for (*size = 0; *size < RMP_HOSTLEN; (*size)++) {
  if (*src == '.' || *src == '\0')
   break;
  *dst++ = *src++;
 }

 rconn->rmplen = RMPBOOTSIZE(*size);

 return(SendPacket(rconn));
}
