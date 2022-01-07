
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_io_pool {int zone; } ;


 int M_CTL ;
 int free (struct ctl_io_pool*,int ) ;
 int uma_zdestroy (int ) ;

void
ctl_pool_free(struct ctl_io_pool *pool)
{

 if (pool == ((void*)0))
  return;




 free(pool, M_CTL);
}
