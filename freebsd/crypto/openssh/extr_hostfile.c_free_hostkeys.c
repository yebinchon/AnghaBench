
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct hostkeys {size_t num_entries; struct hostkeys* entries; int key; struct hostkeys* file; struct hostkeys* host; } ;


 int explicit_bzero (struct hostkeys*,int) ;
 int free (struct hostkeys*) ;
 int sshkey_free (int ) ;

void
free_hostkeys(struct hostkeys *hostkeys)
{
 u_int i;

 for (i = 0; i < hostkeys->num_entries; i++) {
  free(hostkeys->entries[i].host);
  free(hostkeys->entries[i].file);
  sshkey_free(hostkeys->entries[i].key);
  explicit_bzero(hostkeys->entries + i, sizeof(*hostkeys->entries));
 }
 free(hostkeys->entries);
 explicit_bzero(hostkeys, sizeof(*hostkeys));
 free(hostkeys);
}
