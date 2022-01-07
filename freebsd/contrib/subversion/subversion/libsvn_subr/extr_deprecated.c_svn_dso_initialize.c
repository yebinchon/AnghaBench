
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int abort () ;
 int * svn_dso_initialize2 () ;
 int svn_error_clear (int *) ;

void
svn_dso_initialize(void)
{
  svn_error_t *err = svn_dso_initialize2();
  if (err)
    {
      svn_error_clear(err);
      abort();
    }
}
