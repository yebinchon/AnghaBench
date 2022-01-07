
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {size_t namelen; int namelabs; struct iter_forward_zone* name; TYPE_1__ node; struct delegpt* dp; int dclass; } ;
struct delegpt {int dummy; } ;


 int delegpt_free_mlc (struct delegpt*) ;
 int dname_str (int *,char*) ;
 int free (struct iter_forward_zone*) ;
 int log_err (char*,char*) ;
 scalar_t__ malloc (int) ;
 struct iter_forward_zone* memdup (int *,size_t) ;
 int rbtree_insert (int ,TYPE_1__*) ;

__attribute__((used)) static int
forwards_insert_data(struct iter_forwards* fwd, uint16_t c, uint8_t* nm,
 size_t nmlen, int nmlabs, struct delegpt* dp)
{
 struct iter_forward_zone* node = (struct iter_forward_zone*)malloc(
  sizeof(struct iter_forward_zone));
 if(!node) {
  delegpt_free_mlc(dp);
  return 0;
 }
 node->node.key = node;
 node->dclass = c;
 node->name = memdup(nm, nmlen);
 if(!node->name) {
  delegpt_free_mlc(dp);
  free(node);
  return 0;
 }
 node->namelen = nmlen;
 node->namelabs = nmlabs;
 node->dp = dp;
 if(!rbtree_insert(fwd->tree, &node->node)) {
  char buf[257];
  dname_str(nm, buf);
  log_err("duplicate forward zone %s ignored.", buf);
  delegpt_free_mlc(dp);
  free(node->name);
  free(node);
 }
 return 1;
}
