
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int Q_ (char*,char*,int) ;
 char const* apr_psprintf (int *,int ,int) ;

__attribute__((used)) static const char *
remaining_str(apr_pool_t *pool, int n_remaining)
{
  return apr_psprintf(pool, Q_("%d remaining",
                               "%d remaining",
                               n_remaining),
                      n_remaining);
}
