
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int FILE ;
typedef int DIR ;


 int LOG_ERR ;
 int LS_DIR_FLAG ;
 int asprintf (char**,char*,char const*,int ) ;
 int closedir (int *) ;
 int free_files (char**,int) ;
 scalar_t__ hide_file (int ,int) ;
 int list_files (int *,char const**,int,int) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 void* realloc (char**,int) ;
 int syslog (int ,char*,char const*) ;

__attribute__((used)) static int
list_dir(FILE *out, const char *directory, int flags)
{
    DIR *d = opendir(directory);
    struct dirent *ent;
    char **files = ((void*)0);
    int n_files = 0;
    int ret;

    if(d == ((void*)0)) {
 syslog(LOG_ERR, "%s: %m", directory);
 return -1;
    }
    while((ent = readdir(d)) != ((void*)0)) {
 void *tmp;

 if(hide_file(ent->d_name, flags))
     continue;
 tmp = realloc(files, (n_files + 1) * sizeof(*files));
 if (tmp == ((void*)0)) {
     syslog(LOG_ERR, "%s: out of memory", directory);
     free_files (files, n_files);
     closedir (d);
     return -1;
 }
 files = tmp;
 ret = asprintf(&files[n_files], "%s/%s", directory, ent->d_name);
 if (ret == -1) {
     syslog(LOG_ERR, "%s: out of memory", directory);
     free_files (files, n_files);
     closedir (d);
     return -1;
 }
 ++n_files;
    }
    closedir(d);
    return list_files(out, (const char**)files, n_files, flags | LS_DIR_FLAG);
}
