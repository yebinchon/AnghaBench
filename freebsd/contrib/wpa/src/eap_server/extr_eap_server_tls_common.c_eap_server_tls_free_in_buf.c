
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int * tls_in; int tmpbuf; } ;


 int wpabuf_free (int *) ;

__attribute__((used)) static void eap_server_tls_free_in_buf(struct eap_ssl_data *data)
{
 if (data->tls_in != &data->tmpbuf)
  wpabuf_free(data->tls_in);
 data->tls_in = ((void*)0);
}
