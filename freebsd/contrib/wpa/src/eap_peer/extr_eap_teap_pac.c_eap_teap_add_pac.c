
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {struct eap_teap_pac* next; int a_id_info_len; int a_id_info; int i_id_len; int i_id; int a_id_len; int a_id; int pac_info_len; int pac_info; int pac_opaque_len; int pac_opaque; int pac_key; int pac_type; } ;


 int EAP_TEAP_PAC_KEY_LEN ;
 scalar_t__ eap_teap_copy_buf (int *,int *,int ,int ) ;
 int eap_teap_free_pac (struct eap_teap_pac*) ;
 int eap_teap_remove_pac (struct eap_teap_pac**,struct eap_teap_pac**,int ,int ,int ) ;
 int os_memcpy (int ,int ,int ) ;
 struct eap_teap_pac* os_zalloc (int) ;

int eap_teap_add_pac(struct eap_teap_pac **pac_root,
       struct eap_teap_pac **pac_current,
       struct eap_teap_pac *entry)
{
 struct eap_teap_pac *pac;

 if (!entry || !entry->a_id)
  return -1;


 eap_teap_remove_pac(pac_root, pac_current,
       entry->a_id, entry->a_id_len, entry->pac_type);


 pac = os_zalloc(sizeof(*pac));
 if (!pac)
  return -1;

 pac->pac_type = entry->pac_type;
 os_memcpy(pac->pac_key, entry->pac_key, EAP_TEAP_PAC_KEY_LEN);
 if (eap_teap_copy_buf(&pac->pac_opaque, &pac->pac_opaque_len,
         entry->pac_opaque, entry->pac_opaque_len) < 0 ||
     eap_teap_copy_buf(&pac->pac_info, &pac->pac_info_len,
         entry->pac_info, entry->pac_info_len) < 0 ||
     eap_teap_copy_buf(&pac->a_id, &pac->a_id_len,
         entry->a_id, entry->a_id_len) < 0 ||
     eap_teap_copy_buf(&pac->i_id, &pac->i_id_len,
         entry->i_id, entry->i_id_len) < 0 ||
     eap_teap_copy_buf(&pac->a_id_info, &pac->a_id_info_len,
         entry->a_id_info, entry->a_id_info_len) < 0) {
  eap_teap_free_pac(pac);
  return -1;
 }

 pac->next = *pac_root;
 *pac_root = pac;

 return 0;
}
