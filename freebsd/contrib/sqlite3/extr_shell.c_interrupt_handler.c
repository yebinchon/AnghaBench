
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (int) ;
 int exit (int) ;
 scalar_t__ globalDb ;
 int seenInterrupt ;
 int sqlite3_interrupt (scalar_t__) ;

__attribute__((used)) static void interrupt_handler(int NotUsed){
  UNUSED_PARAMETER(NotUsed);
  seenInterrupt++;
  if( seenInterrupt>2 ) exit(1);
  if( globalDb ) sqlite3_interrupt(globalDb);
}
