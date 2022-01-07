
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_neg_zone {scalar_t__ labs; int len; int name; int nsec3_saltlen; int nsec3_salt; int nsec3_iter; int nsec3_hash; } ;
struct val_neg_data {scalar_t__ in_use; } ;
typedef int sldns_buffer ;
typedef int hashce ;
typedef int b32 ;


 int NSEC3_SHA_LEN ;
 int dname_remove_label (int **,size_t*) ;
 int memmove (int *,int *,size_t) ;
 struct val_neg_data* neg_find_data (struct val_neg_zone*,int *,size_t,scalar_t__) ;
 size_t nsec3_get_hashed (int *,int *,size_t,int ,int ,int ,int ,int *,int) ;
 size_t nsec3_hash_to_b32 (int *,size_t,int ,int ,int *,int) ;

__attribute__((used)) static struct val_neg_data*
neg_find_nsec3_ce(struct val_neg_zone* zone, uint8_t* qname, size_t qname_len,
  int qlabs, sldns_buffer* buf, uint8_t* hashnc, size_t* nclen)
{
 struct val_neg_data* data;
 uint8_t hashce[NSEC3_SHA_LEN];
 uint8_t b32[257];
 size_t celen, b32len;

 *nclen = 0;
 while(qlabs > 0) {

  if(!(celen=nsec3_get_hashed(buf, qname, qname_len,
   zone->nsec3_hash, zone->nsec3_iter, zone->nsec3_salt,
   zone->nsec3_saltlen, hashce, sizeof(hashce))))
   return ((void*)0);
  if(!(b32len=nsec3_hash_to_b32(hashce, celen, zone->name,
   zone->len, b32, sizeof(b32))))
   return ((void*)0);


  data = neg_find_data(zone, b32, b32len, zone->labs+1);
  if(data && data->in_use) {

   return data;
  }

  *nclen = celen;
  memmove(hashnc, hashce, celen);
  dname_remove_label(&qname, &qname_len);
  qlabs --;
 }
 return ((void*)0);
}
