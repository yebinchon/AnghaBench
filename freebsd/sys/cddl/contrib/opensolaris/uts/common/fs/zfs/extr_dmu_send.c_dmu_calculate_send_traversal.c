
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zilog_t ;
typedef int zbookmark_phys_t ;
struct calculate_send_arg {int compressed; int uncompressed; } ;
typedef int spa_t ;
typedef int dnode_phys_t ;
typedef int blkptr_t ;


 scalar_t__ BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_GET_UCSIZE (int const*) ;
 int BP_IS_HOLE (int const*) ;

__attribute__((used)) static int
dmu_calculate_send_traversal(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 struct calculate_send_arg *space = arg;
 if (bp != ((void*)0) && !BP_IS_HOLE(bp)) {
  space->uncompressed += BP_GET_UCSIZE(bp);
  space->compressed += BP_GET_PSIZE(bp);
 }
 return (0);
}
