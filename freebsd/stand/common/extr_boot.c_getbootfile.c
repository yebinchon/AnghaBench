
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* default_bootfiles ;
 int free (char*) ;
 char* getenv (char*) ;
 char* malloc (size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
getbootfile(int try)
{
 static char *name = ((void*)0);
 const char *spec, *ep;
 size_t len;


 if (name != ((void*)0)) {
  free(name);
  name = ((void*)0);
 }




 if ((spec = getenv("bootfile")) == ((void*)0))
  spec = default_bootfiles;

 while ((try > 0) && (spec != ((void*)0))) {
  spec = strchr(spec, ';');
  if (spec)
   spec++;
  try--;
 }
 if (spec != ((void*)0)) {
  if ((ep = strchr(spec, ';')) != ((void*)0)) {
   len = ep - spec;
  } else {
   len = strlen(spec);
  }
  name = malloc(len + 1);
  strncpy(name, spec, len);
  name[len] = 0;
 }
 if (name && name[0] == 0) {
  free(name);
  name = ((void*)0);
 }
 return(name);
}
