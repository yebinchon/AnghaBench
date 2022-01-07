
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char sftp_conn ;
struct complete_ctx {char* conn; char** remote_pathp; } ;
typedef int cmd ;
typedef int History ;
typedef int HistEvent ;
typedef int EditLine ;


 int EL_ADDFN ;
 int EL_BIND ;
 int EL_CLIENTDATA ;
 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int EL_SIGNAL ;
 int EL_TERMINAL ;
 int H_ENTER ;
 int H_SETSIZE ;
 int SIGCHLD ;
 int SIGINT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int STDIN_FILENO ;
 int _IOLBF ;
 int batchmode ;
 int cmd_interrupt ;
 int * complete ;
 char* do_realpath (char*,char*) ;
 int el_end (int *) ;
 char* el_gets (int *,int*) ;
 int * el_init (char*,int ,int ,int ) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int fatal (char*) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 scalar_t__ global_aflag ;
 int history (int *,int *,int ,...) ;
 int * history_init () ;
 int infile ;
 scalar_t__ interrupted ;
 scalar_t__ isatty (int ) ;
 char* make_absolute (char*,char*) ;
 int mprintf (char*,char*) ;
 scalar_t__ parse_dispatch_command (char*,char*,char**,char*,int) ;
 int printf (char*) ;
 int prompt ;
 int quiet ;
 scalar_t__ remote_is_dir (char*,char*) ;
 int setvbuf (int ,int *,int ,int ) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
interactive_loop(struct sftp_conn *conn, char *file1, char *file2)
{
 char *remote_path;
 char *dir = ((void*)0), *startdir = ((void*)0);
 char cmd[2048];
 int err, interactive;
 EditLine *el = ((void*)0);
 remote_path = do_realpath(conn, ".");
 if (remote_path == ((void*)0))
  fatal("Need cwd");
 startdir = xstrdup(remote_path);

 if (file1 != ((void*)0)) {
  dir = xstrdup(file1);
  dir = make_absolute(dir, remote_path);

  if (remote_is_dir(conn, dir) && file2 == ((void*)0)) {
   if (!quiet)
    mprintf("Changing to: %s\n", dir);
   snprintf(cmd, sizeof cmd, "cd \"%s\"", dir);
   if (parse_dispatch_command(conn, cmd,
       &remote_path, startdir, 1) != 0) {
    free(dir);
    free(startdir);
    free(remote_path);
    free(conn);
    return (-1);
   }
  } else {

   snprintf(cmd, sizeof cmd, "get%s %s%s%s",
       global_aflag ? " -a" : "", dir,
       file2 == ((void*)0) ? "" : " ",
       file2 == ((void*)0) ? "" : file2);
   err = parse_dispatch_command(conn, cmd,
       &remote_path, startdir, 1);
   free(dir);
   free(startdir);
   free(remote_path);
   free(conn);
   return (err);
  }
  free(dir);
 }

 setvbuf(stdout, ((void*)0), _IOLBF, 0);
 setvbuf(infile, ((void*)0), _IOLBF, 0);

 interactive = !batchmode && isatty(STDIN_FILENO);
 err = 0;
 for (;;) {
  char *cp;

  signal(SIGINT, SIG_IGN);

  if (el == ((void*)0)) {
   if (interactive)
    printf("sftp> ");
   if (fgets(cmd, sizeof(cmd), infile) == ((void*)0)) {
    if (interactive)
     printf("\n");
    break;
   }
   if (!interactive) {
    mprintf("sftp> %s", cmd);
    if (strlen(cmd) > 0 &&
        cmd[strlen(cmd) - 1] != '\n')
     printf("\n");
   }
  } else {
  }

  cp = strrchr(cmd, '\n');
  if (cp)
   *cp = '\0';


  interrupted = 0;
  signal(SIGINT, cmd_interrupt);

  err = parse_dispatch_command(conn, cmd, &remote_path,
      startdir, batchmode);
  if (err != 0)
   break;
 }
 signal(SIGCHLD, SIG_DFL);
 free(remote_path);
 free(startdir);
 free(conn);







 return (err >= 0 ? 0 : -1);
}
