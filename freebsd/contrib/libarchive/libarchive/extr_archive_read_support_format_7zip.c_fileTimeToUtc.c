
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ time_t ;


 int EPOC_TIME ;

__attribute__((used)) static void
fileTimeToUtc(uint64_t fileTime, time_t *timep, long *ns)
{

 if (fileTime >= EPOC_TIME) {
  fileTime -= EPOC_TIME;

  *timep = (time_t)(fileTime / 10000000);

  *ns = (long)(fileTime % 10000000) * 100;
 } else {
  *timep = 0;
  *ns = 0;
 }
}
