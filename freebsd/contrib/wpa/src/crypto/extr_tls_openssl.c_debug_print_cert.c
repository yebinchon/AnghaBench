
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 size_t BIO_ctrl_pending (int *) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_read (int *,char*,size_t) ;
 int BIO_s_mem () ;
 scalar_t__ MSG_DEBUG ;
 int X509_print (int *,int *) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 scalar_t__ wpa_debug_level ;
 int wpa_printf (scalar_t__,char*,char const*,char*) ;

__attribute__((used)) static void debug_print_cert(X509 *cert, const char *title)
{

 BIO *out;
 size_t rlen;
 char *txt;
 int res;

 if (wpa_debug_level > MSG_DEBUG)
  return;

 out = BIO_new(BIO_s_mem());
 if (!out)
  return;

 X509_print(out, cert);
 rlen = BIO_ctrl_pending(out);
 txt = os_malloc(rlen + 1);
 if (!txt) {
  BIO_free(out);
  return;
 }

 res = BIO_read(out, txt, rlen);
 if (res > 0) {
  txt[res] = '\0';
  wpa_printf(MSG_DEBUG, "OpenSSL: %s\n%s", title, txt);
 }
 os_free(txt);

 BIO_free(out);

}
