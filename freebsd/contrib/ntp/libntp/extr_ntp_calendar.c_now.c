
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int stub1 (int *) ;
 int systime_func (int *) ;

__attribute__((used)) static inline time_t
now(void)
{
 return (*systime_func)(((void*)0));
}
