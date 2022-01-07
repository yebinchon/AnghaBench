
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int keylen; int key; } ;
typedef TYPE_2__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_parser {int err; TYPE_1__* chunks; } ;
struct TYPE_7__ {unsigned int priority; } ;


 scalar_t__ UCL_INT ;
 scalar_t__ UCL_OBJECT ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ strncmp (int ,char*,int ) ;
 unsigned int strtol (char*,char**,int) ;
 int ucl_create_err (int *,char*,...) ;
 TYPE_2__* ucl_object_iterate (TYPE_2__ const*,int **,int) ;
 unsigned int ucl_object_toint (TYPE_2__ const*) ;
 int ucl_strlcpy (char*,char const*,size_t) ;

bool
ucl_priority_handler (const unsigned char *data, size_t len,
  const ucl_object_t *args, void* ud)
{
 struct ucl_parser *parser = ud;
 unsigned priority = 255;
 const ucl_object_t *param;
 bool found = 0;
 char *value = ((void*)0), *leftover = ((void*)0);
 ucl_object_iter_t it = ((void*)0);

 if (parser == ((void*)0)) {
  return 0;
 }


 if (args != ((void*)0) && args->type == UCL_OBJECT) {
  while ((param = ucl_object_iterate (args, &it, 1)) != ((void*)0)) {
   if (param->type == UCL_INT) {
    if (strncmp (param->key, "priority", param->keylen) == 0) {
     priority = ucl_object_toint (param);
     found = 1;
    }
   }
  }
 }

 if (len > 0) {
  value = malloc(len + 1);
  ucl_strlcpy(value, (const char *)data, len + 1);
  priority = strtol(value, &leftover, 10);
  if (*leftover != '\0') {
   ucl_create_err (&parser->err, "Invalid priority value in macro: %s",
    value);
   free(value);
   return 0;
  }
  free(value);
  found = 1;
 }

 if (found == 1) {
  parser->chunks->priority = priority;
  return 1;
 }

 ucl_create_err (&parser->err, "Unable to parse priority macro");
 return 0;
}
