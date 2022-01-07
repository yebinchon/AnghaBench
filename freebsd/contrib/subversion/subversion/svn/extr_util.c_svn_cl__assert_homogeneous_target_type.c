
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_array_header_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 scalar_t__ SVN_ERR_ILLEGAL_TARGET ;
 TYPE_1__* svn_client__assert_homogeneous_target_type (int const*) ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,int *) ;

svn_error_t *
svn_cl__assert_homogeneous_target_type(const apr_array_header_t *targets)
{
  svn_error_t *err;

  err = svn_client__assert_homogeneous_target_type(targets);
  if (err && err->apr_err == SVN_ERR_ILLEGAL_TARGET)
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, err, ((void*)0));
  return err;
}
