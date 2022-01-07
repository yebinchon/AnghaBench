
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef int PyObject ;


 int PyErr_SetString (int ,scalar_t__) ;
 int PyExc_ValueError ;
 int UCL_PARSER_NO_TIME ;
 int * _iterate_valid_ucl (int *) ;
 int ucl_object_unref (int *) ;
 int ucl_parser_add_string (struct ucl_parser*,char*,int ) ;
 int ucl_parser_free (struct ucl_parser*) ;
 scalar_t__ ucl_parser_get_error (struct ucl_parser*) ;
 int * ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;

__attribute__((used)) static PyObject *
_internal_load_ucl (char *uclstr)
{
 PyObject *ret;
 struct ucl_parser *parser = ucl_parser_new (UCL_PARSER_NO_TIME);
 bool r = ucl_parser_add_string(parser, uclstr, 0);

 if (r) {
  if (ucl_parser_get_error (parser)) {
   PyErr_SetString(PyExc_ValueError, ucl_parser_get_error(parser));
   ucl_parser_free(parser);
   ret = ((void*)0);
   goto return_with_parser;
  } else {
   ucl_object_t *uclobj = ucl_parser_get_object(parser);
   ret = _iterate_valid_ucl(uclobj);
   ucl_object_unref(uclobj);
   goto return_with_parser;
  }
 }
 else {
  PyErr_SetString(PyExc_ValueError, ucl_parser_get_error (parser));
  ret = ((void*)0);
  goto return_with_parser;
 }

return_with_parser:
 ucl_parser_free(parser);
 return ret;
}
