
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_dirfp; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TRAIL_MAGIC ;
 int dirfd (int ) ;

int
trail_dirfd(const struct trail *trail)
{

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);

 return (dirfd(trail->tr_dirfp));
}
