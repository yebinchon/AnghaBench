
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyErr_NewException (char*,int *,int *) ;
 int PyModule_AddIntMacro (int *,int ) ;
 int PyModule_AddObject (int *,char*,int ) ;
 int Py_INCREF (int ) ;
 int SchemaError ;
 int UCL_EMIT_CONFIG ;
 int UCL_EMIT_JSON ;
 int UCL_EMIT_JSON_COMPACT ;
 int UCL_EMIT_MSGPACK ;
 int UCL_EMIT_YAML ;

__attribute__((used)) static void
init_macros(PyObject *mod)
{
 PyModule_AddIntMacro(mod, UCL_EMIT_JSON);
 PyModule_AddIntMacro(mod, UCL_EMIT_JSON_COMPACT);
 PyModule_AddIntMacro(mod, UCL_EMIT_CONFIG);
 PyModule_AddIntMacro(mod, UCL_EMIT_YAML);
 PyModule_AddIntMacro(mod, UCL_EMIT_MSGPACK);

 SchemaError = PyErr_NewException("ucl.SchemaError", ((void*)0), ((void*)0));
 Py_INCREF(SchemaError);
 PyModule_AddObject(mod, "SchemaError", SchemaError);
}
