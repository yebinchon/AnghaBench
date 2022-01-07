
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cli_txt_entry {struct cli_txt_entry* txt; int list; } ;


 int dl_list_del (int *) ;
 int os_free (struct cli_txt_entry*) ;

void cli_txt_list_free(struct cli_txt_entry *e)
{
 dl_list_del(&e->list);
 os_free(e->txt);
 os_free(e);
}
