
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct winsize {scalar_t__ ws_col; } ;
struct TYPE_4__ {scalar_t__ ttywidth; int start; int prefix; int size; } ;
typedef TYPE_1__ progress_t ;


 scalar_t__ DEFAULT_TTYWIDTH ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int errno ;
 int ioctl (int ,int ,struct winsize*) ;
 int memset (TYPE_1__*,int,int) ;
 int strdup (char const*) ;
 int time (int *) ;

int
progress_init(progress_t *prog, const char *prefix, uint64_t total)
{
        struct winsize winsize;
        int oerrno = errno;

 (void) memset(prog, 0x0, sizeof(*prog));
 prog->size = total;
 prog->prefix = strdup(prefix);
 prog->start = time(((void*)0));
        if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &winsize) != -1 &&
            winsize.ws_col != 0) {
                prog->ttywidth = winsize.ws_col;
        } else {
                prog->ttywidth = DEFAULT_TTYWIDTH;
 }
        errno = oerrno;
 return 1;
}
