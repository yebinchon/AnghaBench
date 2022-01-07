
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ __archive_read_consume (struct archive_read*,scalar_t__) ;

__attribute__((used)) static int consume(struct archive_read* a, int64_t how_many) {
 int ret;

 ret = how_many == __archive_read_consume(a, how_many)
  ? ARCHIVE_OK
  : ARCHIVE_FATAL;

 return ret;
}
