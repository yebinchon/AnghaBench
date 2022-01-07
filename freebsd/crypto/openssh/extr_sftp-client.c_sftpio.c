
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwlimit {int dummy; } ;


 int bandwidth_limit (struct bwlimit*,size_t) ;

__attribute__((used)) static int
sftpio(void *_bwlimit, size_t amount)
{
 struct bwlimit *bwlimit = (struct bwlimit *)_bwlimit;

 bandwidth_limit(bwlimit, amount);
 return 0;
}
