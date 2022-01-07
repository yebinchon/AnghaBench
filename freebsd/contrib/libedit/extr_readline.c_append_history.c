
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;
typedef int FILE ;


 int EINVAL ;
 int H_NSAVE_FP ;
 char* _default_history_file () ;
 int * e ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * h ;
 int history (int *,int *,int ,size_t,int *) ;
 int rl_initialize () ;

int
append_history(int n, const char *filename)
{
 HistEvent ev;
 FILE *fp;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();
 if (filename == ((void*)0) && (filename = _default_history_file()) == ((void*)0))
  return errno;

 if ((fp = fopen(filename, "a")) == ((void*)0))
  return errno;

 if (history(h, &ev, H_NSAVE_FP, (size_t)n, fp) == -1) {
  int serrno = errno ? errno : EINVAL;
  fclose(fp);
  return serrno;
 }
 fclose(fp);
 return 0;
}
