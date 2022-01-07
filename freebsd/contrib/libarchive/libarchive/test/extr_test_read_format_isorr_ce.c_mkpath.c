
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
mkpath(char *p, int len)
{
 int i;

 for (i = 0; i < len; i++)
  p[i] = 'a';
 p[len] = '\0';
}
