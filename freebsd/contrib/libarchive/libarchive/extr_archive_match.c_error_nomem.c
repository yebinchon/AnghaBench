
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct archive_match {TYPE_1__ archive; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_STATE_FATAL ;
 int ENOMEM ;
 int archive_set_error (TYPE_1__*,int ,char*) ;

__attribute__((used)) static int
error_nomem(struct archive_match *a)
{
 archive_set_error(&(a->archive), ENOMEM, "No memory");
 a->archive.state = ARCHIVE_STATE_FATAL;
 return (ARCHIVE_FATAL);
}
