
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex_attr {int dummy; } ;
struct pthread_mutex {int dummy; } ;
typedef struct pthread_mutex* pthread_mutex_t ;


 int ENOMEM ;
 struct pthread_mutex_attr _pthread_mutexattr_default ;
 int mutex_check_attr (struct pthread_mutex_attr const*) ;
 int mutex_init_body (struct pthread_mutex*,struct pthread_mutex_attr const*) ;

__attribute__((used)) static int
mutex_init(pthread_mutex_t *mutex,
    const struct pthread_mutex_attr *mutex_attr,
    void *(calloc_cb)(size_t, size_t))
{
 const struct pthread_mutex_attr *attr;
 struct pthread_mutex *pmutex;
 int error;

 if (mutex_attr == ((void*)0)) {
  attr = &_pthread_mutexattr_default;
 } else {
  attr = mutex_attr;
  error = mutex_check_attr(attr);
  if (error != 0)
   return (error);
 }
 if ((pmutex = (pthread_mutex_t)
  calloc_cb(1, sizeof(struct pthread_mutex))) == ((void*)0))
  return (ENOMEM);
 mutex_init_body(pmutex, attr);
 *mutex = pmutex;
 return (0);
}
