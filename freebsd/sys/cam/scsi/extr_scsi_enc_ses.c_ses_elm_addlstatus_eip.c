
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_elm_addlstatus_base_hdr {int byte0; } ;



int
ses_elm_addlstatus_eip(struct ses_elm_addlstatus_base_hdr *hdr)
{
 return ((hdr)->byte0 >> 4) & 0x1;
}
