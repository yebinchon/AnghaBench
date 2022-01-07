
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ctl_softc {int io_zone; } ;
struct ctl_io_pool {int zone; int name; struct ctl_softc* ctl_softc; } ;


 int ENOMEM ;
 int M_CTL ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ malloc (int,int ,int) ;
 int snprintf (int ,int,char*,char const*) ;
 int uma_zsecond_create (int ,int *,int *,int *,int *,int ) ;

int
ctl_pool_create(struct ctl_softc *ctl_softc, const char *pool_name,
  uint32_t total_ctl_io, void **npool)
{
 struct ctl_io_pool *pool;

 pool = (struct ctl_io_pool *)malloc(sizeof(*pool), M_CTL,
         M_NOWAIT | M_ZERO);
 if (pool == ((void*)0))
  return (ENOMEM);

 snprintf(pool->name, sizeof(pool->name), "CTL IO %s", pool_name);
 pool->ctl_softc = ctl_softc;





 pool->zone = ctl_softc->io_zone;


 *npool = pool;
 return (0);
}
