
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_membuf_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int SVN_STRING__SIM_RANGE_MAX ;
 int svn_membuf__create (int *,int,int *) ;
 size_t svn_string__similarity (int *,int *,int *,int *) ;
 int * svn_string_create (char const*,int *) ;

__attribute__((used)) static const char *
most_similar(const char *needle_cstr,
             const char **haystack,
             apr_size_t haystack_len,
             apr_pool_t *scratch_pool)
{
  const char *max_similar = ((void*)0);
  apr_size_t max_score = 0;
  apr_size_t i;
  svn_membuf_t membuf;
  svn_string_t *needle_str = svn_string_create(needle_cstr, scratch_pool);

  svn_membuf__create(&membuf, 64, scratch_pool);

  for (i = 0; i < haystack_len; i++)
    {
      apr_size_t score;
      svn_string_t *hay = svn_string_create(haystack[i], scratch_pool);

      score = svn_string__similarity(needle_str, hay, &membuf, ((void*)0));



      if (score >= (2 * SVN_STRING__SIM_RANGE_MAX + 1) / 3
          && score > max_score)
        {
          max_score = score;
          max_similar = haystack[i];
        }
    }

  return max_similar;
}
