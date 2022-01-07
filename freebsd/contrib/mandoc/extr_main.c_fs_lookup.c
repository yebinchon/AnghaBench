
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct manpaths {size_t sz; int * paths; } ;
struct manpage {char* file; int bits; size_t ipath; char sec; int form; int * output; int * names; } ;
struct TYPE_4__ {int * gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef enum form { ____Placeholder_form } form ;


 int BINM_MAKEWHATIS ;
 int FORM_CAT ;
 int FORM_SRC ;
 int GLOB_NOMATCH ;
 int MANDOCERR_GLOB ;
 int NAME_FILE ;
 int NAME_MASK ;
 int errno ;
 int free (char*) ;
 int glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int mandoc_asprintf (char**,char*,char const*,char const*,...) ;
 int mandoc_msg (int ,int ,int ,char*,char*,int ) ;
 struct manpage* mandoc_reallocarray (struct manpage*,size_t,int) ;
 char* mandoc_strdup (int ) ;
 int stat (char*,struct stat*) ;
 int strerror (int ) ;
 int warnx (char*,char const*,char const*,int ,int ) ;

__attribute__((used)) static int
fs_lookup(const struct manpaths *paths, size_t ipath,
 const char *sec, const char *arch, const char *name,
 struct manpage **res, size_t *ressz)
{
 struct stat sb;
 glob_t globinfo;
 struct manpage *page;
 char *file;
 int globres;
 enum form form;

 form = FORM_SRC;
 mandoc_asprintf(&file, "%s/man%s/%s.%s",
     paths->paths[ipath], sec, name, sec);
 if (stat(file, &sb) != -1)
  goto found;
 free(file);

 mandoc_asprintf(&file, "%s/cat%s/%s.0",
     paths->paths[ipath], sec, name);
 if (stat(file, &sb) != -1) {
  form = FORM_CAT;
  goto found;
 }
 free(file);

 if (arch != ((void*)0)) {
  mandoc_asprintf(&file, "%s/man%s/%s/%s.%s",
      paths->paths[ipath], sec, arch, name, sec);
  if (stat(file, &sb) != -1)
   goto found;
  free(file);
 }

 mandoc_asprintf(&file, "%s/man%s/%s.[01-9]*",
     paths->paths[ipath], sec, name);
 globres = glob(file, 0, ((void*)0), &globinfo);
 if (globres != 0 && globres != GLOB_NOMATCH)
  mandoc_msg(MANDOCERR_GLOB, 0, 0,
      "%s: %s", file, strerror(errno));
 free(file);
 if (globres == 0)
  file = mandoc_strdup(*globinfo.gl_pathv);
 globfree(&globinfo);
 if (globres == 0) {
  if (stat(file, &sb) != -1)
   goto found;
  free(file);
 }
 if (res != ((void*)0) || ipath + 1 != paths->sz)
  return -1;

 mandoc_asprintf(&file, "%s.%s", name, sec);
 globres = stat(file, &sb);
 free(file);
 return globres;

found:
 warnx("outdated mandoc.db lacks %s(%s) entry, run %s %s",
     name, sec, BINM_MAKEWHATIS, paths->paths[ipath]);
 if (res == ((void*)0)) {
  free(file);
  return 0;
 }
 *res = mandoc_reallocarray(*res, ++*ressz, sizeof(**res));
 page = *res + (*ressz - 1);
 page->file = file;
 page->names = ((void*)0);
 page->output = ((void*)0);
 page->bits = NAME_FILE & NAME_MASK;
 page->ipath = ipath;
 page->sec = (*sec >= '1' && *sec <= '9') ? *sec - '1' + 1 : 10;
 page->form = form;
 return 0;
}
