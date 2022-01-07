
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int * tls_in; scalar_t__ tls_in_total; scalar_t__ tls_in_left; } ;


 int wpabuf_free (int *) ;

void eap_peer_tls_reset_input(struct eap_ssl_data *data)
{
 data->tls_in_left = data->tls_in_total = 0;
 wpabuf_free(data->tls_in);
 data->tls_in = ((void*)0);
}
