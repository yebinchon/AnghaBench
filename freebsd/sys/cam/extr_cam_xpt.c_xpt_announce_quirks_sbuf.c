
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct cam_periph {int unit_number; int periph_name; } ;
struct TYPE_2__ {scalar_t__ announce_nosbuf; } ;


 int sbuf_printf (struct sbuf*,char*,int ,int ,int,char*) ;
 int xpt_announce_quirks (struct cam_periph*,int,char*) ;
 TYPE_1__ xsoftc ;

void
xpt_announce_quirks_sbuf(struct cam_periph *periph, struct sbuf *sb,
    int quirks, char *bit_string)
{
 if (xsoftc.announce_nosbuf != 0) {
  xpt_announce_quirks(periph, quirks, bit_string);
  return;
 }

 if (quirks != 0) {
  sbuf_printf(sb, "%s%d: quirks=0x%b\n", periph->periph_name,
      periph->unit_number, quirks, bit_string);
 }
}
