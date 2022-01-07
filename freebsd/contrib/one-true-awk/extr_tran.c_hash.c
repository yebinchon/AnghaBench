
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hash(const char *s, int n)
{
 unsigned hashval;

 for (hashval = 0; *s != '\0'; s++)
  hashval = (*s + 31 * hashval);
 return hashval % n;
}
