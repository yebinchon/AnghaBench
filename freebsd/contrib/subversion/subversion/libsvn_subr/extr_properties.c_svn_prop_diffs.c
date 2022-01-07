
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_3__ {int * value; void const* name; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 TYPE_1__* apr_array_push (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_get (int *,void const*,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int svn_string_compare (int const*,int const*) ;
 void* svn_string_dup (int const*,int *) ;

svn_error_t *
svn_prop_diffs(apr_array_header_t **propdiffs,
               const apr_hash_t *target_props,
               const apr_hash_t *source_props,
               apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_array_header_t *ary = apr_array_make(pool, 1, sizeof(svn_prop_t));







  for (hi = apr_hash_first(pool, (apr_hash_t *)source_props); hi;
       hi = apr_hash_next(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      const svn_string_t *propval1, *propval2;


      apr_hash_this(hi, &key, &klen, &val);
      propval1 = val;


      propval2 = apr_hash_get((apr_hash_t *)target_props, key, klen);

      if (propval2 == ((void*)0))
        {

          svn_prop_t *p = apr_array_push(ary);
          p->name = key;
          p->value = ((void*)0);
        }
      else if (! svn_string_compare(propval1, propval2))
        {

          svn_prop_t *p = apr_array_push(ary);
          p->name = key;
          p->value = svn_string_dup(propval2, pool);
        }
    }



  for (hi = apr_hash_first(pool, (apr_hash_t *)target_props); hi;
       hi = apr_hash_next(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      const svn_string_t *propval;


      apr_hash_this(hi, &key, &klen, &val);
      propval = val;


      if (((void*)0) == apr_hash_get((apr_hash_t *)source_props, key, klen))
        {

          svn_prop_t *p = apr_array_push(ary);
          p->name = key;
          p->value = svn_string_dup(propval, pool);
        }
    }


  *propdiffs = ary;

  return SVN_NO_ERROR;
}
