
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_name {int * alt_email; } ;


 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,size_t) ;
 size_t os_strlen (int *) ;
 int * os_zalloc (size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,int *) ;

__attribute__((used)) static int x509_parse_alt_name_rfc8222(struct x509_name *name,
           const u8 *pos, size_t len)
{

 wpa_hexdump_ascii(MSG_MSGDUMP, "X509: altName - rfc822Name", pos, len);
 os_free(name->alt_email);
 name->alt_email = os_zalloc(len + 1);
 if (name->alt_email == ((void*)0))
  return -1;
 os_memcpy(name->alt_email, pos, len);
 if (os_strlen(name->alt_email) != len) {
  wpa_printf(MSG_INFO, "X509: Reject certificate with "
      "embedded NUL byte in rfc822Name (%s[NUL])",
      name->alt_email);
  os_free(name->alt_email);
  name->alt_email = ((void*)0);
  return -1;
 }
 return 0;
}
