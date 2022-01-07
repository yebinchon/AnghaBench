
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr_csum; int data_csum; int len; int cmd; } ;
typedef TYPE_1__ GPS_MSG_HDR ;


 int put_lsb_short (unsigned char**,int ) ;

void
put_mbg_header(
 unsigned char **bufpp,
 GPS_MSG_HDR *headerp
 )
{
  put_lsb_short(bufpp, headerp->cmd);
  put_lsb_short(bufpp, headerp->len);
  put_lsb_short(bufpp, headerp->data_csum);
  put_lsb_short(bufpp, headerp->hdr_csum);
}
