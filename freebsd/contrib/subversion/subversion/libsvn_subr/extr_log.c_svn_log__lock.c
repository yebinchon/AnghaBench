
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char const* apr_psprintf (int *,char*,int ,char*) ;
 char* svn_path_uri_encode (char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

const char *
svn_log__lock(apr_hash_t *targets,
              svn_boolean_t steal, apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_stringbuf_t *space_separated_paths = svn_stringbuf_create_empty(pool);

  for (hi = apr_hash_first(pool, targets); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_pool_clear(iterpool);
      if (space_separated_paths->len)
        svn_stringbuf_appendcstr(space_separated_paths, " ");
      svn_stringbuf_appendcstr(space_separated_paths,
                               svn_path_uri_encode(path, iterpool));
    }
  svn_pool_destroy(iterpool);

  return apr_psprintf(pool, "lock (%s)%s", space_separated_paths->data,
                      steal ? " steal" : "");
}
