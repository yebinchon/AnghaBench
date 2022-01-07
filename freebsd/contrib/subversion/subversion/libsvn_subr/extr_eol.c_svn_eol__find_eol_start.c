
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uintptr_t ;
typedef int apr_size_t ;


 int SVN__BIT_7_SET ;
 int SVN__LOWER_7BITS_SET ;
 int SVN__N_MASK ;
 int SVN__R_MASK ;

char *
svn_eol__find_eol_start(char *buf, apr_size_t len)
{
  for (; len > 0; ++buf, --len)
    {
      if (*buf == '\n' || *buf == '\r')
        return buf;
    }

  return ((void*)0);
}
