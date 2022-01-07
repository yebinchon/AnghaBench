
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_name {size_t ip_len; int * ip; } ;


 int MSG_MSGDUMP ;
 int os_free (int *) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

__attribute__((used)) static int x509_parse_alt_name_ip(struct x509_name *name,
           const u8 *pos, size_t len)
{

 wpa_hexdump(MSG_MSGDUMP, "X509: altName - iPAddress", pos, len);
 os_free(name->ip);
 name->ip = os_memdup(pos, len);
 if (name->ip == ((void*)0))
  return -1;
 name->ip_len = len;
 return 0;
}
