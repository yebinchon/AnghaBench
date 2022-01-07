
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct eap_peap_data {TYPE_1__* phase2_method; int peap_version; int ssl; } ;
struct TYPE_2__ {int name; } ;


 int eap_peer_tls_status (struct eap_sm*,int *,char*,size_t,int) ;
 int os_snprintf (char*,size_t,char*,int ,int ) ;
 scalar_t__ os_snprintf_error (size_t,int) ;

__attribute__((used)) static int eap_peap_get_status(struct eap_sm *sm, void *priv, char *buf,
          size_t buflen, int verbose)
{
 struct eap_peap_data *data = priv;
 int len, ret;

 len = eap_peer_tls_status(sm, &data->ssl, buf, buflen, verbose);
 if (data->phase2_method) {
  ret = os_snprintf(buf + len, buflen - len,
      "EAP-PEAPv%d Phase2 method=%s\n",
      data->peap_version,
      data->phase2_method->name);
  if (os_snprintf_error(buflen - len, ret))
   return len;
  len += ret;
 }
 return len;
}
