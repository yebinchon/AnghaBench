
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* report_desc_t ;
struct TYPE_4__ {unsigned int size; int data; } ;


 int ENOMEM ;
 int errno ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,unsigned char*,unsigned int) ;

report_desc_t
hid_use_report_desc(unsigned char *data, unsigned int size)
{
 report_desc_t r;

 r = malloc(sizeof(*r) + size);
 if (r == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }
 r->size = size;
 memcpy(r->data, data, size);
 return (r);
}
