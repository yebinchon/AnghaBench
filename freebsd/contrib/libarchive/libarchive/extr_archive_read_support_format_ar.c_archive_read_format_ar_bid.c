
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 void* __archive_read_ahead (struct archive_read*,int,int *) ;
 scalar_t__ memcmp (void const*,char*,int) ;

__attribute__((used)) static int
archive_read_format_ar_bid(struct archive_read *a, int best_bid)
{
 const void *h;

 (void)best_bid;





 if ((h = __archive_read_ahead(a, 8, ((void*)0))) == ((void*)0))
  return (-1);
 if (memcmp(h, "!<arch>\n", 8) == 0) {
  return (64);
 }
 return (-1);
}
