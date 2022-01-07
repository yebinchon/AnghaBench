
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {int dummy; } ;
struct cli_txt_entry {int dummy; } ;


 int cli_txt_list_free (struct cli_txt_entry*) ;
 struct cli_txt_entry* cli_txt_list_get (struct dl_list*,char const*) ;

void cli_txt_list_del(struct dl_list *txt_list, const char *txt)
{
 struct cli_txt_entry *e;

 e = cli_txt_list_get(txt_list, txt);
 if (e)
  cli_txt_list_free(e);
}
