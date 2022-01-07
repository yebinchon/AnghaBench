
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;



void
svn_authz__reverse_string(char *string, apr_size_t len)
{
  char *left = string;
  char *right = string + len - 1;
  for (; left < right; ++left, --right)
    {
      char c = *left;
      *left = *right;
      *right = c;
    }
}
