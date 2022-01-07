
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_mem_t ;


 int ISC_R_INVALIDFILE ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 char* isc_mem_allocate (int *,int) ;
 int isc_mem_free (int *,char*) ;
 char* isc_mem_strdup (int *,char*) ;
 int strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;

isc_result_t
isc_file_splitpath(isc_mem_t *mctx, char *path, char **dirname, char **basename)
{
 char *dir, *file, *slash;
 char *backslash;

 slash = strrchr(path, '/');

 backslash = strrchr(path, '\\');
 if ((slash != ((void*)0) && backslash != ((void*)0) && backslash > slash) ||
     (slash == ((void*)0) && backslash != ((void*)0)))
  slash = backslash;

 if (slash == path) {
  file = ++slash;
  dir = isc_mem_strdup(mctx, "/");
 } else if (slash != ((void*)0)) {
  file = ++slash;
  dir = isc_mem_allocate(mctx, slash - path);
  if (dir != ((void*)0))
   strlcpy(dir, path, slash - path);
 } else {
  file = path;
  dir = isc_mem_strdup(mctx, ".");
 }

 if (dir == ((void*)0))
  return (ISC_R_NOMEMORY);

 if (*file == '\0') {
  isc_mem_free(mctx, dir);
  return (ISC_R_INVALIDFILE);
 }

 *dirname = dir;
 *basename = file;

 return (ISC_R_SUCCESS);
}
