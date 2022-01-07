
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_pac {struct eap_fast_pac* next; } ;


 int eap_fast_free_pac (struct eap_fast_pac*) ;

size_t eap_fast_pac_list_truncate(struct eap_fast_pac *pac_root,
      size_t max_len)
{
 struct eap_fast_pac *pac, *prev;
 size_t count;

 pac = pac_root;
 prev = ((void*)0);
 count = 0;

 while (pac) {
  count++;
  if (count > max_len)
   break;
  prev = pac;
  pac = pac->next;
 }

 if (count <= max_len || prev == ((void*)0))
  return 0;

 count = 0;
 prev->next = ((void*)0);

 while (pac) {
  prev = pac;
  pac = pac->next;
  eap_fast_free_pac(prev);
  count++;
 }

 return count;
}
