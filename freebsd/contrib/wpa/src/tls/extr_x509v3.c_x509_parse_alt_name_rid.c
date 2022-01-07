
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_name {int rid; } ;
typedef int buf ;


 int MSG_MSGDUMP ;
 int asn1_oid_to_str (int *,char*,int) ;
 scalar_t__ asn1_parse_oid (int const*,size_t,int *) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int x509_parse_alt_name_rid(struct x509_name *name,
       const u8 *pos, size_t len)
{
 char buf[80];


 if (asn1_parse_oid(pos, len, &name->rid) < 0)
  return -1;

 asn1_oid_to_str(&name->rid, buf, sizeof(buf));
 wpa_printf(MSG_MSGDUMP, "X509: altName - registeredID: %s", buf);

 return 0;
}
