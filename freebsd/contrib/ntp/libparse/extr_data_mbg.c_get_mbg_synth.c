
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* phase; void* range; void* freq; } ;
typedef TYPE_1__ SYNTH ;


 void* get_lsb_int16 (unsigned char**) ;

void
get_mbg_synth(
 unsigned char **buffpp,
 SYNTH *synthp
 )
{
  synthp->freq = get_lsb_int16(buffpp);
  synthp->range = get_lsb_int16(buffpp);
  synthp->phase = get_lsb_int16(buffpp);
}
