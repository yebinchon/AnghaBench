
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct auth_zone {scalar_t__ dclass; int data; } ;
struct auth_data {int * rrsets; } ;


 int auth_data_delete (struct auth_data*) ;
 int az_domain_remove_rr (struct auth_data*,scalar_t__,int *,size_t,int*) ;
 struct auth_data* az_find_name (struct auth_zone*,int *,size_t) ;
 int log_err (char*) ;
 int rbtree_delete (int *,struct auth_data*) ;
 scalar_t__ sldns_wirerr_get_class (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_rdatalen (int *,size_t,size_t) ;
 int * sldns_wirerr_get_rdatawl (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,size_t) ;

__attribute__((used)) static int
az_remove_rr(struct auth_zone* z, uint8_t* rr, size_t rr_len,
 size_t dname_len, int* nonexist)
{
 struct auth_data* node;
 uint8_t* dname = rr;
 uint16_t rr_type = sldns_wirerr_get_type(rr, rr_len, dname_len);
 uint16_t rr_class = sldns_wirerr_get_class(rr, rr_len, dname_len);
 size_t rdatalen = ((size_t)sldns_wirerr_get_rdatalen(rr, rr_len,
  dname_len))+2;

 uint8_t* rdata = sldns_wirerr_get_rdatawl(rr, rr_len, dname_len);

 if(rr_class != z->dclass) {
  log_err("wrong class for RR");




  return 0;
 }
 node = az_find_name(z, dname, dname_len);
 if(!node) {


  *nonexist = 1;
  return 1;
 }
 if(!az_domain_remove_rr(node, rr_type, rdata, rdatalen, nonexist)) {

  return 0;
 }



 if(node->rrsets == ((void*)0)) {
  (void)rbtree_delete(&z->data, node);
  auth_data_delete(node);
 }
 return 1;
}
