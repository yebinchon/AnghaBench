
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpm {int state; } ;
struct archive_read_filter {char* name; struct rpm* data; TYPE_1__* archive; int close; int * skip; int read; int code; } ;
struct TYPE_2__ {int archive; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_RPM ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int ST_LEAD ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int rpm_filter_close ;
 int rpm_filter_read ;

__attribute__((used)) static int
rpm_bidder_init(struct archive_read_filter *self)
{
 struct rpm *rpm;

 self->code = ARCHIVE_FILTER_RPM;
 self->name = "rpm";
 self->read = rpm_filter_read;
 self->skip = ((void*)0);
 self->close = rpm_filter_close;

 rpm = (struct rpm *)calloc(sizeof(*rpm), 1);
 if (rpm == ((void*)0)) {
  archive_set_error(&self->archive->archive, ENOMEM,
      "Can't allocate data for rpm");
  return (ARCHIVE_FATAL);
 }

 self->data = rpm;
 rpm->state = ST_LEAD;

 return (ARCHIVE_OK);
}
