
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closefrom (int) ;
 int closercv ;
 int closermtx ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int quit ;
 int random () ;
 scalar_t__ riseandwhine ;
 int usleep (int) ;

__attribute__((used)) static void *
closer(void *arg)
{

 pthread_mutex_lock(&closermtx);
 while (!quit) {
  while (!riseandwhine)
   pthread_cond_wait(&closercv, &closermtx);
  riseandwhine = 0;
  pthread_mutex_unlock(&closermtx);


  usleep(random() % 100000);





  closefrom(3);

  pthread_mutex_lock(&closermtx);
 }
 pthread_mutex_unlock(&closermtx);

 return ((void*)0);
}
