
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; } ;
typedef TYPE_1__ Keyword ;


 int strcmp (char*,int ) ;

int binsearch(char *w, Keyword *kp, int n)
{
 int cond, low, mid, high;

 low = 0;
 high = n - 1;
 while (low <= high) {
  mid = (low + high) / 2;
  if ((cond = strcmp(w, kp[mid].word)) < 0)
   high = mid - 1;
  else if (cond > 0)
   low = mid + 1;
  else
   return mid;
 }
 return -1;
}
