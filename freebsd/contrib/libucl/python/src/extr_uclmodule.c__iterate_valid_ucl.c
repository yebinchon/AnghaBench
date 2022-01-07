
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ud; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ value; int * key; } ;
typedef TYPE_2__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
typedef int PyObject ;


 int * PyBytes_FromString (int ) ;
 int * PyDict_New () ;
 int PyDict_SetItem (int *,int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_SystemError ;
 int PyList_Append (int *,int *) ;
 int * PyList_New (int ) ;
 int * Py_BuildValue (char*,int ) ;
 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_OBJECT ;
 scalar_t__ UCL_USERDATA ;
 int * _basic_ucl_type (TYPE_2__ const*) ;
 TYPE_2__* ucl_object_iterate (TYPE_2__ const*,int **,int) ;
 int ucl_object_key (TYPE_2__ const*) ;

__attribute__((used)) static PyObject *
_iterate_valid_ucl (ucl_object_t const *obj)
{
 const ucl_object_t *tmp;
 ucl_object_iter_t it = ((void*)0);

 tmp = obj;

 while ((obj = ucl_object_iterate (tmp, &it, 0))) {
  PyObject *val;

  val = _basic_ucl_type(obj);
  if (!val) {
   PyObject *key = ((void*)0);

   if (obj->key != ((void*)0)) {
    key = Py_BuildValue("s", ucl_object_key(obj));
   }

   if (obj->type == UCL_OBJECT) {
    const ucl_object_t *cur;
    ucl_object_iter_t it_obj = ((void*)0);

    val = PyDict_New();

    while ((cur = ucl_object_iterate (obj, &it_obj, 1))) {
     PyObject *keyobj = Py_BuildValue("s",ucl_object_key(cur));
     PyDict_SetItem(val, keyobj, _iterate_valid_ucl(cur));
    }
   } else if (obj->type == UCL_ARRAY) {
    const ucl_object_t *cur;
    ucl_object_iter_t it_obj = ((void*)0);

    val = PyList_New(0);

    while ((cur = ucl_object_iterate (obj, &it_obj, 1))) {
     PyList_Append(val, _iterate_valid_ucl(cur));
    }
   } else if (obj->type == UCL_USERDATA) {



    val = PyBytes_FromString(obj->value.ud);
   }
  }
  return val;
 }

 PyErr_SetString(PyExc_SystemError, "unhandled type");
 return ((void*)0);
}
