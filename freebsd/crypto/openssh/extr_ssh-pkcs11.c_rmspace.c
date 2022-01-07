
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



__attribute__((used)) static void
rmspace(u_char *buf, size_t len)
{
 size_t i;

 if (!len)
  return;
 for (i = len - 1; i > 0; i--)
  if (i == len - 1 || buf[i] == ' ')
   buf[i] = '\0';
  else
   break;
}
