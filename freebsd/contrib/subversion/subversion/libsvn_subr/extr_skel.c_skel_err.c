
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_FS_MALFORMED_SKEL ;
 int * svn_error_createf (int ,int *,char*,char*,char const*) ;

__attribute__((used)) static svn_error_t *
skel_err(const char *skel_type)
{
  return svn_error_createf(SVN_ERR_FS_MALFORMED_SKEL, ((void*)0),
                           "Malformed%s%s skeleton",
                           skel_type ? " " : "",
                           skel_type ? skel_type : "");
}
