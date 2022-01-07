
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revoked_blob {scalar_t__ len; int blob; } ;


 scalar_t__ MINIMUM (scalar_t__,scalar_t__) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
blob_cmp(struct revoked_blob *a, struct revoked_blob *b)
{
 int r;

 if (a->len != b->len) {
  if ((r = memcmp(a->blob, b->blob, MINIMUM(a->len, b->len))) != 0)
   return r;
  return a->len > b->len ? 1 : -1;
 } else
  return memcmp(a->blob, b->blob, a->len);
}
