
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int svn_ctype_casecmp (int const,int const) ;

int
svn_cstring_casecmp(const char *str1, const char *str2)
{
  for (;;)
    {
      const int a = *str1++;
      const int b = *str2++;
      const int cmp = svn_ctype_casecmp(a, b);
      if (cmp || !a || !b)
        return cmp;
    }
}
