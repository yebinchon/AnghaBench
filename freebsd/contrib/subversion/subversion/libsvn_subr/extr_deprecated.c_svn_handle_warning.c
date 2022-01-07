
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int FILE ;


 int svn_handle_warning2 (int *,int *,char*) ;

void
svn_handle_warning(FILE *stream, svn_error_t *err)
{
  svn_handle_warning2(stream, err, "svn: ");
}
