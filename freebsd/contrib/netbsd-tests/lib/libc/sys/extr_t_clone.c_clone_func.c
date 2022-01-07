
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILDEXIT ;
 long FROBVAL ;
 int fflush (int ) ;
 long getpid () ;
 long getppid () ;
 long labs (long) ;
 int printf (char*,long**,long*) ;
 int stdout ;

__attribute__((used)) static int
clone_func(void *arg)
{
 long *frobp = arg, diff;

 printf("child: stack ~= %p, frobme = %p\n", &frobp, frobp);
 fflush(stdout);

 if (frobp[0] != getppid())
  return 1;

 if (frobp[0] == getpid())
  return 2;

 diff = labs(frobp[1] - (long) &frobp);

 if (diff > 1024)
  return 3;

 frobp[1] = FROBVAL;

 return (CHILDEXIT);
}
