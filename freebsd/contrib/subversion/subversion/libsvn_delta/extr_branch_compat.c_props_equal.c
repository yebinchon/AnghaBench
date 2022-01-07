
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int props; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int svn_error_clear (int ) ;
 int svn_prop_diffs (TYPE_2__**,int ,int ,int *) ;

__attribute__((used)) static svn_boolean_t
props_equal(svn_element__payload_t *initial_payload,
            svn_element__payload_t *final_payload,
            apr_pool_t *scratch_pool)
{
  apr_array_header_t *prop_diffs;

  if (!initial_payload || !final_payload)
    return FALSE;

  svn_error_clear(svn_prop_diffs(&prop_diffs,
                                 initial_payload->props,
                                 final_payload->props,
                                 scratch_pool));
  return (prop_diffs->nelts == 0);
}
