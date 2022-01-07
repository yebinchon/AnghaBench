
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nsec3_cached_hash {int rr; int nsec3; int dname; } ;


 int memcmp (int *,int *,size_t) ;
 scalar_t__ nsec3_get_algo (int ,int ) ;
 scalar_t__ nsec3_get_iter (int ,int ) ;
 int nsec3_get_salt (int ,int ,int **,size_t*) ;
 int query_dname_compare (int ,int ) ;

int
nsec3_hash_cmp(const void* c1, const void* c2)
{
 struct nsec3_cached_hash* h1 = (struct nsec3_cached_hash*)c1;
 struct nsec3_cached_hash* h2 = (struct nsec3_cached_hash*)c2;
 uint8_t* s1, *s2;
 size_t s1len, s2len;
 int c = query_dname_compare(h1->dname, h2->dname);
 if(c != 0)
  return c;


 if(nsec3_get_algo(h1->nsec3, h1->rr) !=
  nsec3_get_algo(h2->nsec3, h2->rr)) {
  if(nsec3_get_algo(h1->nsec3, h1->rr) <
   nsec3_get_algo(h2->nsec3, h2->rr))
   return -1;
  return 1;
 }
 if(nsec3_get_iter(h1->nsec3, h1->rr) !=
  nsec3_get_iter(h2->nsec3, h2->rr)) {
  if(nsec3_get_iter(h1->nsec3, h1->rr) <
   nsec3_get_iter(h2->nsec3, h2->rr))
   return -1;
  return 1;
 }
 (void)nsec3_get_salt(h1->nsec3, h1->rr, &s1, &s1len);
 (void)nsec3_get_salt(h2->nsec3, h2->rr, &s2, &s2len);
 if(s1len == 0 && s2len == 0)
  return 0;
 if(!s1) return -1;
 if(!s2) return 1;
 if(s1len != s2len) {
  if(s1len < s2len)
   return -1;
  return 1;
 }
 return memcmp(s1, s2, s1len);
}
