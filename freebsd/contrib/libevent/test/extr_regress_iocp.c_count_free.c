
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTHREAD_FREE_COND (int ) ;
 int EVTHREAD_FREE_LOCK (int ,int ) ;
 int count_cond ;
 int count_lock ;

__attribute__((used)) static void
count_free(void)
{
 EVTHREAD_FREE_LOCK(count_lock, 0);
 EVTHREAD_FREE_COND(count_cond);
}
