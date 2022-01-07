
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_dn_field_order_cnt {int cn; int c; int l; int st; int o; int ou; int email; } ;


 int MSG_ERROR ;







 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int get_dn_field_index(const struct tls_dn_field_order_cnt *dn_cnt,
         int nid)
{
 switch (nid) {
 case 134:
  return dn_cnt->cn;
 case 133:
  return dn_cnt->c;
 case 132:
  return dn_cnt->l;
 case 128:
  return dn_cnt->st;
 case 131:
  return dn_cnt->o;
 case 130:
  return dn_cnt->ou;
 case 129:
  return dn_cnt->email;
 default:
  wpa_printf(MSG_ERROR,
      "TLS: Unknown NID '%d' in check_cert_subject",
      nid);
  return -1;
 }
}
