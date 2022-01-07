
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_ttls_data {int phase2_type; TYPE_1__* phase2_method; int ttls_version; int ssl; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {char* name; } ;







 int eap_peer_tls_status (struct eap_sm*,int *,char*,size_t,int) ;
 int os_snprintf (char*,size_t,char*,...) ;
 scalar_t__ os_snprintf_error (size_t,int) ;

__attribute__((used)) static int eap_ttls_get_status(struct eap_sm *sm, void *priv, char *buf,
          size_t buflen, int verbose)
{
 struct eap_ttls_data *data = priv;
 int len, ret;

 len = eap_peer_tls_status(sm, &data->ssl, buf, buflen, verbose);
 ret = os_snprintf(buf + len, buflen - len,
     "EAP-TTLSv%d Phase2 method=",
     data->ttls_version);
 if (os_snprintf_error(buflen - len, ret))
  return len;
 len += ret;
 switch (data->phase2_type) {
 case 131:
  ret = os_snprintf(buf + len, buflen - len, "EAP-%s\n",
      data->phase2_method ?
      data->phase2_method->name : "?");
  break;
 case 129:
  ret = os_snprintf(buf + len, buflen - len, "MSCHAPV2\n");
  break;
 case 130:
  ret = os_snprintf(buf + len, buflen - len, "MSCHAP\n");
  break;
 case 128:
  ret = os_snprintf(buf + len, buflen - len, "PAP\n");
  break;
 case 132:
  ret = os_snprintf(buf + len, buflen - len, "CHAP\n");
  break;
 default:
  ret = 0;
  break;
 }
 if (os_snprintf_error(buflen - len, ret))
  return len;
 len += ret;

 return len;
}
