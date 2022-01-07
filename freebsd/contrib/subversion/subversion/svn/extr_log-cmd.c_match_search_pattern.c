
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_membuf_t ;
struct TYPE_3__ {char const* copyfrom_path; int copyfrom_rev; } ;
typedef TYPE_1__ svn_log_changed_path2_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 char* apr_psprintf (int *,char*,char const*) ;
 scalar_t__ match (char const*,char const*,int *) ;

__attribute__((used)) static svn_boolean_t
match_search_pattern(const char *search_pattern,
                     const char *author,
                     const char *date,
                     const char *log_message,
                     apr_hash_t *changed_paths,
                     svn_membuf_t *buf,
                     apr_pool_t *pool)
{

  const char *pattern = apr_psprintf(pool, "*%s*", search_pattern);


  if (author && match(pattern, author, buf))
    return TRUE;


  if (date && match(pattern, date, buf))
    return TRUE;


  if (log_message && match(pattern, log_message, buf))
    return TRUE;

  if (changed_paths)
    {
      apr_hash_index_t *hi;


      for (hi = apr_hash_first(pool, changed_paths);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *path = apr_hash_this_key(hi);
          svn_log_changed_path2_t *log_item;

          if (match(pattern, path, buf))
            return TRUE;


          log_item = apr_hash_this_val(hi);
          if (log_item->copyfrom_path
              && SVN_IS_VALID_REVNUM(log_item->copyfrom_rev)
              && match(pattern, log_item->copyfrom_path, buf))
            return TRUE;
        }
    }

  return FALSE;
}
