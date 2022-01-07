
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AP_STA_CONNECTED ;
 int AP_STA_DISCONNECTED ;
 int cli_txt_list_add (int *,char const*) ;
 int cli_txt_list_del_addr (int *,char const*) ;
 char* os_strchr (char const*,char) ;
 int stations ;
 scalar_t__ str_starts (char const*,int ) ;

__attribute__((used)) static void cli_event(const char *str)
{
 const char *start, *s;

 start = os_strchr(str, '>');
 if (start == ((void*)0))
  return;

 start++;

 if (str_starts(start, AP_STA_CONNECTED)) {
  s = os_strchr(start, ' ');
  if (s == ((void*)0))
   return;
  cli_txt_list_add(&stations, s + 1);
  return;
 }

 if (str_starts(start, AP_STA_DISCONNECTED)) {
  s = os_strchr(start, ' ');
  if (s == ((void*)0))
   return;
  cli_txt_list_del_addr(&stations, s + 1);
  return;
 }
}
