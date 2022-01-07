
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_tree_node {struct name_tree_node* name; int dclass; int labs; int len; } ;
struct dns64_env {int ignore_aaaa; } ;


 int LDNS_RR_CLASS_IN ;
 scalar_t__ calloc (int,int) ;
 int dname_count_labels (struct name_tree_node*) ;
 int free (struct name_tree_node*) ;
 int log_err (char*,...) ;
 int name_tree_insert (int *,struct name_tree_node*,struct name_tree_node*,int ,int ,int ) ;
 struct name_tree_node* sldns_str2wire_dname (char*,int *) ;

__attribute__((used)) static int
dns64_insert_ignore_aaaa(struct dns64_env* dns64_env, char* str)
{

 struct name_tree_node* node;
 node = (struct name_tree_node*)calloc(1, sizeof(*node));
 if(!node) {
  log_err("out of memory");
  return 0;
 }
 node->name = sldns_str2wire_dname(str, &node->len);
 if(!node->name) {
  free(node);
  log_err("cannot parse dns64-ignore-aaaa: %s", str);
  return 0;
 }
 node->labs = dname_count_labels(node->name);
 node->dclass = LDNS_RR_CLASS_IN;
 if(!name_tree_insert(&dns64_env->ignore_aaaa, node,
  node->name, node->len, node->labs, node->dclass)) {

  free(node->name);
  free(node);
  return 1;
 }
 return 1;
}
