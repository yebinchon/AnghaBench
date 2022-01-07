
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {char* preferred_authentications; } ;
typedef int Authmethod ;


 scalar_t__ authmethod_is_enabled (int *) ;
 int * authmethod_lookup (char*) ;
 int * current ;
 int debug (char*,...) ;
 int debug3 (char*,char*) ;
 int free (char*) ;
 char* match_list (char*,char*,int *) ;
 TYPE_1__ options ;
 char* preferred ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* supported ;
 char* xstrdup (char*) ;

__attribute__((used)) static Authmethod *
authmethod_get(char *authlist)
{
 char *name = ((void*)0);
 u_int next;


 if (authlist == ((void*)0) || strlen(authlist) == 0)
  authlist = options.preferred_authentications;

 if (supported == ((void*)0) || strcmp(authlist, supported) != 0) {
  debug3("start over, passed a different list %s", authlist);
  free(supported);
  supported = xstrdup(authlist);
  preferred = options.preferred_authentications;
  debug3("preferred %s", preferred);
  current = ((void*)0);
 } else if (current != ((void*)0) && authmethod_is_enabled(current))
  return current;

 for (;;) {
  if ((name = match_list(preferred, supported, &next)) == ((void*)0)) {
   debug("No more authentication methods to try.");
   current = ((void*)0);
   return ((void*)0);
  }
  preferred += next;
  debug3("authmethod_lookup %s", name);
  debug3("remaining preferred: %s", preferred);
  if ((current = authmethod_lookup(name)) != ((void*)0) &&
      authmethod_is_enabled(current)) {
   debug3("authmethod_is_enabled %s", name);
   debug("Next authentication method: %s", name);
   free(name);
   return current;
  }
  free(name);
 }
}
