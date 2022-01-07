
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct winsize {int dummy; } ;
struct termios {int dummy; } ;
struct TYPE_4__ {int ws_col; int ws_row; } ;


 int EXIT_FAILURE ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 int TIOCGWINSZ ;
 int TTY_DEFAULT_COLS ;
 int TTY_DEFAULT_ROWS ;
 int errx (int ,char*) ;
 scalar_t__ ioctl (int,int ,TYPE_1__*) ;
 int isatty (int) ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* maxsize ;
 int memset (void*,char,int) ;
 int open (char*,int ) ;
 scalar_t__ tcgetattr (int,struct termios*) ;

__attribute__((used)) static void
tty_maxsize_update(void)
{
 int fd = STDIN_FILENO;
 struct termios t;

 if (maxsize == ((void*)0)) {
  if ((maxsize = malloc(sizeof(struct winsize))) == ((void*)0))
   errx(EXIT_FAILURE, "Out of memory?!");
  memset((void *)maxsize, '\0', sizeof(struct winsize));
 }

 if (!isatty(fd))
  fd = open("/dev/tty", O_RDONLY);
 if ((tcgetattr(fd, &t) < 0) || (ioctl(fd, TIOCGWINSZ, maxsize) < 0)) {
  maxsize->ws_row = TTY_DEFAULT_ROWS;
  maxsize->ws_col = TTY_DEFAULT_COLS;
 }
}
