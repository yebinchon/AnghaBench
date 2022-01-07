
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gnutls_x509_crt_t ;


 int GNUTLS_VERIFY_DO_NOT_ALLOW_WILDCARDS ;
 int MSG_DEBUG ;
 int gnutls_x509_crt_check_hostname (int ,char const*) ;
 int gnutls_x509_crt_check_hostname2 (int ,char const*,int ) ;
 int wpa_printf (int ,char*,char*,char const*,int) ;

__attribute__((used)) static int tls_match_suffix_helper(gnutls_x509_crt_t cert, const char *match,
       int full)
{
 int res = -1;







 if (res == -1)
  res = gnutls_x509_crt_check_hostname(cert, match);

 wpa_printf(MSG_DEBUG, "TLS: Match domain against %s%s --> res=%d",
     full ? "": "suffix ", match, res);
 return res;
}
