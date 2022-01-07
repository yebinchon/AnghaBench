
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int * __archive_read_ahead (struct archive_read*,int,int *) ;

__attribute__((used)) static int
archive_read_format_raw_bid(struct archive_read *a, int best_bid)
{
 if (best_bid < 1 && __archive_read_ahead(a, 1, ((void*)0)) != ((void*)0))
  return (1);
 return (-1);
}
