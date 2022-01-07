
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int SVN_ERR_FS_PROP_BASEVALUE_MISMATCH ;
 int * svn_error_find_cause (int *,int ) ;

__attribute__((used)) static svn_boolean_t is_atomicity_error(svn_error_t *err)
{
  return svn_error_find_cause(err, SVN_ERR_FS_PROP_BASEVALUE_MISMATCH) != ((void*)0);
}
