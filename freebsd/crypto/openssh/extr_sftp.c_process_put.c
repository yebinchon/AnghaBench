
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
struct sftp_conn {int dummy; } ;
struct TYPE_5__ {int gl_matchc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int g ;


 int GLOB_MARK ;
 int GLOB_NOCHECK ;
 char* basename (char*) ;
 int debug3 (char*,char const*) ;
 int do_upload (struct sftp_conn*,char*,char*,int,int,int) ;
 int errno ;
 int error (char*,char const*,...) ;
 int free (char*) ;
 scalar_t__ glob (char const*,int,int *,TYPE_1__*) ;
 int global_aflag ;
 scalar_t__ global_fflag ;
 scalar_t__ global_pflag ;
 scalar_t__ global_rflag ;
 int globfree (TYPE_1__*) ;
 int interrupted ;
 char* make_absolute (char*,char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int mprintf (char*,char*,char*) ;
 char* path_append (char*,char*) ;
 scalar_t__ pathname_is_dir (char*) ;
 int quiet ;
 int remote_is_dir (struct sftp_conn*,char*) ;
 int stat (char*,struct stat*) ;
 char* strerror (int ) ;
 int upload_dir (struct sftp_conn*,char*,char*,int,int,int,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
process_put(struct sftp_conn *conn, const char *src, const char *dst,
    const char *pwd, int pflag, int rflag, int resume, int fflag)
{
 char *tmp_dst = ((void*)0);
 char *abs_dst = ((void*)0);
 char *tmp = ((void*)0), *filename = ((void*)0);
 glob_t g;
 int err = 0;
 int i, dst_is_dir = 1;
 struct stat sb;

 if (dst) {
  tmp_dst = xstrdup(dst);
  tmp_dst = make_absolute(tmp_dst, pwd);
 }

 memset(&g, 0, sizeof(g));
 debug3("Looking up %s", src);
 if (glob(src, GLOB_NOCHECK | GLOB_MARK, ((void*)0), &g)) {
  error("File \"%s\" not found.", src);
  err = -1;
  goto out;
 }


 if (tmp_dst != ((void*)0))
  dst_is_dir = remote_is_dir(conn, tmp_dst);


 if (g.gl_matchc > 1 && tmp_dst && !dst_is_dir) {
  error("Multiple paths match, but destination "
      "\"%s\" is not a directory", tmp_dst);
  err = -1;
  goto out;
 }

 for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
  if (stat(g.gl_pathv[i], &sb) == -1) {
   err = -1;
   error("stat %s: %s", g.gl_pathv[i], strerror(errno));
   continue;
  }

  tmp = xstrdup(g.gl_pathv[i]);
  if ((filename = basename(tmp)) == ((void*)0)) {
   error("basename %s: %s", tmp, strerror(errno));
   free(tmp);
   err = -1;
   goto out;
  }

  if (g.gl_matchc == 1 && tmp_dst) {

   if (dst_is_dir)
    abs_dst = path_append(tmp_dst, filename);
   else
    abs_dst = xstrdup(tmp_dst);
  } else if (tmp_dst) {
   abs_dst = path_append(tmp_dst, filename);
  } else {
   abs_dst = make_absolute(xstrdup(filename), pwd);
  }
  free(tmp);

                resume |= global_aflag;
  if (!quiet && resume)
   mprintf("Resuming upload of %s to %s\n",
       g.gl_pathv[i], abs_dst);
  else if (!quiet && !resume)
   mprintf("Uploading %s to %s\n",
       g.gl_pathv[i], abs_dst);
  if (pathname_is_dir(g.gl_pathv[i]) && (rflag || global_rflag)) {
   if (upload_dir(conn, g.gl_pathv[i], abs_dst,
       pflag || global_pflag, 1, resume,
       fflag || global_fflag) == -1)
    err = -1;
  } else {
   if (do_upload(conn, g.gl_pathv[i], abs_dst,
       pflag || global_pflag, resume,
       fflag || global_fflag) == -1)
    err = -1;
  }
 }

out:
 free(abs_dst);
 free(tmp_dst);
 globfree(&g);
 return(err);
}
