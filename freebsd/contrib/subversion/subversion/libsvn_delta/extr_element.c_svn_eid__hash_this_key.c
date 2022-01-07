
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_hash_index_t ;


 scalar_t__ apr_hash_this_key (int *) ;

int
svn_eid__hash_this_key(apr_hash_index_t *hi)
{
  return *(const int *)apr_hash_this_key(hi);
}
