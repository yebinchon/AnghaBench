
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int code; } ;
typedef TYPE_1__ SW_REV ;


 int get_lsb_uint16 (unsigned char**) ;
 int memcpy (int ,unsigned char*,int) ;

void
get_mbg_sw_rev(
 unsigned char **bufpp,
 SW_REV *sw_revp
 )
{
  sw_revp->code = get_lsb_uint16(bufpp);
  memcpy(sw_revp->name, *bufpp, sizeof(sw_revp->name));
  *bufpp += sizeof(sw_revp->name);
}
