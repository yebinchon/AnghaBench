
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_get (int *,char const*,size_t) ;
 int apr_hash_set (int *,int ,size_t,int *) ;
 int * apr_pstrdup (int *,char const*) ;
 int apr_pstrndup (int *,char const*,size_t) ;
 int assert (int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
amalgamate(const char **atts,
           apr_hash_t *ht,
           svn_boolean_t preserve,
           apr_pool_t *pool)
{
  const char *key;

  if (atts)
    for (key = *atts; key; key = *(++atts))
      {
        const char *val = *(++atts);
        size_t keylen;
        assert(key != ((void*)0));



        keylen = strlen(key);
        if (preserve && ((apr_hash_get(ht, key, keylen)) != ((void*)0)))
          continue;
        else
          apr_hash_set(ht, apr_pstrndup(pool, key, keylen), keylen,
                       val ? apr_pstrdup(pool, val) : ((void*)0));
      }
}
