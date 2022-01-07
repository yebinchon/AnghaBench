
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_tls_data {TYPE_1__ ssl; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;


 int tls_connection_established (int ,int ) ;

__attribute__((used)) static Boolean eap_tls_has_reauth_data(struct eap_sm *sm, void *priv)
{
 struct eap_tls_data *data = priv;
 return tls_connection_established(data->ssl_ctx, data->ssl.conn);
}
