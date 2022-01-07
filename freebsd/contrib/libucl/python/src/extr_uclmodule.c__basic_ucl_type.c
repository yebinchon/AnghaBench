
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int PyObject ;


 int * PyBool_FromLong (int ) ;
 int * Py_BuildValue (char*,long long) ;
 int Py_RETURN_NONE ;






 int ucl_object_toboolean (TYPE_1__ const*) ;
 long long ucl_object_todouble (TYPE_1__ const*) ;
 scalar_t__ ucl_object_toint (TYPE_1__ const*) ;
 long long ucl_object_tostring (TYPE_1__ const*) ;

__attribute__((used)) static PyObject *
_basic_ucl_type (ucl_object_t const *obj)
{
 switch (obj->type) {
 case 131:
  return Py_BuildValue ("L", (long long)ucl_object_toint (obj));
 case 132:
  return Py_BuildValue ("d", ucl_object_todouble (obj));
 case 129:
  return Py_BuildValue ("s", ucl_object_tostring (obj));
 case 133:
  return PyBool_FromLong (ucl_object_toboolean (obj));
 case 128:
  return Py_BuildValue ("d", ucl_object_todouble (obj));
 case 130:
  Py_RETURN_NONE;
 }
 return ((void*)0);
}
