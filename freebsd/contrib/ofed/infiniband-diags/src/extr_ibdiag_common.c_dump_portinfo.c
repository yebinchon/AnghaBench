
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PORT_CAPMASK2_F ;
 int IB_PORT_FIRST_F ;
 int IB_PORT_LAST_F ;
 int IB_PORT_LINK_SPEED_EXT_LAST_F ;
 int IB_PORT_MKEY_F ;
 int NOT_DISPLAYED_STR ;
 int mad_decode_field (void*,int,char*) ;
 int mad_dump_field (int,char*,int,char*) ;
 int printf (char*,...) ;
 scalar_t__ show_keys ;
 int snprint_field (char*,int,int,int,int ) ;

void dump_portinfo(void *pi, int tabs)
{
 int field, i;
 char val[64];
 char buf[1024];

 for (field = IB_PORT_FIRST_F; field < IB_PORT_LAST_F; field++) {
  for (i=0;i<tabs;i++)
   printf("\t");
  if (field == IB_PORT_MKEY_F && show_keys == 0) {
   snprint_field(buf, 1024, field, 32, NOT_DISPLAYED_STR);
  } else {
   mad_decode_field(pi, field, val);
   if (!mad_dump_field(field, buf, 1024, val))
    return;
  }
  printf("%s\n", buf);
 }

 for (field = IB_PORT_CAPMASK2_F;
      field < IB_PORT_LINK_SPEED_EXT_LAST_F; field++) {
  for (i=0;i<tabs;i++)
   printf("\t");
  mad_decode_field(pi, field, val);
  if (!mad_dump_field(field, buf, 1024, val))
   return;
  printf("%s\n", buf);
 }
}
