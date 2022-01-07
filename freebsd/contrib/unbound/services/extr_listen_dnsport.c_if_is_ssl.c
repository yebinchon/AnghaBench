
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {char const* str; struct config_strlist* next; } ;


 int atoi (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
if_is_ssl(const char* ifname, const char* port, int ssl_port,
 struct config_strlist* tls_additional_port)
{
 struct config_strlist* s;
 char* p = strchr(ifname, '@');
 if(!p && atoi(port) == ssl_port)
  return 1;
 if(p && atoi(p+1) == ssl_port)
  return 1;
 for(s = tls_additional_port; s; s = s->next) {
  if(p && atoi(p+1) == atoi(s->str))
   return 1;
  if(!p && atoi(port) == atoi(s->str))
   return 1;
 }
 return 0;
}
