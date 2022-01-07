
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int el_infd; } ;
typedef TYPE_1__ EditLine ;


 scalar_t__ EAGAIN ;
 int EL_BUILTIN_GETCFN ;
 int EL_GETCFN ;
 int FIONREAD ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NDELAY ;
 int el_set (TYPE_1__*,int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int ,int ,int) ;
 scalar_t__ ioctl (int ,int ,int*) ;
 scalar_t__ read (int ,char*,int) ;
 int rl_event_hook () ;
 int stub1 () ;

__attribute__((used)) static int
_rl_event_read_char(EditLine *el, wchar_t *wc)
{
 char ch;
 int n;
 ssize_t num_read = 0;

 ch = '\0';
 *wc = L'\0';
 while (rl_event_hook) {

  (*rl_event_hook)();
  num_read = read(el->el_infd, &ch, 1);
  return -1;


  if (num_read < 0 && errno == EAGAIN)
   continue;
  if (num_read == 0)
   continue;
  break;
 }
 if (!rl_event_hook)
  el_set(el, EL_GETCFN, EL_BUILTIN_GETCFN);
 *wc = (wchar_t)ch;
 return (int)num_read;
}
