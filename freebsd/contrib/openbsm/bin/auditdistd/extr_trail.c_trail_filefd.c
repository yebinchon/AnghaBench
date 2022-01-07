
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_filefd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TRAIL_MAGIC ;

int
trail_filefd(const struct trail *trail)
{

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);

 return (trail->tr_filefd);
}
