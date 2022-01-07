
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tls_version; } ;
struct tlsv1_client {TYPE_1__ rl; } ;





 int os_strlcpy (char*,char*,size_t) ;

int tlsv1_client_get_version(struct tlsv1_client *conn, char *buf,
        size_t buflen)
{
 if (!conn)
  return -1;
 switch (conn->rl.tls_version) {
 case 130:
  os_strlcpy(buf, "TLSv1", buflen);
  break;
 case 129:
  os_strlcpy(buf, "TLSv1.1", buflen);
  break;
 case 128:
  os_strlcpy(buf, "TLSv1.2", buflen);
  break;
 default:
  return -1;
 }

 return 0;
}
