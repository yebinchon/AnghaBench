
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct sshbuf {int dummy; } ;
typedef struct sshbuf u_char ;
typedef int r ;


 int ASSERT_INT_EQ (scalar_t__,int ) ;
 int ASSERT_MEM_ZERO_NE (struct sshbuf*,size_t) ;
 int ASSERT_PTR_EQ (struct sshbuf*,int *) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int ASSERT_SIZE_T_EQ (size_t,size_t) ;
 int ASSERT_SIZE_T_GE (size_t,size_t) ;
 int ASSERT_SIZE_T_LE (size_t,int) ;
 int ASSERT_SIZE_T_LT (size_t,size_t) ;
 size_t NUM_FUZZ_TESTS ;
 int SSHBUF_SIZE_MAX ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int arc4random () ;
 int arc4random_buf (size_t*,int) ;
 int arc4random_uniform (int) ;
 int memset (struct sshbuf*,int,size_t) ;
 size_t sshbuf_avail (struct sshbuf*) ;
 int sshbuf_consume (struct sshbuf*,size_t) ;
 int sshbuf_consume_end (struct sshbuf*,size_t) ;
 int sshbuf_free (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 size_t sshbuf_max_size (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 struct sshbuf* sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_reserve (struct sshbuf*,size_t,struct sshbuf**) ;
 scalar_t__ sshbuf_set_max_size (struct sshbuf*,int) ;
 int stub1 (struct sshbuf*,size_t) ;

void
sshbuf_fuzz_tests(void)
{
 struct sshbuf *p1;
 u_char *dp;
 size_t sz, sz2, i;
 u_int32_t r;
 int ret;


 TEST_START("fuzz alloc/dealloc");
 p1 = sshbuf_new();
 ASSERT_INT_EQ(sshbuf_set_max_size(p1, 16 * 1024), 0);
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_PTR_NE(sshbuf_ptr(p1), ((void*)0));
 ASSERT_MEM_ZERO_NE(sshbuf_ptr(p1), sshbuf_len(p1));
 for (i = 0; i < NUM_FUZZ_TESTS; i++) {
  r = arc4random_uniform(10);
  if (r == 0) {

   r = arc4random_uniform(10);
 fuzz_reserve:
   sz = sshbuf_avail(p1);
   sz2 = sshbuf_len(p1);
   ret = sshbuf_reserve(p1, r, &dp);
   if (ret < 0) {
    ASSERT_PTR_EQ(dp, ((void*)0));
    ASSERT_SIZE_T_LT(sz, r);
    ASSERT_SIZE_T_EQ(sshbuf_avail(p1), sz);
    ASSERT_SIZE_T_EQ(sshbuf_len(p1), sz2);
   } else {
    ASSERT_PTR_NE(dp, ((void*)0));
    ASSERT_SIZE_T_GE(sz, r);
    ASSERT_SIZE_T_EQ(sshbuf_avail(p1), sz - r);
    ASSERT_SIZE_T_EQ(sshbuf_len(p1), sz2 + r);
    memset(dp, arc4random_uniform(255) + 1, r);
   }
  } else if (r < 3) {

   r = arc4random_uniform(8 * 1024);
   goto fuzz_reserve;
  } else if (r == 3) {

   r = arc4random_uniform(10);
 fuzz_consume:
   sz = sshbuf_avail(p1);
   sz2 = sshbuf_len(p1);

   ret = ((arc4random() & 1) ?
       sshbuf_consume : sshbuf_consume_end)(p1, r);
   if (ret < 0) {
    ASSERT_SIZE_T_LT(sz2, r);
    ASSERT_SIZE_T_EQ(sshbuf_avail(p1), sz);
    ASSERT_SIZE_T_EQ(sshbuf_len(p1), sz2);
   } else {
    ASSERT_SIZE_T_GE(sz2, r);
    ASSERT_SIZE_T_EQ(sshbuf_avail(p1), sz + r);
    ASSERT_SIZE_T_EQ(sshbuf_len(p1), sz2 - r);
   }
  } else if (r < 8) {

   r = arc4random_uniform(2 * 1024);
   goto fuzz_consume;
  } else if (r == 8) {

   r = arc4random_uniform(16 * 1024);
   sz = sshbuf_max_size(p1);
   if (sshbuf_set_max_size(p1, r) < 0)
    ASSERT_SIZE_T_EQ(sshbuf_max_size(p1), sz);
   else
    ASSERT_SIZE_T_EQ(sshbuf_max_size(p1), r);
  } else {
   if (arc4random_uniform(8192) == 0) {

    ASSERT_PTR_NE(sshbuf_ptr(p1), ((void*)0));
    ASSERT_MEM_ZERO_NE(sshbuf_ptr(p1), sshbuf_len(p1));
    sshbuf_free(p1);
    p1 = sshbuf_new();
    ASSERT_PTR_NE(p1, ((void*)0));
    ASSERT_INT_EQ(sshbuf_set_max_size(p1,
        16 * 1024), 0);
   } else {


    arc4random_buf(&r, sizeof(r));
    while (r < SSHBUF_SIZE_MAX / 2) {
     r <<= 1;
     r |= arc4random() & 1;
    }
    goto fuzz_reserve;
   }
  }
  ASSERT_PTR_NE(sshbuf_ptr(p1), ((void*)0));
  ASSERT_SIZE_T_LE(sshbuf_max_size(p1), 16 * 1024);
 }
 ASSERT_PTR_NE(sshbuf_ptr(p1), ((void*)0));
 ASSERT_MEM_ZERO_NE(sshbuf_ptr(p1), sshbuf_len(p1));
 sshbuf_free(p1);
 TEST_DONE();
}
