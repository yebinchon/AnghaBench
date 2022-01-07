
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_interval_time_t ;
typedef int apr_file_t ;


 int apr_file_pipe_timeout_set (int *,int ) ;

__attribute__((used)) static void
file_timeout_cb(void *baton, apr_interval_time_t interval)
{
  apr_file_t *f = baton;

  if (f)
    apr_file_pipe_timeout_set(f, interval);
}
