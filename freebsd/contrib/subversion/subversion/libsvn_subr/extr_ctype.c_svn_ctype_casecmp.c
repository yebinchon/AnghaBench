
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* casefold_table ;

int
svn_ctype_casecmp(int a, int b)
{
  const int A = casefold_table[(unsigned char)a];
  const int B = casefold_table[(unsigned char)b];
  return A - B;
}
