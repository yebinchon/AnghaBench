
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int __archive_read_consume (struct archive_read*,size_t) ;

__attribute__((used)) static void
tar_flush_unconsumed(struct archive_read *a, size_t *unconsumed)
{
 if (*unconsumed) {
  __archive_read_consume(a, *unconsumed);
  *unconsumed = 0;
 }
}
