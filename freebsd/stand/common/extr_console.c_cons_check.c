
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* c_name; } ;


 int cons_find (char*) ;
 TYPE_1__** consoles ;
 int free (char*) ;
 int printf (char*,...) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
cons_check(const char *string)
{
    int cons, found, failed;
    char *curpos, *dup, *next;

    dup = next = strdup(string);
    found = failed = 0;
    while (next != ((void*)0)) {
 curpos = strsep(&next, " ,");
 if (*curpos != '\0') {
     cons = cons_find(curpos);
     if (cons == -1) {
  printf("console %s is invalid!\n", curpos);
  failed++;
     } else {
  found++;
     }
 }
    }

    free(dup);

    if (found == 0)
 printf("no valid consoles!\n");

    if (found == 0 || failed != 0) {
 printf("Available consoles:\n");
 for (cons = 0; consoles[cons] != ((void*)0); cons++)
     printf("    %s\n", consoles[cons]->c_name);
    }

    return (found);
}
