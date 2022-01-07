
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dologout (int) ;
 char* malloc (scalar_t__) ;
 int reply (int,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
sgetsave(char *s)
{
 char *new = malloc(strlen(s) + 1);

 if (new == ((void*)0)) {
  reply(421, "Ran out of memory.");
  dologout(1);

 }
 (void) strcpy(new, s);
 return (new);
}
