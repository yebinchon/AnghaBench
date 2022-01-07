
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; int valid; scalar_t__ csum; } ;
typedef scalar_t__ CSUM ;
typedef TYPE_1__ ASCII_MSG ;


 int get_lsb_int16 (unsigned char**) ;
 scalar_t__ get_lsb_short (unsigned char**) ;
 int memcpy (int ,unsigned char*,int) ;

void
get_mbg_ascii_msg(
 unsigned char **bufpp,
 ASCII_MSG *ascii_msgp
 )
{
  ascii_msgp->csum = (CSUM) get_lsb_short(bufpp);
  ascii_msgp->valid = get_lsb_int16(bufpp);
  memcpy(ascii_msgp->s, *bufpp, sizeof(ascii_msgp->s));
  *bufpp += sizeof(ascii_msgp->s);
}
