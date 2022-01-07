
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int logkey ;
 int ub_thread_key_set (int ,int*) ;

void log_thread_set(int* num)
{
 ub_thread_key_set(logkey, num);
}
