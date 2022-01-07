
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_membuf_t ;
typedef int svn_boolean_t ;
typedef int apr_array_header_t ;


 int TRUE ;
 int svn_utf__fuzzy_glob_match (char const*,int const*,int *) ;

__attribute__((used)) static svn_boolean_t
match_patterns(const char *s,
               const apr_array_header_t *patterns,
               svn_membuf_t *scratch_buffer)
{
  return patterns
       ? svn_utf__fuzzy_glob_match(s, patterns, scratch_buffer)
       : TRUE;
}
