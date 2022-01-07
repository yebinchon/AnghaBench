
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;


 int EINVAL ;
 int H_SAVE ;
 char* _default_history_file () ;
 int * e ;
 int errno ;
 int * h ;
 int history (int *,int *,int ,char const*) ;
 int rl_initialize () ;

int
write_history(const char *filename)
{
 HistEvent ev;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();
 if (filename == ((void*)0) && (filename = _default_history_file()) == ((void*)0))
  return errno;
 return history(h, &ev, H_SAVE, filename) == -1 ?
     (errno ? errno : EINVAL) : 0;
}
