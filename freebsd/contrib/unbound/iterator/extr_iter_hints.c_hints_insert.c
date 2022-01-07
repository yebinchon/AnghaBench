
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct iter_hints_stub {int node; scalar_t__ noprime; struct delegpt* dp; } ;
struct iter_hints {int tree; } ;
struct delegpt {int name; int namelabs; int namelen; } ;


 int delegpt_free_mlc (struct delegpt*) ;
 int dname_str (int ,char*) ;
 int free (struct iter_hints_stub*) ;
 int log_err (char*,char*) ;
 scalar_t__ malloc (int) ;
 int name_tree_insert (int *,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int
hints_insert(struct iter_hints* hints, uint16_t c, struct delegpt* dp,
 int noprime)
{
 struct iter_hints_stub* node = (struct iter_hints_stub*)malloc(
  sizeof(struct iter_hints_stub));
 if(!node) {
  delegpt_free_mlc(dp);
  return 0;
 }
 node->dp = dp;
 node->noprime = (uint8_t)noprime;
 if(!name_tree_insert(&hints->tree, &node->node, dp->name, dp->namelen,
  dp->namelabs, c)) {
  char buf[257];
  dname_str(dp->name, buf);
  log_err("second hints for zone %s ignored.", buf);
  delegpt_free_mlc(dp);
  free(node);
 }
 return 1;
}
