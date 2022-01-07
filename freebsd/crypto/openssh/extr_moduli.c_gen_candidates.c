
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef scalar_t__ time_t ;
typedef int FILE ;
typedef int BIGNUM ;


 int BIT_SET (int *,scalar_t__) ;
 scalar_t__ BIT_TEST (int *,scalar_t__) ;
 scalar_t__ BN_add (int *,int *,int *) ;
 int BN_bn2hex (int *) ;
 int * BN_copy (int *,int *) ;
 void* BN_new () ;
 scalar_t__ BN_rand (int *,scalar_t__,int,int) ;
 scalar_t__ BN_set_bit (int *,int ) ;
 scalar_t__ BN_set_word (int *,int) ;
 scalar_t__ LARGE_MAXIMUM ;
 scalar_t__ LARGE_MINIMUM ;
 int * LargeSieve ;
 int MODULI_TESTS_SIEVE ;
 int MODULI_TYPE_SOPHIE_GERMAIN ;
 scalar_t__ SHIFT_BYTE ;
 scalar_t__ SHIFT_MEGAWORD ;
 scalar_t__ SHIFT_WORD ;
 int SMALL_MAXIMUM ;
 int * SmallSieve ;
 scalar_t__ TEST_MAXIMUM ;
 scalar_t__ TEST_MINIMUM ;
 scalar_t__ TEST_POWER ;
 int TINY_NUMBER ;
 int * TinySieve ;
 int * calloc (scalar_t__,int) ;
 scalar_t__ ctime (scalar_t__*) ;
 int debug2 (char*,int) ;
 int error (char*,scalar_t__,scalar_t__) ;
 int fatal (char*) ;
 int free (int *) ;
 int * largebase ;
 int largebits ;
 scalar_t__ largememory ;
 int largenumbers ;
 int largetries ;
 scalar_t__ largewords ;
 int logit (char*,scalar_t__,scalar_t__,...) ;
 int memset (int *,int ,scalar_t__) ;
 int qfileout (int *,int ,int ,int ,scalar_t__,int ,int *) ;
 int sieve_large (int) ;
 int smallbase ;
 scalar_t__ smallbits ;
 int time (scalar_t__*) ;
 scalar_t__ tinybits ;
 int * xcalloc (scalar_t__,int) ;

int
gen_candidates(FILE *out, u_int32_t memory, u_int32_t power, BIGNUM *start)
{
 BIGNUM *q;
 u_int32_t j, r, s, t;
 u_int32_t smallwords = TINY_NUMBER >> 6;
 u_int32_t tinywords = TINY_NUMBER >> 6;
 time_t time_start, time_stop;
 u_int32_t i;
 int ret = 0;

 largememory = memory;

 if (memory != 0 &&
     (memory < LARGE_MINIMUM || memory > LARGE_MAXIMUM)) {
  error("Invalid memory amount (min %ld, max %ld)",
      LARGE_MINIMUM, LARGE_MAXIMUM);
  return (-1);
 }





 if (power > TEST_MAXIMUM) {
  error("Too many bits: %u > %lu", power, TEST_MAXIMUM);
  return (-1);
 } else if (power < TEST_MINIMUM) {
  error("Too few bits: %u < %u", power, TEST_MINIMUM);
  return (-1);
 }
 power--;







 largewords = ((power * power) >> (SHIFT_WORD - TEST_POWER));





 if (largememory > LARGE_MAXIMUM) {
  logit("Limited memory: %u MB; limit %lu MB",
      largememory, LARGE_MAXIMUM);
  largememory = LARGE_MAXIMUM;
 }

 if (largewords <= (largememory << SHIFT_MEGAWORD)) {
  logit("Increased memory: %u MB; need %u bytes",
      largememory, (largewords << SHIFT_BYTE));
  largewords = (largememory << SHIFT_MEGAWORD);
 } else if (largememory > 0) {
  logit("Decreased memory: %u MB; want %u bytes",
      largememory, (largewords << SHIFT_BYTE));
  largewords = (largememory << SHIFT_MEGAWORD);
 }

 TinySieve = xcalloc(tinywords, sizeof(u_int32_t));
 tinybits = tinywords << SHIFT_WORD;

 SmallSieve = xcalloc(smallwords, sizeof(u_int32_t));
 smallbits = smallwords << SHIFT_WORD;




 while ((LargeSieve = calloc(largewords, sizeof(u_int32_t))) == ((void*)0))
  largewords -= (1L << (SHIFT_MEGAWORD - 2));

 largebits = largewords << SHIFT_WORD;
 largenumbers = largebits * 2;


 largetries = 0;
 if ((q = BN_new()) == ((void*)0))
  fatal("BN_new failed");





 if ((largebase = BN_new()) == ((void*)0))
  fatal("BN_new failed");
 if (start == ((void*)0)) {
  if (BN_rand(largebase, power, 1, 1) == 0)
   fatal("BN_rand failed");
 } else {
  if (BN_copy(largebase, start) == ((void*)0))
   fatal("BN_copy: failed");
 }


 if (BN_set_bit(largebase, 0) == 0)
  fatal("BN_set_bit: failed");

 time(&time_start);

 logit("%.24s Sieve next %u plus %u-bit", ctime(&time_start),
     largenumbers, power);
 debug2("start point: 0x%s", BN_bn2hex(largebase));




 for (i = 0; i < tinybits; i++) {
  if (BIT_TEST(TinySieve, i))
   continue;


  t = 2 * i + 3;


  for (j = i + t; j < tinybits; j += t)
   BIT_SET(TinySieve, j);

  sieve_large(t);
 }





 for (smallbase = TINY_NUMBER + 3;
     smallbase < (SMALL_MAXIMUM - TINY_NUMBER);
     smallbase += TINY_NUMBER) {
  for (i = 0; i < tinybits; i++) {
   if (BIT_TEST(TinySieve, i))
    continue;


   t = 2 * i + 3;
   r = smallbase % t;

   if (r == 0) {
    s = 0;
   } else {

    s = t - r;
   }






   if (s & 1)
    s += t;


   for (s /= 2; s < smallbits; s += t)
    BIT_SET(SmallSieve, s);
  }




  for (i = 0; i < smallbits; i++) {
   if (BIT_TEST(SmallSieve, i))
    continue;


   sieve_large((2 * i) + smallbase);
  }

  memset(SmallSieve, 0, smallwords << SHIFT_BYTE);
 }

 time(&time_stop);

 logit("%.24s Sieved with %u small primes in %lld seconds",
     ctime(&time_stop), largetries, (long long)(time_stop - time_start));

 for (j = r = 0; j < largebits; j++) {
  if (BIT_TEST(LargeSieve, j))
   continue;

  debug2("test q = largebase+%u", 2 * j);
  if (BN_set_word(q, 2 * j) == 0)
   fatal("BN_set_word failed");
  if (BN_add(q, q, largebase) == 0)
   fatal("BN_add failed");
  if (qfileout(out, MODULI_TYPE_SOPHIE_GERMAIN,
      MODULI_TESTS_SIEVE, largetries,
      (power - 1) , (0), q) == -1) {
   ret = -1;
   break;
  }

  r++;
 }

 time(&time_stop);

 free(LargeSieve);
 free(SmallSieve);
 free(TinySieve);

 logit("%.24s Found %u candidates", ctime(&time_stop), r);

 return (ret);
}
