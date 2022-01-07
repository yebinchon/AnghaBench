
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char const* _PATH_ARLA_CELLSERVDB ;
 char const* _PATH_ARLA_DEBIAN_CELLSERVDB ;
 char const* _PATH_CELLSERVDB ;
 char const* _PATH_OPENAFS_DEBIAN_CELLSERVDB ;
 char* expand_one_file (int *,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

__attribute__((used)) static const char *
expand_cell_name(const char *cell)
{
    FILE *f;
    const char *c;
    const char **fn, *files[] = { _PATH_CELLSERVDB,
      _PATH_ARLA_CELLSERVDB,
      _PATH_OPENAFS_DEBIAN_CELLSERVDB,
      _PATH_ARLA_DEBIAN_CELLSERVDB,
      ((void*)0) };
    for(fn = files; *fn; fn++) {
 f = fopen(*fn, "r");
 if(f == ((void*)0))
     continue;
 c = expand_one_file(f, cell);
 fclose(f);
 if(c)
     return c;
    }
    return cell;
}
