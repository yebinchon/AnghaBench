
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
efi_make_tail(char *suffix)
{
 char *tail;

 tail = ((void*)0);
 if (suffix != ((void*)0))
  (void)asprintf(&tail, "/%s", suffix);
 else
  tail = strdup("");
 return (tail);
}
