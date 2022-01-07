
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct eap_fast_pac {scalar_t__ pac_type; size_t a_id_len; struct eap_fast_pac* next; int a_id; } ;


 int eap_fast_free_pac (struct eap_fast_pac*) ;
 scalar_t__ os_memcmp (int ,int const*,size_t) ;

__attribute__((used)) static void eap_fast_remove_pac(struct eap_fast_pac **pac_root,
    struct eap_fast_pac **pac_current,
    const u8 *a_id, size_t a_id_len, u16 pac_type)
{
 struct eap_fast_pac *pac, *prev;

 pac = *pac_root;
 prev = ((void*)0);

 while (pac) {
  if (pac->pac_type == pac_type && pac->a_id_len == a_id_len &&
      os_memcmp(pac->a_id, a_id, a_id_len) == 0) {
   if (prev == ((void*)0))
    *pac_root = pac->next;
   else
    prev->next = pac->next;
   if (*pac_current == pac)
    *pac_current = ((void*)0);
   eap_fast_free_pac(pac);
   break;
  }
  prev = pac;
  pac = pac->next;
 }
}
