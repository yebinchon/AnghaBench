
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * changed_paths2; int * changed_paths; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_cl__log_entry_receiver (void*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
print_log_details(void *baton,
                  svn_log_entry_t *log_entry,
                  apr_pool_t *pool)
{
  log_entry->changed_paths = ((void*)0);
  log_entry->changed_paths2 = ((void*)0);

  return svn_cl__log_entry_receiver(baton, log_entry, pool);
}
