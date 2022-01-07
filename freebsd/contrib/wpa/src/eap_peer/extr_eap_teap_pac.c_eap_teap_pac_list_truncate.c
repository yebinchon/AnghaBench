
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {struct eap_teap_pac* next; } ;


 int eap_teap_free_pac (struct eap_teap_pac*) ;

size_t eap_teap_pac_list_truncate(struct eap_teap_pac *pac_root,
      size_t max_len)
{
 struct eap_teap_pac *pac, *prev;
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

 if (count <= max_len || !prev)
  return 0;

 count = 0;
 prev->next = ((void*)0);

 while (pac) {
  prev = pac;
  pac = pac->next;
  eap_teap_free_pac(prev);
  count++;
 }

 return count;
}
