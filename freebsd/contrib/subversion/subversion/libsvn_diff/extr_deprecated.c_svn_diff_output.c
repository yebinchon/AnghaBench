
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_output_fns_t ;


 int svn_diff_output2 (int *,void*,int const*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_diff_output(svn_diff_t *diff,
                void *output_baton,
                const svn_diff_output_fns_t *output_fns)
{
  return svn_error_trace(svn_diff_output2(diff, output_baton, output_fns,
                                          ((void*)0), ((void*)0) ));
}
