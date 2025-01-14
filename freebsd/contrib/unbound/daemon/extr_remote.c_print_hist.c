
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hist; } ;
struct ub_stats_info {TYPE_1__ svr; } ;
struct timehist {size_t num; TYPE_4__* buckets; } ;
struct TYPE_7__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_8__ {scalar_t__ count; TYPE_3__ upper; TYPE_2__ lower; } ;
typedef int RES ;


 int NUM_BUCKETS_HIST ;
 int log_err (char*) ;
 int ssl_printf (int *,char*,int,int,int,int,unsigned long) ;
 int timehist_delete (struct timehist*) ;
 int timehist_import (struct timehist*,int ,int ) ;
 struct timehist* timehist_setup () ;

__attribute__((used)) static int
print_hist(RES* ssl, struct ub_stats_info* s)
{
 struct timehist* hist;
 size_t i;
 hist = timehist_setup();
 if(!hist) {
  log_err("out of memory");
  return 0;
 }
 timehist_import(hist, s->svr.hist, NUM_BUCKETS_HIST);
 for(i=0; i<hist->num; i++) {
  if(!ssl_printf(ssl,
   "histogram.%6.6d.%6.6d.to.%6.6d.%6.6d=%lu\n",
   (int)hist->buckets[i].lower.tv_sec,
   (int)hist->buckets[i].lower.tv_usec,
   (int)hist->buckets[i].upper.tv_sec,
   (int)hist->buckets[i].upper.tv_usec,
   (unsigned long)hist->buckets[i].count)) {
   timehist_delete(hist);
   return 0;
  }
 }
 timehist_delete(hist);
 return 1;
}
