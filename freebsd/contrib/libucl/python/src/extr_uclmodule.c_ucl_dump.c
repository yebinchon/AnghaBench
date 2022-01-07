
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef scalar_t__ ucl_emitter_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int **,scalar_t__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * PyString_FromString (char*) ;
 int * PyUnicode_FromString (char*) ;
 int * Py_None ;
 int Py_RETURN_NONE ;
 scalar_t__ UCL_EMIT_CONFIG ;
 scalar_t__ UCL_EMIT_MAX ;
 int * _iterate_python (int *) ;
 int free (char*) ;
 scalar_t__ ucl_object_emit (int *,scalar_t__) ;
 int ucl_object_unref (int *) ;

__attribute__((used)) static PyObject *
ucl_dump (PyObject *self, PyObject *args)
{
 PyObject *obj;
 ucl_emitter_t emitter;
 ucl_object_t *root = ((void*)0);

 emitter = UCL_EMIT_CONFIG;

 if (!PyArg_ParseTuple(args, "O|i", &obj, &emitter)) {
  PyErr_SetString(PyExc_TypeError, "Unhandled object type");
  return ((void*)0);
 }

 if (emitter >= UCL_EMIT_MAX) {
  PyErr_SetString(PyExc_TypeError, "Invalid emitter type");
  return ((void*)0);
 }

 if (obj == Py_None) {
  Py_RETURN_NONE;
 }

 root = _iterate_python(obj);
 if (root) {
  PyObject *ret;
  char *buf;

  buf = (char *) ucl_object_emit (root, emitter);
  ucl_object_unref (root);

  ret = PyString_FromString (buf);



  free(buf);

  return ret;
 }

 return ((void*)0);
}
