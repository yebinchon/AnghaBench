
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
struct rusage {struct timeval ru_utime; } ;
struct mbuf {int m_len; } ;
typedef int intmax_t ;


 int RUSAGE_SELF ;
 int __USE (int) ;
 struct mbuf* allocate_mbuf_chain (char**) ;
 void* atoi (int ) ;
 int cpu_in_cksum (struct mbuf*,int,int,int) ;
 int dump_mbuf (struct mbuf*,int,int) ;
 int errx (int,char*,int,...) ;
 int free_mbuf_chain (struct mbuf*) ;
 int getopt (int,char**,char*) ;
 int getprogname () ;
 int getrusage (int ,struct rusage*) ;
 int mbuf_len (struct mbuf*) ;
 int optarg ;
 int portable_cpu_in_cksum (struct mbuf*,int,int,int) ;
 int printf (char*,int,...) ;
 int rand () ;
 void* random_aligned ;
 int randomise_mbuf_chain (struct mbuf*) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

int
main(int argc, char **argv)
{
 struct rusage res;
 struct timeval tv, old_tv;
 int loops, old_sum, off, len;



 long i, iterations;
 uint32_t init_sum;
 struct mbuf *m;
 bool verbose;
 int c;

 loops = 16;
 verbose = 0;
 random_aligned = 0;
 iterations = 100000;

 while ((c = getopt(argc, argv, "i:l:u:v")) != -1) {
  switch (c) {
  case 'i':
   iterations = atoi(optarg);
   break;
  case 'l':
   loops = atoi(optarg);
   break;
  case 'u':
   random_aligned = atoi(optarg);
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   errx(1, "%s [-l <loops>] [-u <unalign> [-i <iterations> "
       "[<mbuf-size> ...]", getprogname());
  }
 }

 for (; loops; --loops) {
  if ((m = allocate_mbuf_chain(argv + 4)) == ((void*)0))
   continue;
  randomise_mbuf_chain(m);
  init_sum = rand();
  len = mbuf_len(m);


  if (loops == 1)
   off = 0;
  else
   off = len ? rand() % len : 0;

  len -= off;
  old_sum = portable_cpu_in_cksum(m, len, off, init_sum);
  __USE(old_sum);


  if (iterations == 0)
   continue;

  getrusage(RUSAGE_SELF, &res);
  tv = res.ru_utime;
  for (i = iterations; i; --i)
   (void)portable_cpu_in_cksum(m, len, off, init_sum);
  getrusage(RUSAGE_SELF, &res);
  timersub(&res.ru_utime, &tv, &old_tv);
  if (verbose)
   printf("portable version: %jd.%06jd\n",
       (intmax_t)old_tv.tv_sec, (intmax_t)old_tv.tv_usec);
  free_mbuf_chain(m);
 }

 return 0;
}
