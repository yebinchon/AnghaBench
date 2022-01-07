
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_filefd; char* tr_filename; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TRAIL_MAGIC ;

void
trail_reset(struct trail *trail)
{

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);
 PJDLOG_ASSERT(trail->tr_filefd == -1);

 trail->tr_filename[0] = '\0';
}
