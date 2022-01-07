
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int free (void*) ;

__attribute__((used)) static apr_status_t
apr_free_cleanup(void *arg)
{
  free(arg);

  return 0;
}
