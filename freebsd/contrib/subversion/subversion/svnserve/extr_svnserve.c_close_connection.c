
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; int ref_count; } ;
typedef TYPE_1__ connection_t ;


 scalar_t__ svn_atomic_dec (int *) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static void
close_connection(connection_t *connection)
{

  if (svn_atomic_dec(&connection->ref_count) == 0)
    svn_pool_destroy(connection->pool);
}
