
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int allowed_operations ;
 char* dnvlist_get_string (int const*,char*,int *) ;
 int * lastname ;
 int nvlist_exists_null (int const*,char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static bool
fileargs_allowed(const nvlist_t *limits, const nvlist_t *request, int operation)
{
 const char *name;

 if ((allowed_operations & operation) == 0)
  return (0);

 name = dnvlist_get_string(request, "name", ((void*)0));
 if (name == ((void*)0))
  return (0);


 if (lastname != ((void*)0) && strcmp(name, lastname) == 0)
  return (1);

 if (!nvlist_exists_null(limits, name))
  return (0);

 return (1);
}
