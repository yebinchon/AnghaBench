
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
typedef int WOLFSSL_X509 ;


 int * wolfSSL_X509_get_der (int *,int*) ;
 struct wpabuf* wpabuf_alloc_copy (int const*,int) ;

__attribute__((used)) static struct wpabuf * get_x509_cert(WOLFSSL_X509 *cert)
{
 struct wpabuf *buf = ((void*)0);
 const u8 *data;
 int cert_len;

 data = wolfSSL_X509_get_der(cert, &cert_len);
 if (!data)
  buf = wpabuf_alloc_copy(data, cert_len);

 return buf;
}
