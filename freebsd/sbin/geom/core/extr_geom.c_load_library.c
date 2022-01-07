
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int path ;


 scalar_t__ ENOENT ;
 int EXIT_FAILURE ;
 int F_OK ;
 scalar_t__ G_LIB_VERSION ;
 int MAXPATHLEN ;
 int RTLD_NOW ;
 int access (char*,int ) ;
 int * class_commands ;
 char* class_name ;
 int dlclose (void*) ;
 int dlerror () ;
 void* dlopen (char*,int ) ;
 void* dlsym (void*,char*) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,int ,...) ;
 int exit (int ) ;
 int free (char*) ;
 int getprogname () ;
 int library_path () ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strchr (char*,char) ;
 char* strdup (int ) ;
 char* strsep (char**,char*) ;
 int * version ;
 int warnx (char*,char*,int ) ;

__attribute__((used)) static void
load_library(void)
{
 char *curpath, path[MAXPATHLEN], *tofree, *totalpath;
 uint32_t *lib_version;
 void *dlh;
 int ret;

 ret = 0;
 tofree = totalpath = strdup(library_path());
 if (totalpath == ((void*)0))
  err(EXIT_FAILURE, "Not enough memory for library path");

 if (strchr(totalpath, ':') != ((void*)0))
  curpath = strsep(&totalpath, ":");
 else
  curpath = totalpath;

 while (curpath != ((void*)0)) {
  snprintf(path, sizeof(path), "%s/geom_%s.so", curpath,
      class_name);
  ret = access(path, F_OK);
  if (ret == -1) {
   if (errno == ENOENT) {




    curpath = strsep(&totalpath, ":");
    continue;
   }
   err(EXIT_FAILURE, "Cannot access library");
  }
  break;
 }
 free(tofree);

 if (ret == -1)
  return;
 dlh = dlopen(path, RTLD_NOW);
 if (dlh == ((void*)0))
  errx(EXIT_FAILURE, "Cannot open library: %s.", dlerror());
 lib_version = dlsym(dlh, "lib_version");
 if (lib_version == ((void*)0)) {
  warnx("Cannot find symbol %s: %s.", "lib_version", dlerror());
  dlclose(dlh);
  exit(EXIT_FAILURE);
 }
 if (*lib_version != G_LIB_VERSION) {
  dlclose(dlh);
  errx(EXIT_FAILURE, "%s and %s are not synchronized.",
      getprogname(), path);
 }
 version = dlsym(dlh, "version");
 if (version == ((void*)0)) {
  warnx("Cannot find symbol %s: %s.", "version", dlerror());
  dlclose(dlh);
  exit(EXIT_FAILURE);
 }
 class_commands = dlsym(dlh, "class_commands");
 if (class_commands == ((void*)0)) {
  warnx("Cannot find symbol %s: %s.", "class_commands",
      dlerror());
  dlclose(dlh);
  exit(EXIT_FAILURE);
 }
}
