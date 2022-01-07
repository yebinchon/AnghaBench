
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct passwd {char* pw_shell; char* pw_dir; int pw_name; } ;
typedef int cell ;
typedef int argv0 ;
struct TYPE_11__ {scalar_t__ kerberos_get_afs_token; scalar_t__ use_pam; } ;
struct TYPE_10__ {int ttyfd; scalar_t__ is_subsystem; struct passwd* pw; TYPE_1__* authctxt; int * tty; } ;
struct TYPE_9__ {int krb5_fwd_ccache; int * krb5_ctx; scalar_t__ force_pwchange; } ;
typedef TYPE_2__ Session ;


 int ARGV_MAX ;
 int EINVAL ;
 int INTERNAL_SFTP_NAME ;
 int SIGPIPE ;
 int SIG_DFL ;
 scalar_t__ STDERR_FILENO ;
 scalar_t__ SUBSYSTEM_INT_SFTP ;
 scalar_t__ SUBSYSTEM_INT_SFTP_ERROR ;
 char* _PATH_BSHELL ;
 char* __progname ;
 scalar_t__ chdir (char*) ;
 int check_quietlogin (TYPE_2__*,char const*) ;
 int child_close_fds (struct ssh*) ;
 int closefrom (scalar_t__) ;
 int debug (char*) ;
 int debug3 (char*) ;
 int destroy_sensitive_data () ;
 int display_loginmsg () ;
 int do_motd () ;
 int do_nologin (struct passwd*) ;
 int do_pwchange (TYPE_2__*) ;
 int do_rc_files (struct ssh*,TYPE_2__*,char const*) ;
 char** do_setup_env (struct ssh*,TYPE_2__*,char const*) ;
 int do_setusercontext (struct passwd*) ;
 int errno ;
 int execve (char const*,char**,char**) ;
 int exit (int) ;
 int fflush (int *) ;
 int fprintf (int ,char*,char*,char*) ;
 int in_chroot ;
 int is_pam_session_open () ;
 scalar_t__ k_afs_cell_of_file (char*,char*,int) ;
 scalar_t__ k_hasafs () ;
 int k_setpag () ;
 int krb5_afslog (int *,int ,char*,int *) ;
 int krb5_afslog_home (int *,int ,int *,int *,char*) ;
 int lc ;
 int login_getcapbool (int ,char*,int ) ;
 char* login_getcapstr (int ,char*,char*,char*) ;
 TYPE_3__ options ;
 int packet_clear_keys () ;
 int perror (char const*) ;
 int printf (char*) ;
 int session_setup_sia (struct passwd*,int *) ;
 int setproctitle (char*,int ,int ) ;
 int sftp_server_main (int,char**,struct passwd*) ;
 int signal (int ,int ) ;
 int ssh_selinux_change_context (char*) ;
 int stderr ;
 char* strerror (int ) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;
 char* strtok (char*,char*) ;
 char* xstrdup (char const*) ;

void
do_child(struct ssh *ssh, Session *s, const char *command)
{
 extern char **environ;
 char **env;
 char *argv[ARGV_MAX];
 const char *shell, *shell0;
 struct passwd *pw = s->pw;
 int r = 0;


 destroy_sensitive_data();
 packet_clear_keys();


 if (s->authctxt->force_pwchange) {
  do_setusercontext(pw);
  child_close_fds(ssh);
  do_pwchange(s);
  exit(1);
 }
 if (!options.use_pam)
  do_nologin(pw);
 do_setusercontext(pw);





 if (!check_quietlogin(s, command))
  display_loginmsg();
 shell = (pw->pw_shell[0] == '\0') ? _PATH_BSHELL : pw->pw_shell;





 env = do_setup_env(ssh, s, shell);
 child_close_fds(ssh);





 environ = env;
 if (chdir(pw->pw_dir) < 0) {




  if (r || !in_chroot) {
   fprintf(stderr, "Could not chdir to home "
       "directory %s: %s\n", pw->pw_dir,
       strerror(errno));
  }
  if (r)
   exit(1);
 }

 closefrom(STDERR_FILENO + 1);

 do_rc_files(ssh, s, shell);


 signal(SIGPIPE, SIG_DFL);

 if (s->is_subsystem == SUBSYSTEM_INT_SFTP_ERROR) {
  printf("This service allows sftp connections only.\n");
  fflush(((void*)0));
  exit(1);
 } else if (s->is_subsystem == SUBSYSTEM_INT_SFTP) {
  extern int optind, optreset;
  int i;
  char *p, *args;

  setproctitle("%s@%s", s->pw->pw_name, INTERNAL_SFTP_NAME);
  args = xstrdup(command ? command : "sftp-server");
  for (i = 0, (p = strtok(args, " ")); p; (p = strtok(((void*)0), " ")))
   if (i < ARGV_MAX - 1)
    argv[i++] = p;
  argv[i] = ((void*)0);
  optind = optreset = 1;
  __progname = argv[0];



  exit(sftp_server_main(i, argv, s->pw));
 }

 fflush(((void*)0));


 if ((shell0 = strrchr(shell, '/')) != ((void*)0))
  shell0++;
 else
  shell0 = shell;






 if (!command) {
  char argv0[256];


  argv0[0] = '-';

  if (strlcpy(argv0 + 1, shell0, sizeof(argv0) - 1)
      >= sizeof(argv0) - 1) {
   errno = EINVAL;
   perror(shell);
   exit(1);
  }


  argv[0] = argv0;
  argv[1] = ((void*)0);
  execve(shell, argv, env);


  perror(shell);
  exit(1);
 }




 argv[0] = (char *) shell0;
 argv[1] = "-c";
 argv[2] = (char *) command;
 argv[3] = ((void*)0);
 execve(shell, argv, env);
 perror(shell);
 exit(1);
}
