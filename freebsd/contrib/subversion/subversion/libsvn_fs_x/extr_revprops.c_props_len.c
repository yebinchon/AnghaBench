
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int revprops; } ;
typedef TYPE_1__ packed_revprops_t ;
typedef int apr_size_t ;
struct TYPE_5__ {int len; } ;


 TYPE_3__ APR_ARRAY_IDX (int ,int,int ) ;
 int svn_string_t ;

__attribute__((used)) static apr_size_t
props_len(packed_revprops_t *revprops,
          int i)
{
  return APR_ARRAY_IDX(revprops->revprops, i, svn_string_t).len;
}
