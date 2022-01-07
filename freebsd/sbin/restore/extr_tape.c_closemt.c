
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ host ;
 scalar_t__ mt ;
 int pclose (int *) ;
 scalar_t__ pipecmdin ;
 int * popenfp ;
 int rmtclose () ;

void
closemt(void)
{

 if (mt < 0)
  return;
 if (pipecmdin) {
  pclose(popenfp);
  popenfp = ((void*)0);
 } else





  (void) close(mt);
}
