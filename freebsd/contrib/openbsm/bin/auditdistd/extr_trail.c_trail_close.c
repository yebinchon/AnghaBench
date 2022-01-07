
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_filefd; char* tr_filename; } ;


 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 scalar_t__ TRAIL_MAGIC ;
 scalar_t__ close (int) ;

void
trail_close(struct trail *trail)
{

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);
 PJDLOG_ASSERT(trail->tr_filefd >= 0);
 PJDLOG_ASSERT(trail->tr_filename[0] != '\0');

 PJDLOG_VERIFY(close(trail->tr_filefd) == 0);
 trail->tr_filefd = -1;
}
