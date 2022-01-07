
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cell ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 char** realloc (char**,int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
find_cells(const char *file, char ***cells, int *idx)
{
    FILE *f;
    char cell[64];
    int i;
    int ind = *idx;

    f = fopen(file, "r");
    if (f == ((void*)0))
 return;
    while (fgets(cell, sizeof(cell), f)) {
 char *t;
 t = cell + strlen(cell);
 for (; t >= cell; t--)
   if (*t == '\n' || *t == '\t' || *t == ' ')
     *t = 0;
 if (cell[0] == '\0' || cell[0] == '#')
     continue;
 for(i = 0; i < ind; i++)
     if(strcmp((*cells)[i], cell) == 0)
  break;
 if(i == ind){
     char **tmp;

     tmp = realloc(*cells, (ind + 1) * sizeof(**cells));
     if (tmp == ((void*)0))
  break;
     *cells = tmp;
     (*cells)[ind] = strdup(cell);
     if ((*cells)[ind] == ((void*)0))
  break;
     ++ind;
 }
    }
    fclose(f);
    *idx = ind;
}
