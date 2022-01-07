
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_schema_error {char* msg; } ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int **,int **) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int Py_RETURN_TRUE ;
 int SchemaError ;
 int * _iterate_python (int *) ;
 int ucl_object_unref (int *) ;
 int ucl_object_validate (int *,int *,struct ucl_schema_error*) ;

__attribute__((used)) static PyObject *
ucl_validate (PyObject *self, PyObject *args)
{
 PyObject *dataobj, *schemaobj;
 ucl_object_t *data, *schema;
 bool r;
 struct ucl_schema_error err;

 if (!PyArg_ParseTuple (args, "OO", &schemaobj, &dataobj)) {
  PyErr_SetString (PyExc_TypeError, "Unhandled object type");
  return ((void*)0);
 }

 schema = _iterate_python(schemaobj);
 if (!schema)
  return ((void*)0);

 data = _iterate_python(dataobj);
 if (!data)
  return ((void*)0);


 r = ucl_object_validate (schema, data, &err);
 ucl_object_unref (schema);
 ucl_object_unref (data);

 if (!r) {
  PyErr_SetString (SchemaError, err.msg);
  return ((void*)0);
 }

 Py_RETURN_TRUE;
}
