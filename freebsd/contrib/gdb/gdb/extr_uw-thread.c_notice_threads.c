
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int notice_thread ;
 int thread_iter (int ,int *) ;

__attribute__((used)) static void
notice_threads (void)
{
  thread_iter (notice_thread, ((void*)0));
}
