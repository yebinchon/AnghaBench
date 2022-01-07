
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ nelts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int svn_categorize_props (TYPE_1__ const*,int *,int *,TYPE_1__**,int *) ;
 int svn_error_clear (int ) ;

__attribute__((used)) static svn_boolean_t
props_changed(const apr_array_header_t *propchanges,
              apr_pool_t *scratch_pool)
{
  apr_array_header_t *props;

  svn_error_clear(svn_categorize_props(propchanges, ((void*)0), ((void*)0), &props,
                                       scratch_pool));
  return (props->nelts != 0);
}
