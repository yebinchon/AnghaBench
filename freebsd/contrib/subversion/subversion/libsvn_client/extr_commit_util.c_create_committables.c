
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* by_path; void* by_repository; } ;
typedef TYPE_1__ svn_client__committables_t ;
typedef int apr_pool_t ;


 void* apr_hash_make (int *) ;
 TYPE_1__* apr_palloc (int *,int) ;

__attribute__((used)) static void
create_committables(svn_client__committables_t **committables,
                    apr_pool_t *pool)
{
  *committables = apr_palloc(pool, sizeof(**committables));

  (*committables)->by_repository = apr_hash_make(pool);
  (*committables)->by_path = apr_hash_make(pool);
}
