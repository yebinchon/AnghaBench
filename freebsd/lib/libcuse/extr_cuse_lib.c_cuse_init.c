
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;


 int CUSE_ERR_INVALID ;
 int CUSE_ERR_NOT_LOADED ;
 int O_RDWR ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int TAILQ_INIT (int *) ;
 scalar_t__ f_cuse ;
 scalar_t__ feature_present (char*) ;
 int h_cuse ;
 int h_cuse_entered ;
 int m_cuse ;
 scalar_t__ open (char*,int ) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

int
cuse_init(void)
{
 pthread_mutexattr_t attr;

 f_cuse = open("/dev/cuse", O_RDWR);
 if (f_cuse < 0) {
  if (feature_present("cuse") == 0)
   return (CUSE_ERR_NOT_LOADED);
  else
   return (CUSE_ERR_INVALID);
 }
 pthread_mutexattr_init(&attr);
 pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);
 pthread_mutex_init(&m_cuse, &attr);

 TAILQ_INIT(&h_cuse);
 TAILQ_INIT(&h_cuse_entered);

 return (0);
}
