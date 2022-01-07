
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_in_data {scalar_t__ consumed; struct wpabuf const* in_data; } ;



__attribute__((used)) static void wolfssl_reset_in_data(struct tls_in_data *in,
      const struct wpabuf *buf)
{

 in->in_data = buf;
 in->consumed = 0;
}
