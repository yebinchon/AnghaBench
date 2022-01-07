
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctlfe_driver ;
 int ctlfe_list_mtx ;
 int mtx_destroy (int *) ;
 int periphdriver_unregister (int *) ;

__attribute__((used)) static int
ctlfeshutdown(void)
{
 int error;

 error = periphdriver_unregister(&ctlfe_driver);
 if (error != 0)
  return (error);
 mtx_destroy(&ctlfe_list_mtx);
 return (0);
}
