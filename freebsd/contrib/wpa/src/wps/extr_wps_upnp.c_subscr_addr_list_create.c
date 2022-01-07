
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subscription {int dummy; } ;


 int MSG_DEBUG ;
 char* os_strchr (char const*,char) ;
 int subscr_addr_add_url (struct subscription*,char const*,int) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static void subscr_addr_list_create(struct subscription *s,
        const char *url_list)
{
 const char *end;
 wpa_printf(MSG_DEBUG, "WPS UPnP: Parsing URL list '%s'", url_list);
 for (;;) {
  while (*url_list == ' ' || *url_list == '\t')
   url_list++;
  if (*url_list != '<')
   break;
  url_list++;
  end = os_strchr(url_list, '>');
  if (end == ((void*)0))
   break;
  subscr_addr_add_url(s, url_list, end - url_list);
  url_list = end + 1;
 }
}
