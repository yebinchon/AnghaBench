
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sftp_conn {int dummy; } ;
struct TYPE_5__ {int gl_matchc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int g ;


 int GLOB_MARK ;
 int GLOB_NOSPACE ;
 char* basename (char*) ;
 int debug3 (char*,char*) ;
 int do_download (struct sftp_conn*,char*,char*,int *,int,int,int) ;
 int download_dir (struct sftp_conn*,char*,char*,int *,int,int,int,int) ;
 int errno ;
 int error (char*,char const*,...) ;
 int free (char*) ;
 int global_aflag ;
 scalar_t__ global_fflag ;
 scalar_t__ global_pflag ;
 scalar_t__ global_rflag ;
 int globfree (TYPE_1__*) ;
 int interrupted ;
 scalar_t__ is_dir (char const*) ;
 char* make_absolute (char*,char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int mprintf (char*,char*,char*) ;
 char* path_append (char const*,char*) ;
 scalar_t__ pathname_is_dir (char*) ;
 int quiet ;
 int remote_glob (struct sftp_conn*,char*,int ,int *,TYPE_1__*) ;
 char* strerror (int ) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
process_get(struct sftp_conn *conn, const char *src, const char *dst,
    const char *pwd, int pflag, int rflag, int resume, int fflag)
{
 char *abs_src = ((void*)0);
 char *abs_dst = ((void*)0);
 glob_t g;
 char *filename, *tmp=((void*)0);
 int i, r, err = 0;

 abs_src = xstrdup(src);
 abs_src = make_absolute(abs_src, pwd);
 memset(&g, 0, sizeof(g));

 debug3("Looking up %s", abs_src);
 if ((r = remote_glob(conn, abs_src, GLOB_MARK, ((void*)0), &g)) != 0) {
  if (r == GLOB_NOSPACE) {
   error("Too many matches for \"%s\".", abs_src);
  } else {
   error("File \"%s\" not found.", abs_src);
  }
  err = -1;
  goto out;
 }





 if (g.gl_matchc > 1 && dst != ((void*)0) && !is_dir(dst)) {
  error("Multiple source paths, but destination "
      "\"%s\" is not a directory", dst);
  err = -1;
  goto out;
 }

 for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
  tmp = xstrdup(g.gl_pathv[i]);
  if ((filename = basename(tmp)) == ((void*)0)) {
   error("basename %s: %s", tmp, strerror(errno));
   free(tmp);
   err = -1;
   goto out;
  }

  if (g.gl_matchc == 1 && dst) {
   if (is_dir(dst)) {
    abs_dst = path_append(dst, filename);
   } else {
    abs_dst = xstrdup(dst);
   }
  } else if (dst) {
   abs_dst = path_append(dst, filename);
  } else {
   abs_dst = xstrdup(filename);
  }
  free(tmp);

  resume |= global_aflag;
  if (!quiet && resume)
   mprintf("Resuming %s to %s\n",
       g.gl_pathv[i], abs_dst);
  else if (!quiet && !resume)
   mprintf("Fetching %s to %s\n",
       g.gl_pathv[i], abs_dst);
  if (pathname_is_dir(g.gl_pathv[i]) && (rflag || global_rflag)) {
   if (download_dir(conn, g.gl_pathv[i], abs_dst, ((void*)0),
       pflag || global_pflag, 1, resume,
       fflag || global_fflag) == -1)
    err = -1;
  } else {
   if (do_download(conn, g.gl_pathv[i], abs_dst, ((void*)0),
       pflag || global_pflag, resume,
       fflag || global_fflag) == -1)
    err = -1;
  }
  free(abs_dst);
  abs_dst = ((void*)0);
 }

out:
 free(abs_src);
 globfree(&g);
 return(err);
}
