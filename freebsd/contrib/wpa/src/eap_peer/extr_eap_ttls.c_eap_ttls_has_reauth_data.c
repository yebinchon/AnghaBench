
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_ttls_data {scalar_t__ phase2_success; TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;
typedef int Boolean ;


 scalar_t__ tls_connection_established (int ,int ) ;

__attribute__((used)) static Boolean eap_ttls_has_reauth_data(struct eap_sm *sm, void *priv)
{
 struct eap_ttls_data *data = priv;
 return tls_connection_established(sm->ssl_ctx, data->ssl.conn) &&
  data->phase2_success;
}
