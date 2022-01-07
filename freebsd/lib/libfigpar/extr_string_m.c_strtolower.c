
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

void
strtolower(char *source)
{
 char *p = source;

 if (source == ((void*)0))
  return;

 while (*p != '\0') {
  *p = tolower(*p);
  p++;
 }
}
