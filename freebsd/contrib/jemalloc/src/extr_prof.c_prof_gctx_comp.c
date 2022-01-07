
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int len; int vec; } ;
struct TYPE_6__ {TYPE_1__ bt; } ;
typedef TYPE_2__ prof_gctx_t ;


 int memcmp (int ,int ,unsigned int) ;

__attribute__((used)) static int
prof_gctx_comp(const prof_gctx_t *a, const prof_gctx_t *b) {
 unsigned a_len = a->bt.len;
 unsigned b_len = b->bt.len;
 unsigned comp_len = (a_len < b_len) ? a_len : b_len;
 int ret = memcmp(a->bt.vec, b->bt.vec, comp_len * sizeof(void *));
 if (ret == 0) {
  ret = (a_len > b_len) - (a_len < b_len);
 }
 return ret;
}
