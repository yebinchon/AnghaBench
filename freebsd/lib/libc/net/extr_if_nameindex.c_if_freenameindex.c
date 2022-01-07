
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_nameindex {int dummy; } ;


 int free (struct if_nameindex*) ;

void
if_freenameindex(struct if_nameindex *ptr)
{
 free(ptr);
}
