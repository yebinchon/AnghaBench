
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_peap_data {scalar_t__ phase2_success; TYPE_1__ ssl; } ;
typedef int Boolean ;


 scalar_t__ tls_connection_established (int ,int ) ;

__attribute__((used)) static Boolean eap_peap_has_reauth_data(struct eap_sm *sm, void *priv)
{
 struct eap_peap_data *data = priv;
 return tls_connection_established(sm->ssl_ctx, data->ssl.conn) &&
  data->phase2_success;
}
