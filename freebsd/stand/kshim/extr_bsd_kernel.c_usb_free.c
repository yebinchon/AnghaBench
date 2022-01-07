
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_hdr {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct malloc_hdr*,int ) ;
 int entry ;
 int malloc_head ;

void
usb_free(void *arg)
{
 struct malloc_hdr *hdr;

 if (arg == ((void*)0))
  return;

 hdr = arg;
 hdr--;

 TAILQ_INSERT_TAIL(&malloc_head, hdr, entry);
}
