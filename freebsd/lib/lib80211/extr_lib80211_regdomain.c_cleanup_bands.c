
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netband {int dummy; } ;
typedef int netband_head ;


 struct netband* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct netband*,int ) ;
 int free (struct netband*) ;
 int next ;

__attribute__((used)) static void
cleanup_bands(netband_head *head)
{
 struct netband *nb;

 for (;;) {
  nb = LIST_FIRST(head);
  if (nb == ((void*)0))
   break;
  LIST_REMOVE(nb, next);
  free(nb);
 }
}
