
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int filter; } ;
typedef int int64_t ;


 int __archive_read_filter_consume (int ,int ) ;

int64_t
__archive_read_consume(struct archive_read *a, int64_t request)
{
 return (__archive_read_filter_consume(a->filter, request));
}
