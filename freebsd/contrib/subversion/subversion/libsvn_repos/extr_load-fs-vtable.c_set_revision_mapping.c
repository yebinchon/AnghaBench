
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int apr_hash_t ;


 int apr_hash_pool_get (int *) ;
 int apr_hash_set (int *,int *,int,int *) ;
 int * apr_palloc (int ,int) ;

__attribute__((used)) static void
set_revision_mapping(apr_hash_t *rev_map,
                     svn_revnum_t from_rev,
                     svn_revnum_t to_rev)
{
  svn_revnum_t *mapped_revs = apr_palloc(apr_hash_pool_get(rev_map),
                                         sizeof(svn_revnum_t) * 2);
  mapped_revs[0] = from_rev;
  mapped_revs[1] = to_rev;
  apr_hash_set(rev_map, mapped_revs,
               sizeof(svn_revnum_t), mapped_revs + 1);
}
