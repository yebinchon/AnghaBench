
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct sshkey {int type; int ecdsa_nid; } ;
struct ssh {int dummy; } ;
struct TYPE_4__ {size_t num_host_key_files; } ;
struct TYPE_3__ {struct sshkey** host_keys; struct sshkey** host_pubkeys; struct sshkey** host_certificates; } ;



 int KEY_ECDSA ;




 TYPE_2__ options ;
 TYPE_1__ sensitive_data ;

__attribute__((used)) static struct sshkey *
get_hostkey_by_type(int type, int nid, int need_private, struct ssh *ssh)
{
 u_int i;
 struct sshkey *key;

 for (i = 0; i < options.num_host_key_files; i++) {
  switch (type) {
  case 129:
  case 132:
  case 131:
  case 130:
  case 128:
   key = sensitive_data.host_certificates[i];
   break;
  default:
   key = sensitive_data.host_keys[i];
   if (key == ((void*)0) && !need_private)
    key = sensitive_data.host_pubkeys[i];
   break;
  }
  if (key != ((void*)0) && key->type == type &&
      (key->type != KEY_ECDSA || key->ecdsa_nid == nid))
   return need_private ?
       sensitive_data.host_keys[i] : key;
 }
 return ((void*)0);
}
