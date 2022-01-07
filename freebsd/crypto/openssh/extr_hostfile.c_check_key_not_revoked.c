
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct sshkey {TYPE_1__* cert; } ;
struct hostkeys {size_t num_entries; TYPE_2__* entries; } ;
struct TYPE_4__ {scalar_t__ marker; int key; } ;
struct TYPE_3__ {struct sshkey* signature_key; } ;


 scalar_t__ MRK_REVOKE ;
 scalar_t__ sshkey_equal_public (struct sshkey*,int ) ;
 int sshkey_is_cert (struct sshkey*) ;

__attribute__((used)) static int
check_key_not_revoked(struct hostkeys *hostkeys, struct sshkey *k)
{
 int is_cert = sshkey_is_cert(k);
 u_int i;

 for (i = 0; i < hostkeys->num_entries; i++) {
  if (hostkeys->entries[i].marker != MRK_REVOKE)
   continue;
  if (sshkey_equal_public(k, hostkeys->entries[i].key))
   return -1;
  if (is_cert &&
      sshkey_equal_public(k->cert->signature_key,
      hostkeys->entries[i].key))
   return -1;
 }
 return 0;
}
