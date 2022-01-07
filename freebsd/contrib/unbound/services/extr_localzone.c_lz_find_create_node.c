
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct local_zone {int namelabs; int data; int region; } ;
struct TYPE_2__ {struct local_data* key; } ;
struct local_data {size_t namelen; int namelabs; TYPE_1__ node; int name; } ;


 int dname_remove_label (int **,size_t*) ;
 int log_assert (int ) ;
 int log_err (char*) ;
 struct local_data* lz_find_node (struct local_zone*,int *,size_t,int) ;
 int rbtree_insert (int *,TYPE_1__*) ;
 int regional_alloc_init (int ,int *,size_t) ;
 scalar_t__ regional_alloc_zero (int ,int) ;

__attribute__((used)) static int
lz_find_create_node(struct local_zone* z, uint8_t* nm, size_t nmlen,
 int nmlabs, struct local_data** res)
{
 struct local_data* ld = lz_find_node(z, nm, nmlen, nmlabs);
 if(!ld) {

  ld = (struct local_data*)regional_alloc_zero(z->region,
   sizeof(*ld));
  if(!ld) {
   log_err("out of memory adding local data");
   return 0;
  }
  ld->node.key = ld;
  ld->name = regional_alloc_init(z->region, nm, nmlen);
  if(!ld->name) {
   log_err("out of memory");
   return 0;
  }
  ld->namelen = nmlen;
  ld->namelabs = nmlabs;
  if(!rbtree_insert(&z->data, &ld->node)) {
   log_assert(0);
  }

  if(nmlabs > z->namelabs) {
   dname_remove_label(&nm, &nmlen);
   if(!lz_find_create_node(z, nm, nmlen, nmlabs-1, res))
    return 0;
  }
 }
 *res = ld;
 return 1;
}
