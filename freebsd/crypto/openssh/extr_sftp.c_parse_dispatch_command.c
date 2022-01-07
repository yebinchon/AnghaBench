
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sftp_conn {int dummy; } ;
typedef int path_buf ;
struct TYPE_10__ {char** gl_pathv; scalar_t__ gl_pathc; } ;
typedef TYPE_1__ glob_t ;
typedef int g ;
struct TYPE_11__ {int flags; int perm; unsigned long uid; unsigned long gid; } ;
typedef TYPE_2__ Attrib ;


 int GLOB_NOCHECK ;
 int PATH_MAX ;
 int SSH2_FILEXFER_ATTR_PERMISSIONS ;
 int SSH2_FILEXFER_ATTR_UIDGID ;
 int S_ISDIR (int) ;
 int attrib_clear (TYPE_2__*) ;
 int chdir (char*) ;
 int do_df (struct sftp_conn*,char*,int,int) ;
 int do_globbed_ls (struct sftp_conn*,char*,char*,int) ;
 int do_hardlink (struct sftp_conn*,char*,char*) ;
 int do_ls_dir (struct sftp_conn*,char*,char*,int) ;
 int do_mkdir (struct sftp_conn*,char*,TYPE_2__*,int) ;
 char* do_realpath (struct sftp_conn*,char*) ;
 int do_rename (struct sftp_conn*,char*,char*,int) ;
 int do_rm (struct sftp_conn*,char*) ;
 int do_rmdir (struct sftp_conn*,char*) ;
 int do_setstat (struct sftp_conn*,char*,TYPE_2__*) ;
 TYPE_2__* do_stat (struct sftp_conn*,char*,int ) ;
 int do_symlink (struct sftp_conn*,char*,char*) ;
 int errno ;
 int error (char*,...) ;
 int fatal (char*,int) ;
 int free (char*) ;
 int getcwd (char*,int) ;
 int getuid () ;
 int globfree (TYPE_1__*) ;
 int help () ;
 int interrupted ;
 int local_do_ls (char const*) ;
 int local_do_shell (char const*) ;
 char* make_absolute (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int mkdir (char*,int) ;
 int mprintf (char*,char*) ;
 int parse_args (char const**,int*,int*,int*,int*,int*,int*,int*,int*,int*,unsigned long*,char**,char**) ;
 int printf (char*,...) ;
 int process_get (struct sftp_conn*,char*,char*,char*,int,int,int,int) ;
 int process_put (struct sftp_conn*,char*,char*,char*,int,int,int,int) ;
 int quiet ;
 int remote_glob (struct sftp_conn*,char*,int ,int *,TYPE_1__*) ;
 int sftp_proto_version (struct sftp_conn*) ;
 int showprogress ;
 char* strerror (int ) ;
 int stub1 (struct sftp_conn*,char*,char*) ;
 char* tilde_expand_filename (char*,int ) ;
 int umask (unsigned long) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
parse_dispatch_command(struct sftp_conn *conn, const char *cmd, char **pwd,
    const char *startdir, int err_abort)
{
 char *path1, *path2, *tmp;
 int ignore_errors = 0, aflag = 0, fflag = 0, hflag = 0,
 iflag = 0;
 int lflag = 0, pflag = 0, rflag = 0, sflag = 0;
 int cmdnum, i;
 unsigned long n_arg = 0;
 Attrib a, *aa;
 char path_buf[PATH_MAX];
 int err = 0;
 glob_t g;

 path1 = path2 = ((void*)0);
 cmdnum = parse_args(&cmd, &ignore_errors, &aflag, &fflag, &hflag,
     &iflag, &lflag, &pflag, &rflag, &sflag, &n_arg, &path1, &path2);
 if (ignore_errors != 0)
  err_abort = 0;

 memset(&g, 0, sizeof(g));


 switch (cmdnum) {
 case 0:

  break;
 case -1:

  err = -1;
  break;
 case 135:
  aflag = 1;

 case 149:
  err = process_get(conn, path1, path2, *pwd, pflag,
      rflag, aflag, fflag);
  break;
 case 133:
  aflag = 1;

 case 138:
  err = process_put(conn, path1, path2, *pwd, pflag,
      rflag, aflag, fflag);
  break;
 case 134:
  path1 = make_absolute(path1, *pwd);
  path2 = make_absolute(path2, *pwd);
  err = do_rename(conn, path1, path2, lflag);
  break;
 case 129:
  sflag = 1;
 case 146:
  if (!sflag)
   path1 = make_absolute(path1, *pwd);
  path2 = make_absolute(path2, *pwd);
  err = (sflag ? do_symlink : do_hardlink)(conn, path1, path2);
  break;
 case 132:
  path1 = make_absolute(path1, *pwd);
  remote_glob(conn, path1, GLOB_NOCHECK, ((void*)0), &g);
  for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
   if (!quiet)
    mprintf("Removing %s\n", g.gl_pathv[i]);
   err = do_rm(conn, g.gl_pathv[i]);
   if (err != 0 && err_abort)
    break;
  }
  break;
 case 140:
  path1 = make_absolute(path1, *pwd);
  attrib_clear(&a);
  a.flags |= SSH2_FILEXFER_ATTR_PERMISSIONS;
  a.perm = 0777;
  err = do_mkdir(conn, path1, &a, 1);
  break;
 case 131:
  path1 = make_absolute(path1, *pwd);
  err = do_rmdir(conn, path1);
  break;
 case 154:
  if (path1 == ((void*)0) || *path1 == '\0')
   path1 = xstrdup(startdir);
  path1 = make_absolute(path1, *pwd);
  if ((tmp = do_realpath(conn, path1)) == ((void*)0)) {
   err = 1;
   break;
  }
  if ((aa = do_stat(conn, tmp, 0)) == ((void*)0)) {
   free(tmp);
   err = 1;
   break;
  }
  if (!(aa->flags & SSH2_FILEXFER_ATTR_PERMISSIONS)) {
   error("Can't change directory: Can't check target");
   free(tmp);
   err = 1;
   break;
  }
  if (!S_ISDIR(aa->perm)) {
   error("Can't change directory: \"%s\" is not "
       "a directory", tmp);
   free(tmp);
   err = 1;
   break;
  }
  free(*pwd);
  *pwd = tmp;
  break;
 case 142:
  if (!path1) {
   do_ls_dir(conn, *pwd, *pwd, lflag);
   break;
  }


  tmp = ((void*)0);
  if (*path1 != '/')
   tmp = *pwd;

  path1 = make_absolute(path1, *pwd);
  err = do_globbed_ls(conn, path1, tmp, lflag);
  break;
 case 150:

  if (path1 == ((void*)0))
   path1 = xstrdup(*pwd);
  path1 = make_absolute(path1, *pwd);
  err = do_df(conn, path1, hflag, iflag);
  break;
 case 147:
  if (path1 == ((void*)0) || *path1 == '\0')
   path1 = xstrdup("~");
  tmp = tilde_expand_filename(path1, getuid());
  free(path1);
  path1 = tmp;
  if (chdir(path1) == -1) {
   error("Couldn't change local directory to "
       "\"%s\": %s", path1, strerror(errno));
   err = 1;
  }
  break;
 case 144:
  if (mkdir(path1, 0777) == -1) {
   error("Couldn't create local directory "
       "\"%s\": %s", path1, strerror(errno));
   err = 1;
  }
  break;
 case 145:
  local_do_ls(cmd);
  break;
 case 130:
  local_do_shell(cmd);
  break;
 case 141:
  umask(n_arg);
  printf("Local umask: %03lo\n", n_arg);
  break;
 case 152:
  path1 = make_absolute(path1, *pwd);
  attrib_clear(&a);
  a.flags |= SSH2_FILEXFER_ATTR_PERMISSIONS;
  a.perm = n_arg;
  remote_glob(conn, path1, GLOB_NOCHECK, ((void*)0), &g);
  for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
   if (!quiet)
    mprintf("Changing mode on %s\n",
        g.gl_pathv[i]);
   err = do_setstat(conn, g.gl_pathv[i], &a);
   if (err != 0 && err_abort)
    break;
  }
  break;
 case 151:
 case 153:
  path1 = make_absolute(path1, *pwd);
  remote_glob(conn, path1, GLOB_NOCHECK, ((void*)0), &g);
  for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
   if (!(aa = do_stat(conn, g.gl_pathv[i], 0))) {
    if (err_abort) {
     err = -1;
     break;
    } else
     continue;
   }
   if (!(aa->flags & SSH2_FILEXFER_ATTR_UIDGID)) {
    error("Can't get current ownership of "
        "remote file \"%s\"", g.gl_pathv[i]);
    if (err_abort) {
     err = -1;
     break;
    } else
     continue;
   }
   aa->flags &= SSH2_FILEXFER_ATTR_UIDGID;
   if (cmdnum == 151) {
    if (!quiet)
     mprintf("Changing owner on %s\n",
         g.gl_pathv[i]);
    aa->uid = n_arg;
   } else {
    if (!quiet)
     mprintf("Changing group on %s\n",
         g.gl_pathv[i]);
    aa->gid = n_arg;
   }
   err = do_setstat(conn, g.gl_pathv[i], aa);
   if (err != 0 && err_abort)
    break;
  }
  break;
 case 137:
  mprintf("Remote working directory: %s\n", *pwd);
  break;
 case 143:
  if (!getcwd(path_buf, sizeof(path_buf))) {
   error("Couldn't get local cwd: %s", strerror(errno));
   err = -1;
   break;
  }
  mprintf("Local working directory: %s\n", path_buf);
  break;
 case 136:

  break;
 case 148:
  help();
  break;
 case 128:
  printf("SFTP protocol version %u\n", sftp_proto_version(conn));
  break;
 case 139:
  showprogress = !showprogress;
  if (showprogress)
   printf("Progress meter enabled\n");
  else
   printf("Progress meter disabled\n");
  break;
 default:
  fatal("%d is not implemented", cmdnum);
 }

 if (g.gl_pathc)
  globfree(&g);
 free(path1);
 free(path2);


 if (err_abort && err != 0)
  return (-1);
 else if (cmdnum == 136)
  return (1);

 return (0);
}
