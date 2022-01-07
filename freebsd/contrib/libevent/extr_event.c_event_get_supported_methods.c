
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventop {char* name; } ;


 struct eventop** eventops ;
 char** mm_calloc (int,int) ;
 int mm_free (char**) ;

const char **
event_get_supported_methods(void)
{
 static const char **methods = ((void*)0);
 const struct eventop **method;
 const char **tmp;
 int i = 0, k;


 for (method = &eventops[0]; *method != ((void*)0); ++method) {
  ++i;
 }


 tmp = mm_calloc((i + 1), sizeof(char *));
 if (tmp == ((void*)0))
  return (((void*)0));


 for (k = 0, i = 0; eventops[k] != ((void*)0); ++k) {
  tmp[i++] = eventops[k]->name;
 }
 tmp[i] = ((void*)0);

 if (methods != ((void*)0))
  mm_free((char**)methods);

 methods = tmp;

 return (methods);
}
