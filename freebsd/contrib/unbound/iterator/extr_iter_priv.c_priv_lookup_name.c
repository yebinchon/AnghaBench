
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iter_priv {int n; } ;
typedef int sldns_buffer ;
typedef int decomp ;


 int dname_count_size_labels (int *,size_t*) ;
 int dname_pkt_copy (int *,int *,int *) ;
 int log_assert (int) ;
 int * name_tree_lookup (int *,int *,size_t,int,int ) ;

__attribute__((used)) static int
priv_lookup_name(struct iter_priv* priv, sldns_buffer* pkt,
 uint8_t* name, size_t name_len, uint16_t dclass)
{
 size_t len;
 uint8_t decomp[256];
 int labs;
 if(name_len >= sizeof(decomp))
  return 0;
 dname_pkt_copy(pkt, decomp, name);
 labs = dname_count_size_labels(decomp, &len);
 log_assert(name_len == len);
 return name_tree_lookup(&priv->n, decomp, len, labs, dclass) != ((void*)0);
}
