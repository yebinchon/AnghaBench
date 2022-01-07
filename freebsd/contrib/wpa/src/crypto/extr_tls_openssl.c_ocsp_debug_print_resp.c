
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OCSP_RESPONSE ;
typedef int BIO ;


 size_t BIO_ctrl_pending (int *) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_read (int *,char*,size_t) ;
 int BIO_s_mem () ;
 scalar_t__ MSG_DEBUG ;
 int OCSP_RESPONSE_print (int *,int *,int ) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 scalar_t__ wpa_debug_level ;
 int wpa_printf (scalar_t__,char*,char*) ;

__attribute__((used)) static void ocsp_debug_print_resp(OCSP_RESPONSE *rsp)
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

 OCSP_RESPONSE_print(out, rsp, 0);
 rlen = BIO_ctrl_pending(out);
 txt = os_malloc(rlen + 1);
 if (!txt) {
  BIO_free(out);
  return;
 }

 res = BIO_read(out, txt, rlen);
 if (res > 0) {
  txt[res] = '\0';
  wpa_printf(MSG_DEBUG, "OpenSSL: OCSP Response\n%s", txt);
 }
 os_free(txt);
 BIO_free(out);

}
