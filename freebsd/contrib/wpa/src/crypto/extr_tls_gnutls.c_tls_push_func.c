
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int push_buf; } ;
typedef int ssize_t ;
typedef scalar_t__ gnutls_transport_ptr_t ;


 int ENOMEM ;
 int errno ;
 int wpabuf_put_data (int ,void const*,size_t) ;
 scalar_t__ wpabuf_resize (int *,size_t) ;

__attribute__((used)) static ssize_t tls_push_func(gnutls_transport_ptr_t ptr, const void *buf,
        size_t len)
{
 struct tls_connection *conn = (struct tls_connection *) ptr;

 if (wpabuf_resize(&conn->push_buf, len) < 0) {
  errno = ENOMEM;
  return -1;
 }
 wpabuf_put_data(conn->push_buf, buf, len);

 return len;
}
