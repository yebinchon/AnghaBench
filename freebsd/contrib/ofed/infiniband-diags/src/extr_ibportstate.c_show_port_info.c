
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;
typedef int buf ;


 int IB_PORT_LID_F ;
 int IB_PORT_LINK_SPEED_ACTIVE_F ;
 int IB_PORT_LINK_SPEED_ENABLED_F ;
 int IB_PORT_LINK_SPEED_EXT_ACTIVE_F ;
 int IB_PORT_LINK_SPEED_EXT_ENABLED_F ;
 int IB_PORT_LINK_SPEED_EXT_SUPPORTED_F ;
 int IB_PORT_LINK_SPEED_SUPPORTED_F ;
 int IB_PORT_LINK_WIDTH_ACTIVE_F ;
 int IB_PORT_LINK_WIDTH_ENABLED_F ;
 int IB_PORT_LINK_WIDTH_SUPPORTED_F ;
 int IB_PORT_LMC_F ;
 int IB_PORT_MKEY_F ;
 int IB_PORT_MKEY_LEASE_F ;
 int IB_PORT_MKEY_PROT_BITS_F ;
 int IB_PORT_SMLID_F ;
 int NOT_DISPLAYED_STR ;
 int mad_decode_field (int *,int ,char*) ;
 int mad_dump_field (int ,char*,int,char*) ;
 int mad_dump_portstates (char*,int,int *,int) ;
 char* portid2str (int *) ;
 int printf (char*,char*,int,char*) ;
 scalar_t__ show_keys ;
 int snprint_field (char*,int,int ,int,int ) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void show_port_info(ib_portid_t * dest, uint8_t * data, int portnum,
      int espeed_cap, int is_switch)
{
 char buf[2300];
 char val[64];

 mad_dump_portstates(buf, sizeof buf, data, sizeof *data);
 mad_decode_field(data, IB_PORT_LID_F, val);
 mad_dump_field(IB_PORT_LID_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_SMLID_F, val);
 mad_dump_field(IB_PORT_SMLID_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LMC_F, val);
 mad_dump_field(IB_PORT_LMC_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LINK_WIDTH_SUPPORTED_F, val);
 mad_dump_field(IB_PORT_LINK_WIDTH_SUPPORTED_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LINK_WIDTH_ENABLED_F, val);
 mad_dump_field(IB_PORT_LINK_WIDTH_ENABLED_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LINK_WIDTH_ACTIVE_F, val);
 mad_dump_field(IB_PORT_LINK_WIDTH_ACTIVE_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LINK_SPEED_SUPPORTED_F, val);
 mad_dump_field(IB_PORT_LINK_SPEED_SUPPORTED_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LINK_SPEED_ENABLED_F, val);
 mad_dump_field(IB_PORT_LINK_SPEED_ENABLED_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 mad_decode_field(data, IB_PORT_LINK_SPEED_ACTIVE_F, val);
 mad_dump_field(IB_PORT_LINK_SPEED_ACTIVE_F, buf + strlen(buf),
         sizeof buf - strlen(buf), val);
 sprintf(buf + strlen(buf), "%s", "\n");
 if (espeed_cap) {
  mad_decode_field(data, IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, val);
  mad_dump_field(IB_PORT_LINK_SPEED_EXT_SUPPORTED_F,
          buf + strlen(buf), sizeof buf - strlen(buf),
          val);
  sprintf(buf + strlen(buf), "%s", "\n");
  mad_decode_field(data, IB_PORT_LINK_SPEED_EXT_ENABLED_F, val);
  mad_dump_field(IB_PORT_LINK_SPEED_EXT_ENABLED_F,
          buf + strlen(buf), sizeof buf - strlen(buf),
          val);
  sprintf(buf + strlen(buf), "%s", "\n");
  mad_decode_field(data, IB_PORT_LINK_SPEED_EXT_ACTIVE_F, val);
  mad_dump_field(IB_PORT_LINK_SPEED_EXT_ACTIVE_F,
          buf + strlen(buf), sizeof buf - strlen(buf),
          val);
  sprintf(buf + strlen(buf), "%s", "\n");
 }
 if (!is_switch || portnum == 0) {
  if (show_keys) {
   mad_decode_field(data, IB_PORT_MKEY_F, val);
   mad_dump_field(IB_PORT_MKEY_F, buf + strlen(buf),
           sizeof buf - strlen(buf), val);
  } else
   snprint_field(buf+strlen(buf), sizeof(buf)-strlen(buf),
          IB_PORT_MKEY_F, 32, NOT_DISPLAYED_STR);
  sprintf(buf+strlen(buf), "%s", "\n");
  mad_decode_field(data, IB_PORT_MKEY_LEASE_F, val);
  mad_dump_field(IB_PORT_MKEY_LEASE_F, buf + strlen(buf),
          sizeof buf - strlen(buf), val);
  sprintf(buf+strlen(buf), "%s", "\n");
  mad_decode_field(data, IB_PORT_MKEY_PROT_BITS_F, val);
  mad_dump_field(IB_PORT_MKEY_PROT_BITS_F, buf + strlen(buf),
          sizeof buf - strlen(buf), val);
  sprintf(buf+strlen(buf), "%s", "\n");
 }

 printf("# Port info: %s port %d\n%s", portid2str(dest), portnum, buf);
}
