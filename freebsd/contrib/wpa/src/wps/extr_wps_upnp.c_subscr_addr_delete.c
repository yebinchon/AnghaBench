
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subscr_addr {int dummy; } ;


 int os_free (struct subscr_addr*) ;

void subscr_addr_delete(struct subscr_addr *a)
{




 os_free(a);
}
