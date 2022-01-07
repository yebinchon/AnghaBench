
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; } ;
typedef TYPE_1__ HistEvent ;


 int EINVAL ;
 int H_GETSIZE ;
 int H_LOAD ;
 char* _default_history_file () ;
 int * e ;
 int errno ;
 int * h ;
 int history (int *,TYPE_1__*,int ,...) ;
 scalar_t__ history_length ;
 int rl_initialize () ;

int
read_history(const char *filename)
{
 HistEvent ev;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();
 if (filename == ((void*)0) && (filename = _default_history_file()) == ((void*)0))
  return errno;
 errno = 0;
 if (history(h, &ev, H_LOAD, filename) == -1)
     return errno ? errno : EINVAL;
 if (history(h, &ev, H_GETSIZE) == 0)
  history_length = ev.num;
 if (history_length < 0)
  return EINVAL;
 return 0;
}
