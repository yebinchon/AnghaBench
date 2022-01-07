
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kafs_data {char* (* get_realm ) (struct kafs_data*,char*) ;} ;
typedef int buf ;
typedef int FILE ;


 int _PATH_ARLA_CELLSERVDB ;
 int _PATH_ARLA_DEBIAN_CELLSERVDB ;
 int _PATH_CELLSERVDB ;
 int _PATH_OPENAFS_DEBIAN_CELLSERVDB ;
 int _PATH_OPENAFS_MACOSX_CELLSERVDB ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;
 int strsep (char**,char*) ;
 char* stub1 (struct kafs_data*,char*) ;

__attribute__((used)) static int
file_find_cell(struct kafs_data *data,
        const char *cell, char **realm, int exact)
{
    FILE *F;
    char buf[1024];
    char *p;
    int ret = -1;

    if ((F = fopen(_PATH_CELLSERVDB, "r"))
 || (F = fopen(_PATH_ARLA_CELLSERVDB, "r"))
 || (F = fopen(_PATH_OPENAFS_DEBIAN_CELLSERVDB, "r"))
 || (F = fopen(_PATH_OPENAFS_MACOSX_CELLSERVDB, "r"))
 || (F = fopen(_PATH_ARLA_DEBIAN_CELLSERVDB, "r"))) {
 while (fgets(buf, sizeof(buf), F)) {
     int cmp;

     if (buf[0] != '>')
  continue;
     p = buf;
     strsep(&p, " \t\n#");

     if (exact)
  cmp = strcmp(buf + 1, cell);
     else
  cmp = strncmp(buf + 1, cell, strlen(cell));

     if (cmp == 0) {




  if (fgets(buf, sizeof(buf), F) == ((void*)0))
      break;
  p = strchr(buf, '#');
  if (p == ((void*)0))
      break;
  p++;
  if (buf[strlen(buf) - 1] == '\n')
      buf[strlen(buf) - 1] = '\0';
  *realm = (*data->get_realm)(data, p);
  if (*realm && **realm != '\0')
      ret = 0;
  break;
     }
 }
 fclose(F);
    }
    return ret;
}
