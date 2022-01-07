
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {int dummy; } ;


 int cli_txt_list_del (struct dl_list*,char*) ;
 char* dup_binstr (char const*,int) ;
 int os_free (char*) ;
 char* os_strchr (char const*,int) ;
 int os_strlen (char const*) ;

void cli_txt_list_del_word(struct dl_list *txt_list, const char *txt,
      int separator)
{
 const char *end;
 char *buf;

 end = os_strchr(txt, separator);
 if (end == ((void*)0))
  end = txt + os_strlen(txt);
 buf = dup_binstr(txt, end - txt);
 if (buf == ((void*)0))
  return;
 cli_txt_list_del(txt_list, buf);
 os_free(buf);
}
