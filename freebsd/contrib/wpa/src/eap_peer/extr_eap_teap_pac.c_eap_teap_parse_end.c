
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {struct eap_teap_pac* next; } ;



__attribute__((used)) static const char * eap_teap_parse_end(struct eap_teap_pac **pac_root,
           struct eap_teap_pac **pac)
{
 if (!(*pac))
  return "END line without START";
 if (*pac_root) {
  struct eap_teap_pac *end = *pac_root;

  while (end->next)
   end = end->next;
  end->next = *pac;
 } else
  *pac_root = *pac;

 *pac = ((void*)0);
 return ((void*)0);
}
