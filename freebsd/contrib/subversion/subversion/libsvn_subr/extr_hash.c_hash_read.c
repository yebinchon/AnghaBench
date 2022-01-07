
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_3__ {int keylen; int * key; int vallen; scalar_t__ val; } ;
typedef TYPE_1__ svn_hash__entry_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_set (int *,int *,int ,int *) ;
 int * apr_pstrmemdup (int *,int *,int ) ;
 int svn_hash__read_entry (TYPE_1__*,int *,char const*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_string_ncreate (scalar_t__,int ,int *) ;

__attribute__((used)) static svn_error_t *
hash_read(apr_hash_t *hash, svn_stream_t *stream, const char *terminator,
          svn_boolean_t incremental, apr_pool_t *pool)
{
  apr_pool_t *iterpool = svn_pool_create(pool);

  while (1)
    {
      svn_hash__entry_t entry;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_hash__read_entry(&entry, stream, terminator,
                                   incremental, iterpool));


      if (entry.key == ((void*)0))
        break;

      if (entry.val)
        {

          apr_hash_set(hash, apr_pstrmemdup(pool, entry.key, entry.keylen),
                       entry.keylen,
                       svn_string_ncreate(entry.val, entry.vallen, pool));
        }
      else
        {

          apr_hash_set(hash, entry.key, entry.keylen, ((void*)0));
        }
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
