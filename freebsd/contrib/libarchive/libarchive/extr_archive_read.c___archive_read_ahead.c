
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int filter; } ;
typedef int ssize_t ;


 void const* __archive_read_filter_ahead (int ,size_t,int *) ;

const void *
__archive_read_ahead(struct archive_read *a, size_t min, ssize_t *avail)
{
 return (__archive_read_filter_ahead(a->filter, min, avail));
}
