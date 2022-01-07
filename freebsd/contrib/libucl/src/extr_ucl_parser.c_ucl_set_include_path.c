
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int * includepaths; } ;


 void* ucl_object_copy (int *) ;
 int ucl_object_unref (int *) ;

bool
ucl_set_include_path (struct ucl_parser *parser, ucl_object_t *paths)
{
 if (parser == ((void*)0) || paths == ((void*)0)) {
  return 0;
 }

 if (parser->includepaths == ((void*)0)) {
  parser->includepaths = ucl_object_copy (paths);
 }
 else {
  ucl_object_unref (parser->includepaths);
  parser->includepaths = ucl_object_copy (paths);
 }

 if (parser->includepaths == ((void*)0)) {
  return 0;
 }

 return 1;
}
