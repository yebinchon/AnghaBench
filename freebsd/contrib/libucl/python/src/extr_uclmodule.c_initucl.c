
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * Py_InitModule (char*,int ) ;
 int init_macros (int *) ;
 int uclMethods ;

void initucl (void)
{
 PyObject *mod = Py_InitModule ("ucl", uclMethods);
 init_macros (mod);
}
