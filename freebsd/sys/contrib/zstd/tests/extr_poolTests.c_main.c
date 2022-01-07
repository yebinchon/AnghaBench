
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ POOL_create (int ,int) ;
 int printf (char*,...) ;
 scalar_t__ testAbruptEnding () ;
 scalar_t__ testOrder (size_t,size_t) ;
 scalar_t__ testThreadReduction () ;
 scalar_t__ testWait (size_t,size_t) ;

int main(int argc, const char **argv) {
  size_t numThreads;
  (void)argc;
  (void)argv;

  if (POOL_create(0, 1)) {
    printf("FAIL: should not create POOL with 0 threads\n");
    return 1;
  }

  for (numThreads = 1; numThreads <= 4; ++numThreads) {
    size_t queueSize;
    for (queueSize = 0; queueSize <= 2; ++queueSize) {
      printf("queueSize==%u, numThreads=%u \n",
            (unsigned)queueSize, (unsigned)numThreads);
      if (testOrder(numThreads, queueSize)) {
        printf("FAIL: testOrder\n");
        return 1;
      }
      printf("SUCCESS: testOrder\n");
      if (testWait(numThreads, queueSize)) {
        printf("FAIL: testWait\n");
        return 1;
      }
      printf("SUCCESS: testWait\n");
    }
  }

  if (testThreadReduction()) {
      printf("FAIL: thread reduction not effective \n");
      return 1;
  } else {
      printf("SUCCESS: thread reduction effective \n");
  }

  if (testAbruptEnding()) {
      printf("FAIL: jobs in queue not completed on early end \n");
      return 1;
  } else {
      printf("SUCCESS: all jobs in queue completed on early end \n");
  }

  printf("PASS: all POOL tests\n");

  return 0;
}
