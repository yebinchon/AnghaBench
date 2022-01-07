
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_list {int dummy; } ;
typedef int WSADATA ;
typedef int BIO ;


 int BIO_free (int *) ;
 int MAKEWORD (int,int) ;
 int STACK_OF (int ) ;
 int WSAStartup (int ,int *) ;
 int X509 ;
 int X509_free ;
 int atexit (int *) ;
 int cert ;
 int do_wsa_cleanup ;
 int exit (int ) ;
 int * https (struct ip_list*,char const*,char const*) ;
 int ip_list_free (struct ip_list*) ;
 int printf (char*,...) ;
 int read_cert_or_builtin (char const*) ;
 struct ip_list* resolve_name (char const*,int,char const*,char const*,char const*,int,int) ;
 int sk_X509_pop_free (int,int ) ;
 scalar_t__ verb ;
 int verify_and_update_anchor (char const*,int *,int *,int,char const*) ;
 char* wsa_strerror (int) ;

__attribute__((used)) static int
do_certupdate(const char* root_anchor_file, const char* root_cert_file,
 const char* urlname, const char* xmlname, const char* p7sname,
 const char* p7signer, const char* res_conf, const char* root_hints,
 const char* debugconf, int ip4only, int ip6only, int port)
{
 STACK_OF(X509)* cert;
 BIO *xml, *p7s;
 struct ip_list* ip_list = ((void*)0);


 cert = read_cert_or_builtin(root_cert_file);


 ip_list = resolve_name(urlname, port, res_conf, root_hints, debugconf,
  ip4only, ip6only);
 xml = https(ip_list, xmlname, urlname);
 p7s = https(ip_list, p7sname, urlname);


 verify_and_update_anchor(root_anchor_file, xml, p7s, cert, p7signer);
 if(verb) printf("success: the anchor has been updated "
   "using the cert\n");

 BIO_free(xml);
 BIO_free(p7s);

 sk_X509_pop_free(cert, X509_free);

 ip_list_free(ip_list);
 return 1;
}
