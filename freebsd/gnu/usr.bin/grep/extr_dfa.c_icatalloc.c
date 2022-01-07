
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 scalar_t__ realloc (void*,size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
icatalloc (char *old, char *new)
{
  char *result;
  size_t oldsize, newsize;

  newsize = (new == ((void*)0)) ? 0 : strlen(new);
  if (old == ((void*)0))
    oldsize = 0;
  else if (newsize == 0)
    return old;
  else oldsize = strlen(old);
  if (old == ((void*)0))
    result = (char *) malloc(newsize + 1);
  else
    result = (char *) realloc((void *) old, oldsize + newsize + 1);
  if (result != ((void*)0) && new != ((void*)0))
    (void) strcpy(result + oldsize, new);
  return result;
}
