
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct sshkey {int type; TYPE_1__* cert; } ;
struct hostkeys {size_t num_entries; struct hostkey_entry* entries; } ;
struct hostkey_entry {scalar_t__ marker; struct sshkey* key; } ;
struct TYPE_2__ {int signature_key; } ;
typedef scalar_t__ HostkeyMarker ;
typedef int HostStatus ;


 int HOST_CHANGED ;
 int HOST_FOUND ;
 int HOST_NEW ;
 int HOST_OK ;
 int HOST_REVOKED ;
 scalar_t__ MRK_CA ;
 scalar_t__ MRK_NONE ;
 scalar_t__ check_key_not_revoked (struct hostkeys*,struct sshkey*) ;
 scalar_t__ sshkey_equal (struct sshkey*,struct sshkey*) ;
 scalar_t__ sshkey_equal_public (int ,struct sshkey*) ;
 int sshkey_is_cert (struct sshkey*) ;

__attribute__((used)) static HostStatus
check_hostkeys_by_key_or_type(struct hostkeys *hostkeys,
    struct sshkey *k, int keytype, const struct hostkey_entry **found)
{
 u_int i;
 HostStatus end_return = HOST_NEW;
 int want_cert = sshkey_is_cert(k);
 HostkeyMarker want_marker = want_cert ? MRK_CA : MRK_NONE;

 if (found != ((void*)0))
  *found = ((void*)0);

 for (i = 0; i < hostkeys->num_entries; i++) {
  if (hostkeys->entries[i].marker != want_marker)
   continue;
  if (k == ((void*)0)) {
   if (hostkeys->entries[i].key->type != keytype)
    continue;
   end_return = HOST_FOUND;
   if (found != ((void*)0))
    *found = hostkeys->entries + i;
   k = hostkeys->entries[i].key;
   break;
  }
  if (want_cert) {
   if (sshkey_equal_public(k->cert->signature_key,
       hostkeys->entries[i].key)) {

    end_return = HOST_OK;
    if (found != ((void*)0))
     *found = hostkeys->entries + i;
    break;
   }
  } else {
   if (sshkey_equal(k, hostkeys->entries[i].key)) {
    end_return = HOST_OK;
    if (found != ((void*)0))
     *found = hostkeys->entries + i;
    break;
   }

   end_return = HOST_CHANGED;
   if (found != ((void*)0))
    *found = hostkeys->entries + i;
  }
 }
 if (check_key_not_revoked(hostkeys, k) != 0) {
  end_return = HOST_REVOKED;
  if (found != ((void*)0))
   *found = ((void*)0);
 }
 return end_return;
}
