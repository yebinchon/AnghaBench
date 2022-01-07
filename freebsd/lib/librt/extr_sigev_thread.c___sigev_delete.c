
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigev_node {int dummy; } ;
typedef int sigev_id_t ;


 int __sigev_delete_node (struct sigev_node*) ;
 struct sigev_node* __sigev_find (int,int ) ;

int
__sigev_delete(int type, sigev_id_t id)
{
 struct sigev_node *sn;

 sn = __sigev_find(type, id);
 if (sn != ((void*)0))
  return (__sigev_delete_node(sn));
 return (0);
}
