
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term ;
struct termios {int c_lflag; scalar_t__* c_cc; } ;
struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef int ssize_t ;
typedef int oterm ;


 int ECHO ;
 int ECHONL ;
 int EINTR ;
 int EINVAL ;
 int ENOTTY ;
 int NSIG ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int RPP_ECHO_ON ;
 int RPP_FORCELOWER ;
 int RPP_FORCEUPPER ;
 int RPP_REQUIRE_TTY ;
 int RPP_SEVENBIT ;
 int RPP_STDIN ;
 size_t SIGALRM ;
 size_t SIGHUP ;
 size_t SIGINT ;
 size_t SIGPIPE ;
 size_t SIGQUIT ;
 size_t SIGTERM ;



 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int TCSAFLUSH ;
 int TCSASOFT ;
 size_t VSTATUS ;
 int _PATH_TTY ;
 scalar_t__ _POSIX_VDISABLE ;
 int __libc_sigaction (size_t,struct sigaction*,struct sigaction*) ;
 int _close (int) ;
 int _open (int ,int) ;
 int _read (int,char*,int) ;
 int _write (int,char const*,int) ;
 int errno ;
 int getpid () ;
 int handler ;
 scalar_t__ isalpha (unsigned char) ;
 int kill (int ,int) ;
 scalar_t__ memcmp (struct termios*,struct termios*,int) ;
 int memcpy (struct termios*,struct termios*,int) ;
 int memset (struct termios*,int ,int) ;
 int sigemptyset (int *) ;
 scalar_t__* signo ;
 int strlen (char const*) ;
 scalar_t__ tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int,struct termios*) ;
 scalar_t__ tolower (unsigned char) ;
 scalar_t__ toupper (unsigned char) ;

char *
readpassphrase(const char *prompt, char *buf, size_t bufsiz, int flags)
{
 ssize_t nr;
 int input, output, save_errno, i, need_restart, input_is_tty;
 char ch, *p, *end;
 struct termios term, oterm;
 struct sigaction sa, savealrm, saveint, savehup, savequit, saveterm;
 struct sigaction savetstp, savettin, savettou, savepipe;


 if (bufsiz == 0) {
  errno = EINVAL;
  return(((void*)0));
 }

restart:
 for (i = 0; i < NSIG; i++)
  signo[i] = 0;
 nr = -1;
 save_errno = 0;
 need_restart = 0;




 input_is_tty = 0;
 if (!(flags & RPP_STDIN)) {
         input = output = _open(_PATH_TTY, O_RDWR | O_CLOEXEC);
  if (input == -1) {
   if (flags & RPP_REQUIRE_TTY) {
    errno = ENOTTY;
    return(((void*)0));
   }
   input = STDIN_FILENO;
   output = STDERR_FILENO;
  } else {
   input_is_tty = 1;
  }
 } else {
  input = STDIN_FILENO;
  output = STDERR_FILENO;
 }






 if (input_is_tty && tcgetattr(input, &oterm) == 0) {
  memcpy(&term, &oterm, sizeof(term));
  if (!(flags & RPP_ECHO_ON))
   term.c_lflag &= ~(ECHO | ECHONL);
  if (term.c_cc[VSTATUS] != _POSIX_VDISABLE)
   term.c_cc[VSTATUS] = _POSIX_VDISABLE;
  (void)tcsetattr(input, TCSAFLUSH|TCSASOFT, &term);
 } else {
  memset(&term, 0, sizeof(term));
  term.c_lflag |= ECHO;
  memset(&oterm, 0, sizeof(oterm));
  oterm.c_lflag |= ECHO;
 }






 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 sa.sa_handler = handler;
 (void)__libc_sigaction(SIGALRM, &sa, &savealrm);
 (void)__libc_sigaction(SIGHUP, &sa, &savehup);
 (void)__libc_sigaction(SIGINT, &sa, &saveint);
 (void)__libc_sigaction(SIGPIPE, &sa, &savepipe);
 (void)__libc_sigaction(SIGQUIT, &sa, &savequit);
 (void)__libc_sigaction(SIGTERM, &sa, &saveterm);
 (void)__libc_sigaction(130, &sa, &savetstp);
 (void)__libc_sigaction(129, &sa, &savettin);
 (void)__libc_sigaction(128, &sa, &savettou);

 if (!(flags & RPP_STDIN))
  (void)_write(output, prompt, strlen(prompt));
 end = buf + bufsiz - 1;
 p = buf;
 while ((nr = _read(input, &ch, 1)) == 1 && ch != '\n' && ch != '\r') {
  if (p < end) {
   if ((flags & RPP_SEVENBIT))
    ch &= 0x7f;
   if (isalpha((unsigned char)ch)) {
    if ((flags & RPP_FORCELOWER))
     ch = (char)tolower((unsigned char)ch);
    if ((flags & RPP_FORCEUPPER))
     ch = (char)toupper((unsigned char)ch);
   }
   *p++ = ch;
  }
 }
 *p = '\0';
 save_errno = errno;
 if (!(term.c_lflag & ECHO))
  (void)_write(output, "\n", 1);


 if (memcmp(&term, &oterm, sizeof(term)) != 0) {
  while (tcsetattr(input, TCSAFLUSH|TCSASOFT, &oterm) == -1 &&
      errno == EINTR && !signo[128])
   continue;
 }
 (void)__libc_sigaction(SIGALRM, &savealrm, ((void*)0));
 (void)__libc_sigaction(SIGHUP, &savehup, ((void*)0));
 (void)__libc_sigaction(SIGINT, &saveint, ((void*)0));
 (void)__libc_sigaction(SIGQUIT, &savequit, ((void*)0));
 (void)__libc_sigaction(SIGPIPE, &savepipe, ((void*)0));
 (void)__libc_sigaction(SIGTERM, &saveterm, ((void*)0));
 (void)__libc_sigaction(130, &savetstp, ((void*)0));
 (void)__libc_sigaction(129, &savettin, ((void*)0));
 (void)__libc_sigaction(128, &savettou, ((void*)0));
 if (input_is_tty)
  (void)_close(input);





 for (i = 0; i < NSIG; i++) {
  if (signo[i]) {
   kill(getpid(), i);
   switch (i) {
   case 130:
   case 129:
   case 128:
    need_restart = 1;
   }
  }
 }
 if (need_restart)
  goto restart;

 if (save_errno)
  errno = save_errno;
 return(nr == -1 ? ((void*)0) : buf);
}
