
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;


 scalar_t__ PyBool_Check (int *) ;
 char* PyBytes_AsString (int *) ;
 scalar_t__ PyDict_Check (int *) ;
 scalar_t__ PyDict_Next (int *,scalar_t__*,int **,int **) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyFloat_AsDouble (int *) ;
 scalar_t__ PyFloat_Check (int *) ;
 int PyInt_AsLong (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 int PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PySequence_Check (int *) ;
 int * PySequence_GetItem (int *,scalar_t__) ;
 scalar_t__ PySequence_Length (int *) ;
 char* PyString_AsString (int *) ;
 scalar_t__ PyString_Check (int *) ;
 int * PyUnicode_AsASCIIString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int * Py_True ;
 int UCL_ARRAY ;
 int UCL_OBJECT ;
 int ucl_array_append (int *,int *) ;
 int * ucl_object_frombool (int) ;
 int * ucl_object_fromdouble (int ) ;
 int * ucl_object_fromint (int ) ;
 int * ucl_object_fromstring (char*) ;
 int ucl_object_insert_key (int *,int *,char*,int ,int) ;
 int * ucl_object_new () ;
 int * ucl_object_typed_new (int ) ;

__attribute__((used)) static ucl_object_t *
_iterate_python (PyObject *obj)
{
 if (obj == Py_None) {
  return ucl_object_new();
 }
 else if (PyBool_Check (obj)) {
  return ucl_object_frombool (obj == Py_True);
 }

 else if (PyInt_Check (obj)) {
  return ucl_object_fromint (PyInt_AsLong (obj));
 }

 else if (PyLong_Check (obj)) {
  return ucl_object_fromint (PyLong_AsLong (obj));
 }
 else if (PyFloat_Check (obj)) {
  return ucl_object_fromdouble (PyFloat_AsDouble (obj));
 }
 else if (PyUnicode_Check (obj)) {
  ucl_object_t *ucl_str;
  PyObject *str = PyUnicode_AsASCIIString(obj);
  ucl_str = ucl_object_fromstring (PyBytes_AsString (str));
  Py_DECREF(str);
  return ucl_str;
 }

 else if (PyString_Check (obj)) {
  return ucl_object_fromstring (PyString_AsString (obj));
 }

 else if (PyDict_Check(obj)) {
  PyObject *key, *value;
  Py_ssize_t pos = 0;
  ucl_object_t *top, *elm;
  char *keystr = ((void*)0);

  top = ucl_object_typed_new (UCL_OBJECT);

  while (PyDict_Next(obj, &pos, &key, &value)) {
   elm = _iterate_python(value);

   if (PyUnicode_Check(key)) {
    PyObject *keyascii = PyUnicode_AsASCIIString(key);
    keystr = PyBytes_AsString(keyascii);
    Py_DECREF(keyascii);
   }

   else if (PyString_Check(key)) {
    keystr = PyString_AsString(key);
   }

   else {
    PyErr_SetString(PyExc_TypeError, "Unknown key type");
    return ((void*)0);
   }

   ucl_object_insert_key (top, elm, keystr, 0, 1);
  }

  return top;
 }
 else if (PySequence_Check(obj)) {
  PyObject *value;
  Py_ssize_t len, pos;
  ucl_object_t *top, *elm;

  len = PySequence_Length(obj);
  top = ucl_object_typed_new (UCL_ARRAY);

  for (pos = 0; pos < len; pos++) {
   value = PySequence_GetItem(obj, pos);
   elm = _iterate_python(value);
   ucl_array_append(top, elm);
  }

  return top;
 }
 else {
  PyErr_SetString(PyExc_TypeError, "Unhandled object type");
  return ((void*)0);
 }

 return ((void*)0);
}
