
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
typedef int X509 ;


 int i2d_X509 (int *,int **) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int * wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * get_x509_cert(X509 *cert)
{
 struct wpabuf *buf;
 u8 *tmp;

 int cert_len = i2d_X509(cert, ((void*)0));
 if (cert_len <= 0)
  return ((void*)0);

 buf = wpabuf_alloc(cert_len);
 if (buf == ((void*)0))
  return ((void*)0);

 tmp = wpabuf_put(buf, cert_len);
 i2d_X509(cert, &tmp);
 return buf;
}
