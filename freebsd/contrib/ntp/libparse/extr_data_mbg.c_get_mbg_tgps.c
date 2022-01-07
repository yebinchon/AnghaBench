
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* tick; void* sec; int wn; } ;
typedef TYPE_1__ T_GPS ;


 void* get_lsb_long (unsigned char**) ;
 int get_lsb_uint16 (unsigned char**) ;

void
get_mbg_tgps(
 unsigned char **bufpp,
 T_GPS *tgpsp
 )
{
  tgpsp->wn = get_lsb_uint16(bufpp);
  tgpsp->sec = get_lsb_long(bufpp);
  tgpsp->tick = get_lsb_long(bufpp);
}
