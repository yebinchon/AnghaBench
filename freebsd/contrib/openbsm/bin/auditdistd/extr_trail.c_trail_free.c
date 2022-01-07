
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_filefd; int tr_dirfp; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TRAIL_MAGIC ;
 int bzero (struct trail*,int) ;
 int closedir (int ) ;
 int free (struct trail*) ;
 int trail_close (struct trail*) ;

void
trail_free(struct trail *trail)
{

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);

 if (trail->tr_filefd != -1)
  trail_close(trail);
 closedir(trail->tr_dirfp);
 bzero(trail, sizeof(*trail));
 trail->tr_magic = 0;
 trail->tr_filefd = -1;
 free(trail);
}
