
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thrd_param {int arg; scalar_t__ (* func ) (int ) ;} ;


 int free (void*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static void *
thrd_entry(void *arg)
{
 struct thrd_param tp;

 tp = *(struct thrd_param *)arg;
 free(arg);
 return ((void *)(intptr_t)tp.func(tp.arg));
}
