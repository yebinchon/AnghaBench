
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {TYPE_1__* cert; } ;
struct TYPE_2__ {int type; } ;





const char *
sshkey_cert_type(const struct sshkey *k)
{
 switch (k->cert->type) {
 case 128:
  return "user";
 case 129:
  return "host";
 default:
  return "unknown";
 }
}
