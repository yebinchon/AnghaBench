
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;


 int FALSE ;
 int TRUE ;
 int ** dont_quote ;
 scalar_t__ os_strcmp (char const*,int *) ;

__attribute__((used)) static dbus_bool_t should_quote_opt(const char *key)
{
 int i = 0;

 while (dont_quote[i] != ((void*)0)) {
  if (os_strcmp(key, dont_quote[i]) == 0)
   return FALSE;
  i++;
 }
 return TRUE;
}
