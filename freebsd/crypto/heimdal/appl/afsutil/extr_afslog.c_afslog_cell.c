
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cell_list {char const* cell; struct cell_list* next; } ;


 struct cell_list* cell_list ;
 char* expand_cell_name (char const*) ;
 int free (struct cell_list*) ;
 struct cell_list* malloc (int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char const* strdup (char const*) ;
 scalar_t__ verbose ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
afslog_cell(const char *cell, int expand)
{
    struct cell_list *p, **q;
    const char *c = cell;
    if(expand){
 c = expand_cell_name(cell);
 if(c == ((void*)0)){
     warnx("No cell matching \"%s\" found.", cell);
     return -1;
 }
 if(verbose && strcmp(c, cell) != 0)
     warnx("Cell \"%s\" expanded to \"%s\"", cell, c);
    }


    for(p = cell_list, q = &cell_list; p; q = &p->next, p = p->next)
 if(strcmp(p->cell, c) == 0)
     return 0;
    p = malloc(sizeof(*p));
    if(p == ((void*)0))
 return -1;
    p->cell = strdup(c);
    if(p->cell == ((void*)0)) {
 free(p);
 return -1;
    }
    p->next = ((void*)0);
    *q = p;
    return 0;
}
