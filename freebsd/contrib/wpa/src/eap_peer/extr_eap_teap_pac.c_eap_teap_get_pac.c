
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct eap_teap_pac {scalar_t__ pac_type; size_t a_id_len; struct eap_teap_pac* next; int a_id; } ;


 scalar_t__ os_memcmp (int ,int const*,size_t) ;

struct eap_teap_pac * eap_teap_get_pac(struct eap_teap_pac *pac_root,
           const u8 *a_id, size_t a_id_len,
           u16 pac_type)
{
 struct eap_teap_pac *pac = pac_root;

 while (pac) {
  if (pac->pac_type == pac_type && pac->a_id_len == a_id_len &&
      os_memcmp(pac->a_id, a_id, a_id_len) == 0) {
   return pac;
  }
  pac = pac->next;
 }
 return ((void*)0);
}
