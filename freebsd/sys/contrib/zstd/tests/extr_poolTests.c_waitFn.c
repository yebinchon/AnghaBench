
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTIL_sleepMilli (int) ;

__attribute__((used)) static void waitFn(void *opaque) {
  (void)opaque;
  UTIL_sleepMilli(1);
}
