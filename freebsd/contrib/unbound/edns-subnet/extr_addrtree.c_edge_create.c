
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrnode {struct addredge** edge; struct addredge* parent_edge; } ;
struct addredge {int len; int parent_index; int * str; struct addrnode* parent_node; struct addrnode* node; } ;
typedef int addrlen_t ;
typedef int addrkey_t ;


 int KEYWIDTH ;
 scalar_t__ calloc (size_t,int) ;
 int free (struct addredge*) ;
 int log_assert (int ) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static struct addredge *
edge_create(struct addrnode *node, const addrkey_t *addr,
 addrlen_t addrlen, struct addrnode *parent_node, int parent_index)
{
 size_t n;
 struct addredge *edge = (struct addredge *)malloc( sizeof (*edge) );
 if (!edge)
  return ((void*)0);
 edge->node = node;
 edge->len = addrlen;
 edge->parent_index = parent_index;
 edge->parent_node = parent_node;

 n = (size_t)((addrlen / KEYWIDTH) + ((addrlen % KEYWIDTH != 0)?1:0));
 edge->str = (addrkey_t *)calloc(n, sizeof (addrkey_t));
 if (!edge->str) {
  free(edge);
  return ((void*)0);
 }
 memcpy(edge->str, addr, n * sizeof (addrkey_t));

 node->parent_edge = edge;
 log_assert(parent_node->edge[parent_index] == ((void*)0));
 parent_node->edge[parent_index] = edge;
 return edge;
}
