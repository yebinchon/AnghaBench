
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {char* periph_name; int unit_number; } ;


 int printf (char*,char*,int ,int,char*) ;

void
xpt_announce_quirks(struct cam_periph *periph, int quirks, char *bit_string)
{
 if (quirks != 0) {
  printf("%s%d: quirks=0x%b\n", periph->periph_name,
      periph->unit_number, quirks, bit_string);
 }
}
