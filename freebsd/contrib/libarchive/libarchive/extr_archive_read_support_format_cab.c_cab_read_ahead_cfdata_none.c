
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfdata {scalar_t__ uncompressed_bytes_remaining; void const* sum_ptr; scalar_t__ unconsumed; int uncompressed_size; int uncompressed_avail; } ;
struct cab {struct cfdata* entry_cfdata; } ;
struct archive_read {TYPE_1__* format; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 void* __archive_read_ahead (struct archive_read*,int,scalar_t__*) ;
 scalar_t__ truncated_error (struct archive_read*) ;

__attribute__((used)) static const void *
cab_read_ahead_cfdata_none(struct archive_read *a, ssize_t *avail)
{
 struct cab *cab = (struct cab *)(a->format->data);
 struct cfdata *cfdata;
 const void *d;

 cfdata = cab->entry_cfdata;







 d = __archive_read_ahead(a, 1, avail);
 if (*avail <= 0) {
  *avail = truncated_error(a);
  return (((void*)0));
 }
 if (*avail > cfdata->uncompressed_bytes_remaining)
  *avail = cfdata->uncompressed_bytes_remaining;
 cfdata->uncompressed_avail = cfdata->uncompressed_size;
 cfdata->unconsumed = *avail;
 cfdata->sum_ptr = d;
 return (d);
}
