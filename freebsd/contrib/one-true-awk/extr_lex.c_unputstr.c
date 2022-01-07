
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int unput (char const) ;

void unputstr(const char *s)
{
 int i;

 for (i = strlen(s)-1; i >= 0; i--)
  unput(s[i]);
}
