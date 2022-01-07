
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_file_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int * create_temp_file (int **,int ,int *) ;
 char* svn_path_uri_autoescape (char const*,int *) ;
 int svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_appendcstr (int *,char*) ;
 int svn_stringbuf_appendstr (int *,int ) ;
 int * svn_stringbuf_create (char*,int *) ;
 int svn_stringbuf_createf (int *,char*,char const*,char const*) ;

__attribute__((used)) static svn_error_t *
lock_token_content(apr_file_t **handle, apr_hash_t *lock_tokens,
                   apr_pool_t *pool)
{
  svn_stringbuf_t *lock_str = svn_stringbuf_create("LOCK-TOKENS:\n", pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, lock_tokens); hi;
       hi = apr_hash_next(hi))
    {
      const char *token = apr_hash_this_key(hi);
      const char *path = apr_hash_this_val(hi);

      if (path == (const char *) 1)
        {


          path = "";
        }
      else
        {
          path = svn_path_uri_autoescape(path, pool);
        }

      svn_stringbuf_appendstr(lock_str,
          svn_stringbuf_createf(pool, "%s|%s\n", path, token));
    }

  svn_stringbuf_appendcstr(lock_str, "\n");
  return create_temp_file(handle,
                          svn_stringbuf__morph_into_string(lock_str), pool);
}
