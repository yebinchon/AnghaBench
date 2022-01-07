
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;


 int HN_DIVISOR_1000 ;
 int xo_humanize_number (char*,int ,int,char*,int,int) ;

__attribute__((used)) static ssize_t
xo_humanize (char *buf, ssize_t len, uint64_t value, int flags)
{
    int scale = 0;

    if (value) {
 uint64_t left = value;

 if (flags & HN_DIVISOR_1000) {
     for ( ; left; scale++)
  left /= 1000;
 } else {
     for ( ; left; scale++)
  left /= 1024;
 }
 scale -= 1;
    }

    return xo_humanize_number(buf, len, value, "", scale, flags);
}
