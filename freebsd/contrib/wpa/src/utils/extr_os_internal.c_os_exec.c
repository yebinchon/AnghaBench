
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int MSG_ERROR ;
 int errno ;
 int execv (char const*,char**) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (char const*) ;
 int strerror (int ) ;
 int waitpid (scalar_t__,int*,int ) ;
 int wpa_printf (int ,char*,int ) ;

int os_exec(const char *program, const char *arg, int wait_completion)
{
 pid_t pid;
 int pid_status;

 pid = fork();
 if (pid < 0) {
  wpa_printf(MSG_ERROR, "fork: %s", strerror(errno));
  return -1;
 }

 if (pid == 0) {

  const int MAX_ARG = 30;
  char *_program, *_arg, *pos;
  char *argv[MAX_ARG + 1];
  int i;

  _program = os_strdup(program);
  _arg = os_strdup(arg);

  argv[0] = _program;

  i = 1;
  pos = _arg;
  while (i < MAX_ARG && pos && *pos) {
   while (*pos == ' ')
    pos++;
   if (*pos == '\0')
    break;
   argv[i++] = pos;
   pos = os_strchr(pos, ' ');
   if (pos)
    *pos++ = '\0';
  }
  argv[i] = ((void*)0);

  execv(program, argv);
  wpa_printf(MSG_ERROR, "execv: %s", strerror(errno));
  os_free(_program);
  os_free(_arg);
  exit(0);
  return -1;
 }

 if (wait_completion) {

  waitpid(pid, &pid_status, 0);
 }

 return 0;
}
