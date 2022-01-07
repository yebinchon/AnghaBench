
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmdbuf ;


 int COMPLETE ;
 int DPRINTF (char*,char const*,...) ;
 int FREEPTR (char*) ;
 int MAX_C_NAME ;
 int STRorNULL (char*) ;
 int auto_fetch (int,char**) ;
 int code ;
 int free (char*) ;
 scalar_t__ ftp_malloc (size_t) ;
 char* ftp_strdup (char const*) ;
 int mput (int,char**) ;
 int put (int,char**) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* strrchr (char*,char) ;
 int warnx (char*,char*) ;

int
auto_put(int argc, char **argv, const char *uploadserver)
{
 char *uargv[4], *path, *pathsep;
 int uargc, rval, argpos;
 size_t len;
 char cmdbuf[MAX_C_NAME];

 (void)strlcpy(cmdbuf, "mput", sizeof(cmdbuf));
 uargv[0] = cmdbuf;
 uargv[1] = argv[0];
 uargc = 2;
 uargv[2] = uargv[3] = ((void*)0);
 pathsep = ((void*)0);
 rval = 1;

 DPRINTF("auto_put: target `%s'\n", uploadserver);

 path = ftp_strdup(uploadserver);
 len = strlen(path);
 if (path[len - 1] != '/' && path[len - 1] != ':') {



  if (argc > 1) {
   len = strlen(uploadserver) + 2;
   free(path);
   path = (char *)ftp_malloc(len);
   (void)strlcpy(path, uploadserver, len);
   (void)strlcat(path, "/", len);
  } else {
   (void)strlcpy(cmdbuf, "put", sizeof(cmdbuf));
   uargv[0] = cmdbuf;
   pathsep = strrchr(path, '/');
   if (pathsep == ((void*)0)) {
    pathsep = strrchr(path, ':');
    if (pathsep == ((void*)0)) {
     warnx("Invalid URL `%s'", path);
     goto cleanup_auto_put;
    }
    pathsep++;
    uargv[2] = ftp_strdup(pathsep);
    pathsep[0] = '/';
   } else
    uargv[2] = ftp_strdup(pathsep + 1);
   pathsep[1] = '\0';
   uargc++;
  }
 }
 DPRINTF("auto_put: URL `%s' argv[2] `%s'\n",
     path, STRorNULL(uargv[2]));


 rval = auto_fetch(1, &path);
 if(rval >= 0)
  goto cleanup_auto_put;

 rval = 0;



 if (uargc == 3) {
  uargv[1] = argv[0];
  put(uargc, uargv);
  if ((code / 100) != COMPLETE)
   rval = 1;
 } else {
  for(argpos = 0; argv[argpos] != ((void*)0); argpos++) {
   uargv[1] = argv[argpos];
   mput(uargc, uargv);
   if ((code / 100) != COMPLETE) {
    rval = argpos + 1;
    break;
   }
  }
 }

 cleanup_auto_put:
 free(path);
 FREEPTR(uargv[2]);
 return (rval);
}
