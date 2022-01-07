
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct archive_read {int dummy; } ;
typedef int ssize_t ;


 int * __archive_read_ahead (struct archive_read*,size_t,int*) ;

__attribute__((used)) static int read_ahead(struct archive_read* a, size_t how_many,
    const uint8_t** ptr)
{
 if(!ptr)
  return 0;

 ssize_t avail = -1;
 *ptr = __archive_read_ahead(a, how_many, &avail);
 if(*ptr == ((void*)0)) {
  return 0;
 }

 return 1;
}
