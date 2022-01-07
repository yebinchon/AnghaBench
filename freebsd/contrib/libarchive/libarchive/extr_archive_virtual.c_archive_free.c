
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* archive_free ) (struct archive*) ;} ;


 int ARCHIVE_OK ;
 int stub1 (struct archive*) ;

int
archive_free(struct archive *a)
{
 if (a == ((void*)0))
  return (ARCHIVE_OK);
 return ((a->vtable->archive_free)(a));
}
