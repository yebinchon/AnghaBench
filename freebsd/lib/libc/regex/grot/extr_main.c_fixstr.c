
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
fixstr(char *p)
{
 if (p == ((void*)0))
  return;

 for (; *p != '\0'; p++)
  if (*p == 'N')
   *p = '\n';
  else if (*p == 'T')
   *p = '\t';
  else if (*p == 'S')
   *p = ' ';
  else if (*p == 'Z')
   *p = '\0';
}
