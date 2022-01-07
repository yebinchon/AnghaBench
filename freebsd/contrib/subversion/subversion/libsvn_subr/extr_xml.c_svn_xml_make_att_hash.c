
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int amalgamate (char const**,int *,int ,int *) ;
 int * apr_hash_make (int *) ;

apr_hash_t *
svn_xml_make_att_hash(const char **atts, apr_pool_t *pool)
{
  apr_hash_t *ht = apr_hash_make(pool);
  amalgamate(atts, ht, 0, pool);
  return ht;
}
