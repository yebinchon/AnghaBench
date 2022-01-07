
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timehist {size_t num; TYPE_3__* buckets; } ;
struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ count; TYPE_2__ upper; TYPE_1__ lower; } ;


 int printf (char*,int,int,int,int,unsigned int) ;

void timehist_print(struct timehist* hist)
{

 size_t i;
 for(i=0; i<hist->num; i++) {
  if(hist->buckets[i].count != 0) {
   printf("%4d.%6.6d %4d.%6.6d %u\n",
    (int)hist->buckets[i].lower.tv_sec,
    (int)hist->buckets[i].lower.tv_usec,
    (int)hist->buckets[i].upper.tv_sec,
    (int)hist->buckets[i].upper.tv_usec,
    (unsigned)hist->buckets[i].count);
  }
 }

}
