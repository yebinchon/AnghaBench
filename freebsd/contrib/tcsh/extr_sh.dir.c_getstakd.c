
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {int const* di_name; struct directory* di_prev; struct directory* di_next; } ;
typedef int Char ;


 struct directory* dcwd ;
 struct directory dhead ;

const Char *
getstakd(int cnt)
{
    struct directory *dp;

    dp = dcwd;
    if (cnt < 0) {
 dp = dp->di_next;
 if (dp == &dhead)
     dp = dp->di_next;
    }
    else {
 while (cnt-- > 0) {
     dp = dp->di_prev;
     if (dp == &dhead)
  dp = dp->di_prev;
     if (dp == dcwd)
  return ((void*)0);
 }
    }
    return dp->di_name;
}
