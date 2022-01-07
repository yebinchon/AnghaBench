
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int FILE ;


 int svn_handle_error2 (int *,int *,int ,char*) ;

void
svn_handle_error(svn_error_t *err, FILE *stream, svn_boolean_t fatal)
{
  svn_handle_error2(err, stream, fatal, "svn: ");
}
