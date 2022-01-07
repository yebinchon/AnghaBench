
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {size_t num_host_key_files; } ;
struct TYPE_3__ {int ** host_certificates; int ** host_keys; } ;


 TYPE_2__ options ;
 TYPE_1__ sensitive_data ;
 int sshkey_free (int *) ;

void
destroy_sensitive_data(void)
{
 u_int i;

 for (i = 0; i < options.num_host_key_files; i++) {
  if (sensitive_data.host_keys[i]) {
   sshkey_free(sensitive_data.host_keys[i]);
   sensitive_data.host_keys[i] = ((void*)0);
  }
  if (sensitive_data.host_certificates[i]) {
   sshkey_free(sensitive_data.host_certificates[i]);
   sensitive_data.host_certificates[i] = ((void*)0);
  }
 }
}
