
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_5__ {TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int len; int data; } ;


 int const* svn_string_ncreate (int ,int ,int *) ;

__attribute__((used)) static const svn_string_t *
maybe_prop_value(const svn_skel_t *skel,
                 apr_pool_t *result_pool)
{
  if (skel->children == ((void*)0))
    return ((void*)0);

  return svn_string_ncreate(skel->children->data,
                            skel->children->len,
                            result_pool);
}
