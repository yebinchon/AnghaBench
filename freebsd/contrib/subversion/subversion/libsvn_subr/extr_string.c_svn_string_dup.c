
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_pool_t ;


 TYPE_1__* svn_string_ncreate (int ,int ,int *) ;

svn_string_t *
svn_string_dup(const svn_string_t *original_string, apr_pool_t *pool)
{
  return (original_string ? svn_string_ncreate(original_string->data,
                                               original_string->len, pool)
                          : ((void*)0));
}
