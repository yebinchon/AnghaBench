
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mq_attr {int dummy; } ;
struct __mq {int oshandle; int * node; } ;
typedef struct __mq* mqd_t ;
typedef int mode_t ;


 int __sys_kmq_open (char const*,int,int ,struct mq_attr const*) ;
 int errno ;
 int free (struct __mq*) ;
 struct __mq* malloc (int) ;

mqd_t
__mq_open(const char *name, int oflag, mode_t mode,
 const struct mq_attr *attr)
{
 struct __mq *mq;
 int err;

 mq = malloc(sizeof(struct __mq));
 if (mq == ((void*)0))
  return (((void*)0));

 mq->oshandle = __sys_kmq_open(name, oflag, mode, attr);
 if (mq->oshandle != -1) {
  mq->node = ((void*)0);
  return (mq);
 }
 err = errno;
 free(mq);
 errno = err;
 return ((mqd_t)-1L);
}
