
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int32_t ;
typedef scalar_t__ time_t ;
typedef int FILE ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_add_word (int *,int) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,char*) ;
 scalar_t__ BN_is_prime_ex (int *,unsigned long,int *,int *) ;
 int BN_lshift (int *,int *,int) ;
 int BN_mod_word (int *,int) ;
 int * BN_new () ;
 scalar_t__ BN_num_bits (int *) ;
 int BN_rshift (int *,int *,int) ;
 unsigned long MAXIMUM (unsigned long,unsigned long) ;
 unsigned long MODULI_TESTS_COMPOSITE ;
 unsigned long MODULI_TESTS_MILLER_RABIN ;






 scalar_t__ QLINESIZE ;
 unsigned long QSIZE_MINIMUM ;
 unsigned long TRIAL_MINIMUM ;
 unsigned long ULONG_MAX ;
 unsigned long count_lines (int *) ;
 int ctime (scalar_t__*) ;
 int debug (char*,unsigned long,...) ;
 int debug2 (char*,...) ;
 int debug3 (char*,unsigned long) ;
 int error (char*,unsigned long) ;
 int fatal (char*) ;
 int * fgets (char*,scalar_t__,int *) ;
 int free (char*) ;
 int logit (char*,int ,unsigned long,unsigned long,long) ;
 int print_progress (unsigned long,unsigned long,unsigned long) ;
 scalar_t__ qfileout (int *,int const,unsigned long,unsigned long,unsigned long,unsigned long,int *) ;
 unsigned long read_checkpoint (char*) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;
 unsigned long strtoul (char*,char**,int) ;
 int time (scalar_t__*) ;
 int unlink (char*) ;
 int write_checkpoint (char*,unsigned long) ;
 char* xmalloc (scalar_t__) ;

int
prime_test(FILE *in, FILE *out, u_int32_t trials, u_int32_t generator_wanted,
    char *checkpoint_file, unsigned long start_lineno, unsigned long num_lines)
{
 BIGNUM *q, *p, *a;
 BN_CTX *ctx;
 char *cp, *lp;
 u_int32_t count_in = 0, count_out = 0, count_possible = 0;
 u_int32_t generator_known, in_tests, in_tries, in_type, in_size;
 unsigned long last_processed = 0, end_lineno;
 time_t time_start, time_stop;
 int res;

 if (trials < TRIAL_MINIMUM) {
  error("Minimum primality trials is %d", TRIAL_MINIMUM);
  return (-1);
 }

 if (num_lines == 0)
  end_lineno = count_lines(in);
 else
  end_lineno = start_lineno + num_lines;

 time(&time_start);

 if ((p = BN_new()) == ((void*)0))
  fatal("BN_new failed");
 if ((q = BN_new()) == ((void*)0))
  fatal("BN_new failed");
 if ((ctx = BN_CTX_new()) == ((void*)0))
  fatal("BN_CTX_new failed");

 debug2("%.24s Final %u Miller-Rabin trials (%x generator)",
     ctime(&time_start), trials, generator_wanted);

 if (checkpoint_file != ((void*)0))
  last_processed = read_checkpoint(checkpoint_file);
 last_processed = start_lineno = MAXIMUM(last_processed, start_lineno);
 if (end_lineno == ULONG_MAX)
  debug("process from line %lu from pipe", last_processed);
 else
  debug("process from line %lu to line %lu", last_processed,
      end_lineno);

 res = 0;
 lp = xmalloc(QLINESIZE + 1);
 while (fgets(lp, QLINESIZE + 1, in) != ((void*)0) && count_in < end_lineno) {
  count_in++;
  if (count_in <= last_processed) {
   debug3("skipping line %u, before checkpoint or "
       "specified start line", count_in);
   continue;
  }
  if (checkpoint_file != ((void*)0))
   write_checkpoint(checkpoint_file, count_in);
  print_progress(start_lineno, count_in, end_lineno);
  if (strlen(lp) < 14 || *lp == '!' || *lp == '#') {
   debug2("%10u: comment or short line", count_in);
   continue;
  }



  cp = &lp[14];


  in_type = strtoul(cp, &cp, 10);


  in_tests = strtoul(cp, &cp, 10);

  if (in_tests & MODULI_TESTS_COMPOSITE) {
   debug2("%10u: known composite", count_in);
   continue;
  }


  in_tries = strtoul(cp, &cp, 10);


  in_size = strtoul(cp, &cp, 10);


  generator_known = strtoul(cp, &cp, 16);


  cp += strspn(cp, " ");


  switch (in_type) {
  case 131:
   debug2("%10u: (%u) Sophie-Germain", count_in, in_type);
   a = q;
   if (BN_hex2bn(&a, cp) == 0)
    fatal("BN_hex2bn failed");

   if (BN_lshift(p, q, 1) == 0)
    fatal("BN_lshift failed");
   if (BN_add_word(p, 1) == 0)
    fatal("BN_add_word failed");
   in_size += 1;
   generator_known = 0;
   break;
  case 128:
  case 133:
  case 132:
  case 130:
  case 129:
   debug2("%10u: (%u)", count_in, in_type);
   a = p;
   if (BN_hex2bn(&a, cp) == 0)
    fatal("BN_hex2bn failed");

   if (BN_rshift(q, p, 1) == 0)
    fatal("BN_rshift failed");
   break;
  default:
   debug2("Unknown prime type");
   break;
  }





  if ((u_int32_t)BN_num_bits(p) != (in_size + 1)) {
   debug2("%10u: bit size %u mismatch", count_in, in_size);
   continue;
  }
  if (in_size < QSIZE_MINIMUM) {
   debug2("%10u: bit size %u too short", count_in, in_size);
   continue;
  }

  if (in_tests & MODULI_TESTS_MILLER_RABIN)
   in_tries += trials;
  else
   in_tries = trials;




  if (generator_known == 0) {
   if (BN_mod_word(p, 24) == 11)
    generator_known = 2;
   else if (BN_mod_word(p, 12) == 5)
    generator_known = 3;
   else {
    u_int32_t r = BN_mod_word(p, 10);

    if (r == 3 || r == 7)
     generator_known = 5;
   }
  }



  if (generator_wanted > 0 &&
      generator_wanted != generator_known) {
   debug2("%10u: generator %d != %d",
       count_in, generator_known, generator_wanted);
   continue;
  }





  if (generator_known == 0) {
   debug2("%10u: no known generator", count_in);
   continue;
  }

  count_possible++;
  if (BN_is_prime_ex(q, 1, ctx, ((void*)0)) <= 0) {
   debug("%10u: q failed first possible prime test",
       count_in);
   continue;
  }
  if (!BN_is_prime_ex(p, trials, ctx, ((void*)0))) {
   debug("%10u: p is not prime", count_in);
   continue;
  }
  debug("%10u: p is almost certainly prime", count_in);


  if (!BN_is_prime_ex(q, trials - 1, ctx, ((void*)0))) {
   debug("%10u: q is not prime", count_in);
   continue;
  }
  debug("%10u: q is almost certainly prime", count_in);

  if (qfileout(out, 133,
      in_tests | MODULI_TESTS_MILLER_RABIN,
      in_tries, in_size, generator_known, p)) {
   res = -1;
   break;
  }

  count_out++;
 }

 time(&time_stop);
 free(lp);
 BN_free(p);
 BN_free(q);
 BN_CTX_free(ctx);

 if (checkpoint_file != ((void*)0))
  unlink(checkpoint_file);

 logit("%.24s Found %u safe primes of %u candidates in %ld seconds",
     ctime(&time_stop), count_out, count_possible,
     (long) (time_stop - time_start));

 return (res);
}
