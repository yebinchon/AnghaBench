
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_ssl_data {int conn; } ;
struct eap_sm {int ssl_ctx; } ;


 int os_free (int *) ;
 int * os_malloc (size_t) ;
 scalar_t__ tls_connection_export_key (int ,int ,char const*,int const*,size_t,int *,size_t) ;

u8 * eap_server_tls_derive_key(struct eap_sm *sm, struct eap_ssl_data *data,
          const char *label, const u8 *context,
          size_t context_len, size_t len)
{
 u8 *out;

 out = os_malloc(len);
 if (out == ((void*)0))
  return ((void*)0);

 if (tls_connection_export_key(sm->ssl_ctx, data->conn, label,
          context, context_len, out, len)) {
  os_free(out);
  return ((void*)0);
 }

 return out;
}
