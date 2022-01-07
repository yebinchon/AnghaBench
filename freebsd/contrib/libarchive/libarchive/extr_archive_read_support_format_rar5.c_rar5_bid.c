
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int bid_standard (struct archive_read*) ;

__attribute__((used)) static int rar5_bid(struct archive_read* a, int best_bid) {
 int my_bid;

 if(best_bid > 30)
  return -1;

 my_bid = bid_standard(a);
 if(my_bid > -1) {
  return my_bid;
 }

 return -1;
}
