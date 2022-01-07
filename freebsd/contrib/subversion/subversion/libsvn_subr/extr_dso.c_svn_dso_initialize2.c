
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int atomic_init_func ;
 int atomic_init_status ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;

svn_error_t *
svn_dso_initialize2(void)
{
  SVN_ERR(svn_atomic__init_once(&atomic_init_status, atomic_init_func,
                                ((void*)0), ((void*)0)));

  return SVN_NO_ERROR;
}
