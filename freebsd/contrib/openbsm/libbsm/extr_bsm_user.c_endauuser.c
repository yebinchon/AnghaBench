
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * fp ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
endauuser(void)
{




 if (fp != ((void*)0)) {
  fclose(fp);
  fp = ((void*)0);
 }



}
