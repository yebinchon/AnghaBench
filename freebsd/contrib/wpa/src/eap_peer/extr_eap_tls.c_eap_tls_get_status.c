
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tls_data {int ssl; } ;
struct eap_sm {int dummy; } ;


 int eap_peer_tls_status (struct eap_sm*,int *,char*,size_t,int) ;

__attribute__((used)) static int eap_tls_get_status(struct eap_sm *sm, void *priv, char *buf,
         size_t buflen, int verbose)
{
 struct eap_tls_data *data = priv;
 return eap_peer_tls_status(sm, &data->ssl, buf, buflen, verbose);
}
