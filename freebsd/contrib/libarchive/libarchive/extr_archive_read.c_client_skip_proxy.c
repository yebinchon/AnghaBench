
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_read_filter {int position; int data; TYPE_2__* archive; } ;
typedef int int64_t ;
struct TYPE_3__ {int (* skipper ) (int *,int ,int) ;int (* seeker ) (int *,int ,int,int ) ;} ;
struct TYPE_4__ {int archive; TYPE_1__ client; } ;


 int ARCHIVE_FATAL ;
 int SEEK_CUR ;
 int __archive_errx (int,char*) ;
 int stub1 (int *,int ,int) ;
 int stub2 (int *,int ,int,int ) ;

__attribute__((used)) static int64_t
client_skip_proxy(struct archive_read_filter *self, int64_t request)
{
 if (request < 0)
  __archive_errx(1, "Negative skip requested.");
 if (request == 0)
  return 0;

 if (self->archive->client.skipper != ((void*)0)) {



  int64_t skip_limit = (int64_t)1 << 30;
  int64_t total = 0;
  for (;;) {
   int64_t get, ask = request;
   if (ask > skip_limit)
    ask = skip_limit;
   get = (self->archive->client.skipper)
    (&self->archive->archive, self->data, ask);
   total += get;
   if (get == 0 || get == request)
    return (total);
   if (get > request)
    return ARCHIVE_FATAL;
   request -= get;
  }
 } else if (self->archive->client.seeker != ((void*)0)
  && request > 64 * 1024) {
  int64_t before = self->position;
  int64_t after = (self->archive->client.seeker)
      (&self->archive->archive, self->data, request, SEEK_CUR);
  if (after != before + request)
   return ARCHIVE_FATAL;
  return after - before;
 }
 return 0;
}
