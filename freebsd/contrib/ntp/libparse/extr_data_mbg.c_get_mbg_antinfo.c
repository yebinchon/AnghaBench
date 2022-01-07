
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delta_t; int tm_reconn; int tm_disconn; int status; } ;
typedef TYPE_1__ ANT_INFO ;


 int get_lsb_int16 (unsigned char**) ;
 int get_lsb_long (unsigned char**) ;
 int get_mbg_tm (unsigned char**,int *) ;

void
get_mbg_antinfo(
 unsigned char **buffpp,
 ANT_INFO *antinfop
 )
{
  antinfop->status = get_lsb_int16(buffpp);
  get_mbg_tm(buffpp, &antinfop->tm_disconn);
  get_mbg_tm(buffpp, &antinfop->tm_reconn);
  antinfop->delta_t = get_lsb_long(buffpp);
}
