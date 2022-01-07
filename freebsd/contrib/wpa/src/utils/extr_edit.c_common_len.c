
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int common_len(const char *a, const char *b)
{
 int len = 0;
 while (a[len] && a[len] == b[len])
  len++;
 return len;
}
