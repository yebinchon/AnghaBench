
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnup_node {int rank; int * sw; } ;
typedef int osm_switch_t ;


 struct dnup_node* malloc (int) ;
 int memset (struct dnup_node*,int ,int) ;

__attribute__((used)) static struct dnup_node *create_dnup_node(osm_switch_t * sw)
{
 struct dnup_node *u;

 u = malloc(sizeof(*u));
 if (!u)
  return ((void*)0);
 memset(u, 0, sizeof(*u));
 u->sw = sw;
 u->rank = 0xffffffff;
 return u;
}
