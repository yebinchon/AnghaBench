
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyArg_ParseTuple (int *,char*,char**) ;
 int Py_RETURN_NONE ;
 int * _internal_load_ucl (char*) ;

__attribute__((used)) static PyObject*
ucl_load (PyObject *self, PyObject *args)
{
 char *uclstr;

 if (PyArg_ParseTuple(args, "z", &uclstr)) {
  if (!uclstr) {
   Py_RETURN_NONE;
  }

  return _internal_load_ucl(uclstr);
 }

 return ((void*)0);
}
