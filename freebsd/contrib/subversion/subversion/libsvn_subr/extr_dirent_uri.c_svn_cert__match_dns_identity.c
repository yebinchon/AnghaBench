
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;
typedef size_t apr_size_t ;


 int FALSE ;
 int TRUE ;
 char canonicalize_to_lower (char) ;

svn_boolean_t
svn_cert__match_dns_identity(svn_string_t *pattern, svn_string_t *hostname)
{
  apr_size_t pattern_pos = 0, hostname_pos = 0;



  if (pattern->len >= 2 &&
      pattern->data[pattern_pos] == '*' &&
      pattern->data[pattern_pos + 1] == '.')
    {
      while (hostname_pos < hostname->len &&
             hostname->data[hostname_pos] != '.')
        {
          hostname_pos++;
        }




      if (hostname_pos == 0)
        return FALSE;

      pattern_pos++;
    }

  while (pattern_pos < pattern->len && hostname_pos < hostname->len)
    {
      char pattern_c = pattern->data[pattern_pos];
      char hostname_c = hostname->data[hostname_pos];
      pattern_c = canonicalize_to_lower(pattern_c);
      hostname_c = canonicalize_to_lower(hostname_c);

      if (pattern_c != hostname_c)
        {

          return FALSE;
        }
      else
        {

          pattern_pos++;
          hostname_pos++;
        }
    }






  if (pattern_pos == pattern->len &&
      hostname_pos == hostname->len - 1 &&
      hostname->data[hostname_pos] == '.')
    hostname_pos++;

  if (pattern_pos != pattern->len || hostname_pos != hostname->len)
    {

      return FALSE;
    }

  return TRUE;
}
