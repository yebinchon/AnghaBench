
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const svn_boolean_t ;
typedef int svn_atomic_t ;
typedef int const (* init_func_t ) (int *) ;
typedef int init_baton_t ;


 int APR_USEC_PER_SEC ;
 int const FALSE ;




 int const TRUE ;
 int abort () ;
 int apr_sleep (int) ;
 int svn_atomic_cas (int volatile*,int const,int const) ;

__attribute__((used)) static svn_boolean_t
init_once(volatile svn_atomic_t *global_status,
          init_func_t init_func, init_baton_t *init_baton)
{
  svn_atomic_t status = svn_atomic_cas(global_status,
                                       129,
                                       128);

  for (;;)
    {
      switch (status)
        {
        case 128:
          {
            const svn_boolean_t result = init_func(init_baton);
            const svn_atomic_t init_state = (result
                                             ? 131
                                             : 130);

            svn_atomic_cas(global_status, init_state,
                           129);
            return result;
          }

        case 129:

          apr_sleep(APR_USEC_PER_SEC / 1000);
          status = svn_atomic_cas(global_status,
                                  128,
                                  128);
          continue;

        case 130:
          return FALSE;

        case 131:
          return TRUE;

        default:

          abort();
        }
    }
}
