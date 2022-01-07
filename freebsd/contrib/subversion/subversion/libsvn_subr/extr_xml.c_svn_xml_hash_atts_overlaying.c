
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int amalgamate (char const**,int *,int ,int *) ;

void
svn_xml_hash_atts_overlaying(const char **atts,
                             apr_hash_t *ht,
                             apr_pool_t *pool)
{
  amalgamate(atts, ht, 0, pool);
}
