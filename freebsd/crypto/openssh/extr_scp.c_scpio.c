
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t off_t ;


 int bandwidth_limit (int *,size_t) ;
 int bwlimit ;
 scalar_t__ limit_kbps ;

__attribute__((used)) static int
scpio(void *_cnt, size_t s)
{
 off_t *cnt = (off_t *)_cnt;

 *cnt += s;
 if (limit_kbps > 0)
  bandwidth_limit(&bwlimit, s);
 return 0;
}
