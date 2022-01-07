
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int optionRestore (int *) ;
 int sntpOptions ;

void
sntptest_destroy(void) {
 optionRestore(&sntpOptions);
}
