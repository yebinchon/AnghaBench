
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void trunc_nl(char *str)
{
 char *pos = str;
 while (*pos != '\0') {
  if (*pos == '\n') {
   *pos = '\0';
   break;
  }
  pos++;
 }
}
