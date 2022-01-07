
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; char const* tr_filename; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TRAIL_MAGIC ;

const char *
trail_filename(const struct trail *trail)
{

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);

 return (trail->tr_filename);
}
