
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {size_t size; int * array; int shift; scalar_t__ mask; } ;
typedef int num ;


 int log_info (char*,char const*,unsigned int,unsigned int,int ) ;
 int lruhash_status (int ,char*,int) ;
 int snprintf (char*,int,char*,unsigned int) ;

void slabhash_status(struct slabhash* sl, const char* id, int extended)
{
 size_t i;
 char num[17];
 log_info("Slabhash %s: %u tables mask=%x shift=%d",
  id, (unsigned)sl->size, (unsigned)sl->mask, sl->shift);
 for(i=0; i<sl->size; i++) {
  snprintf(num, sizeof(num), "table %u", (unsigned)i);
  lruhash_status(sl->array[i], num, extended);
 }
}
