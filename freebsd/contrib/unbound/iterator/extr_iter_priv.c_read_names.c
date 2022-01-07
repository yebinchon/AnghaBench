
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct name_tree_node {int dummy; } ;
struct iter_priv {int n; int region; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* private_domain; } ;


 int LDNS_RR_CLASS_IN ;
 int VERB_QUERY ;
 int dname_count_size_labels (int *,size_t*) ;
 int free (int *) ;
 int log_assert (int ) ;
 int log_err (char*,...) ;
 int name_tree_insert (int *,struct name_tree_node*,int *,size_t,int,int ) ;
 scalar_t__ regional_alloc (int ,int) ;
 scalar_t__ regional_alloc_init (int ,int *,size_t) ;
 int * sldns_str2wire_dname (int ,size_t*) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static int read_names(struct iter_priv* priv, struct config_file* cfg)
{

 struct config_strlist* p;
 struct name_tree_node* n;
 uint8_t* nm, *nmr;
 size_t nm_len;
 int nm_labs;

 for(p = cfg->private_domain; p; p = p->next) {
  log_assert(p->str);
  nm = sldns_str2wire_dname(p->str, &nm_len);
  if(!nm) {
   log_err("cannot parse private-domain: %s", p->str);
   return 0;
  }
  nm_labs = dname_count_size_labels(nm, &nm_len);
  nmr = (uint8_t*)regional_alloc_init(priv->region, nm, nm_len);
  free(nm);
  if(!nmr) {
   log_err("out of memory");
   return 0;
  }
  n = (struct name_tree_node*)regional_alloc(priv->region,
   sizeof(*n));
  if(!n) {
   log_err("out of memory");
   return 0;
  }
  if(!name_tree_insert(&priv->n, n, nmr, nm_len, nm_labs,
   LDNS_RR_CLASS_IN)) {
   verbose(VERB_QUERY, "ignoring duplicate "
    "private-domain: %s", p->str);
  }
 }
 return 1;
}
