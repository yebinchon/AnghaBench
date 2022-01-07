
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_neg_zone {int dummy; } ;


 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 int log_assert (int) ;

__attribute__((used)) static size_t calc_zone_need(uint8_t* d, size_t len)
{
 size_t res = sizeof(struct val_neg_zone) + len;
 while(!dname_is_root(d)) {
  log_assert(len > 1);
  dname_remove_label(&d, &len);
  res += sizeof(struct val_neg_zone) + len;
 }
 return res;
}
