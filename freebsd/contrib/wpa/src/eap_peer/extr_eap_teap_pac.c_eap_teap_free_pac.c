
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {struct eap_teap_pac* a_id_info; struct eap_teap_pac* i_id; struct eap_teap_pac* a_id; struct eap_teap_pac* pac_info; struct eap_teap_pac* pac_opaque; } ;


 int os_free (struct eap_teap_pac*) ;

void eap_teap_free_pac(struct eap_teap_pac *pac)
{
 os_free(pac->pac_opaque);
 os_free(pac->pac_info);
 os_free(pac->a_id);
 os_free(pac->i_id);
 os_free(pac->a_id_info);
 os_free(pac);
}
