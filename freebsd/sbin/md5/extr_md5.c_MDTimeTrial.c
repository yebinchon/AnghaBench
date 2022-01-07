
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {float tv_sec; scalar_t__ tv_usec; } ;
struct rusage {int ru_utime; } ;
struct TYPE_3__ {char* name; char* (* End ) (int *,char*) ;int (* Update ) (int *,unsigned char*,int) ;int (* Init ) (int *) ;} ;
typedef int DIGEST_CTX ;
typedef TYPE_1__ Algorithm_t ;


 int HEX_DIGEST_LENGTH ;
 int RUSAGE_SELF ;
 int TEST_BLOCK_COUNT ;
 int TEST_BLOCK_LEN ;
 int fflush (int ) ;
 int getrusage (int ,struct rusage*) ;
 int printf (char*,...) ;
 int stdout ;
 int stub1 (int *) ;
 int stub2 (int *,unsigned char*,int) ;
 char* stub3 (int *,char*) ;
 int timersub (int *,int *,struct timeval*) ;

__attribute__((used)) static void
MDTimeTrial(const Algorithm_t *alg)
{
 DIGEST_CTX context;
 struct rusage before, after;
 struct timeval total;
 float seconds;
 unsigned char block[TEST_BLOCK_LEN];
 unsigned int i;
 char *p, buf[HEX_DIGEST_LENGTH];

 printf("%s time trial. Digesting %d %d-byte blocks ...",
     alg->name, TEST_BLOCK_COUNT, TEST_BLOCK_LEN);
 fflush(stdout);


 for (i = 0; i < TEST_BLOCK_LEN; i++)
  block[i] = (unsigned char) (i & 0xff);


 getrusage(RUSAGE_SELF, &before);


 alg->Init(&context);
 for (i = 0; i < TEST_BLOCK_COUNT; i++)
  alg->Update(&context, block, TEST_BLOCK_LEN);
 p = alg->End(&context, buf);


 getrusage(RUSAGE_SELF, &after);
 timersub(&after.ru_utime, &before.ru_utime, &total);
 seconds = total.tv_sec + (float) total.tv_usec / 1000000;

 printf(" done\n");
 printf("Digest = %s", p);
 printf("\nTime = %f seconds\n", seconds);
 printf("Speed = %f MiB/second\n", (float) TEST_BLOCK_LEN *
  (float) TEST_BLOCK_COUNT / seconds / (1 << 20));
}
