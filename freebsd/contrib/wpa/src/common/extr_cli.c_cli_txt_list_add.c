
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {int dummy; } ;
struct cli_txt_entry {int list; int * txt; } ;


 struct cli_txt_entry* cli_txt_list_get (struct dl_list*,char const*) ;
 int dl_list_add (struct dl_list*,int *) ;
 int os_free (struct cli_txt_entry*) ;
 int * os_strdup (char const*) ;
 struct cli_txt_entry* os_zalloc (int) ;

int cli_txt_list_add(struct dl_list *txt_list, const char *txt)
{
 struct cli_txt_entry *e;

 e = cli_txt_list_get(txt_list, txt);
 if (e)
  return 0;
 e = os_zalloc(sizeof(*e));
 if (e == ((void*)0))
  return -1;
 e->txt = os_strdup(txt);
 if (e->txt == ((void*)0)) {
  os_free(e);
  return -1;
 }
 dl_list_add(txt_list, &e->list);
 return 0;
}
