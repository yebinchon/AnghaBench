
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int buf ;


 scalar_t__ OPENSSL_VERSION_NUMBER ;
 int RANDOM_SEED_SIZE ;
 int RAND_add (unsigned char*,int,int) ;
 int RAND_status () ;
 int SSLeay () ;
 int debug3 (char*) ;
 int fatal (char*,...) ;
 int memset (unsigned char*,char,int) ;
 int seed_from_prngd (unsigned char*,int) ;
 int ssh_compatible_openssl (scalar_t__,int ) ;

void
seed_rng(void)
{

 unsigned char buf[RANDOM_SEED_SIZE];

 if (!ssh_compatible_openssl(OPENSSL_VERSION_NUMBER, SSLeay()))
  fatal("OpenSSL version mismatch. Built against %lx, you "
      "have %lx", (u_long)OPENSSL_VERSION_NUMBER, SSLeay());


 if (RAND_status() == 1) {
  debug3("RNG is ready, skipping seeding");
  return;
 }

 if (seed_from_prngd(buf, sizeof(buf)) == -1)
  fatal("Could not obtain seed from PRNGd");
 RAND_add(buf, sizeof(buf), sizeof(buf));
 memset(buf, '\0', sizeof(buf));


 if (RAND_status() != 1)
  fatal("PRNG is not seeded");
}
