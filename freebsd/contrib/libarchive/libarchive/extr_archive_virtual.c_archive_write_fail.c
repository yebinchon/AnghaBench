
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int state; } ;


 int ARCHIVE_STATE_FATAL ;

int
archive_write_fail(struct archive *a)
{
 a->state = ARCHIVE_STATE_FATAL;
 return a->state;
}
