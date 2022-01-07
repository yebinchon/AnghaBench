
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct session_op {size_t len; unsigned char* dst; int dst_len; void* iv; void* src; int op; int ses; void* key; int keylen; int cipher; } ;
struct crypt_op {size_t len; unsigned char* dst; int dst_len; void* iv; void* src; int op; int ses; void* key; int keylen; int cipher; } ;
typedef int cs ;
typedef int co ;
typedef int buf ;
struct TYPE_3__ {size_t len; int * ciphertx; int iv; int plaintx; int key; int key_len; } ;


 int CIOCCRYPT ;
 int CIOCGSESSION ;
 int COP_ENCRYPT ;
 int CRYPTO_AES_CTR ;
 int O_RDWR ;
 void* __UNCONST (int *) ;
 size_t __arraycount (TYPE_1__*) ;
 int close (int) ;
 int err (int,char*,size_t) ;
 int ioctl (int,int ,struct session_op*) ;
 scalar_t__ memcmp (unsigned char*,int *,size_t) ;
 int memset (struct session_op*,int ,int) ;
 int open (char*,int ,int ) ;
 int printf (char*,...) ;
 TYPE_1__* tests ;
 int warnx (char*,size_t) ;

int
main(void)
{
 int fd, res;
 size_t i;
 struct session_op cs;
 struct crypt_op co;
 unsigned char buf[36];

 for (i = 0; i < __arraycount(tests); i++) {
  fd = open("/dev/crypto", O_RDWR, 0);
  if (fd < 0)
   err(1, "open %zu", i);
  memset(&cs, 0, sizeof(cs));
  cs.cipher = CRYPTO_AES_CTR;
  cs.keylen = tests[i].key_len;
  cs.key = __UNCONST(&tests[i].key);
  res = ioctl(fd, CIOCGSESSION, &cs);
  if (res < 0)
   err(1, "CIOCGSESSION %zu", i);

  memset(&co, 0, sizeof(co));
  co.ses = cs.ses;
  co.op = COP_ENCRYPT;
  co.len = tests[i].len;
  co.src = __UNCONST(&tests[i].plaintx);
  co.dst = buf;
  co.dst_len = sizeof(buf);
  co.iv = __UNCONST(&tests[i].iv);
  res = ioctl(fd, CIOCCRYPT, &co);
  if (res < 0)
   err(1, "CIOCCRYPT %zu", i);

  if (memcmp(co.dst, tests[i].ciphertx, tests[i].len)) {
   size_t j;
   printf(" Loc  Actual  Golden\n");
   for (j = 0; j < tests[i].len; j++)
    printf("0x%2zu:  0x%2x    0x%2x\n", j,
     buf[j], tests[i].ciphertx[j]);
   warnx("verification failed %zu", i);
  }
  close(fd);
 }
 return 0;
}
