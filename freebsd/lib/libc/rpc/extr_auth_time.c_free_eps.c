
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int family; int proto; int uaddr; } ;
typedef TYPE_1__ endpoint ;


 int free (int ) ;

__attribute__((used)) static void
free_eps(endpoint eps[], int num)
{
 int i;

 for (i = 0; i < num; i++) {
  free(eps[i].uaddr);
  free(eps[i].proto);
  free(eps[i].family);
 }
 return;
}
