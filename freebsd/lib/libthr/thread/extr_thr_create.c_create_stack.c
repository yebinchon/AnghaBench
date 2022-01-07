
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_attr {int flags; scalar_t__ guardsize_attr; int * stackaddr_attr; } ;


 int THR_STACK_USER ;
 int _thr_stack_alloc (struct pthread_attr*) ;

__attribute__((used)) static int
create_stack(struct pthread_attr *pattr)
{
 int ret;


 if ((pattr->stackaddr_attr) != ((void*)0)) {
  pattr->guardsize_attr = 0;
  pattr->flags |= THR_STACK_USER;
  ret = 0;
 }
 else
  ret = _thr_stack_alloc(pattr);
 return (ret);
}
