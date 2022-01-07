
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int32 ;
typedef int u_char ;
struct TYPE_2__ {int r_m_e_op; scalar_t__ count; int status; } ;


 int CTL_ERROR ;
 scalar_t__ CTL_HEADER_LEN ;
 int CTL_OP_MASK ;
 scalar_t__ CTL_RESPONSE ;
 int DPRINTF (int,char*) ;
 size_t authencrypt (int ,int *,scalar_t__) ;
 int htons (int) ;
 int lcl_inter ;
 int numctlerrors ;
 scalar_t__ res_authenticate ;
 int res_keyid ;
 int res_opcode ;
 int rmt_addr ;
 TYPE_1__ rpkt ;
 int sendpkt (int ,int ,int,void*,scalar_t__) ;
 scalar_t__ sys_authenticate ;

__attribute__((used)) static void
ctl_error(
 u_char errcode
 )
{
 size_t maclen;

 numctlerrors++;
 DPRINTF(3, ("sending control error %u\n", errcode));





 rpkt.r_m_e_op = (u_char)CTL_RESPONSE | CTL_ERROR |
   (res_opcode & CTL_OP_MASK);
 rpkt.status = htons((u_short)(errcode << 8) & 0xff00);
 rpkt.count = 0;




 if (res_authenticate && sys_authenticate) {
  maclen = authencrypt(res_keyid, (u_int32 *)&rpkt,
         CTL_HEADER_LEN);
  sendpkt(rmt_addr, lcl_inter, -2, (void *)&rpkt,
   CTL_HEADER_LEN + maclen);
 } else
  sendpkt(rmt_addr, lcl_inter, -3, (void *)&rpkt,
   CTL_HEADER_LEN);
}
