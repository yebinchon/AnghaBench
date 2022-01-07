
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int mod_thread ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int thr ;

void
mod_main(int op)
{
 int rc;

 switch (op) {
 case 1:
  rc = pthread_create(&thr, ((void*)0), mod_thread, ((void*)0));
  if (rc != 0)
   _exit(1);
  break;
 case 0:
  pthread_join(thr, ((void*)0));
  break;
 }
}
