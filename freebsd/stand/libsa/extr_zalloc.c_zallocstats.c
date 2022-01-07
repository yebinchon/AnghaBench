
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mr_Bytes; struct TYPE_5__* mr_Next; } ;
struct TYPE_4__ {char* mp_End; scalar_t__ mp_Base; TYPE_2__* mp_First; scalar_t__ mp_Size; } ;
typedef TYPE_1__ MemPool ;
typedef TYPE_2__ MemNode ;


 int printf (char*,int,...) ;

void
zallocstats(MemPool *mp)
{
 int abytes = 0;
 int hbytes = 0;
 int fcount = 0;
 MemNode *mn;

 printf("%d bytes reserved", (int)mp->mp_Size);

 mn = mp->mp_First;

 if ((void *)mn != (void *)mp->mp_Base) {
  abytes += (char *)mn - (char *)mp->mp_Base;
 }

 while (mn != ((void*)0)) {
  if ((char *)mn + mn->mr_Bytes != mp->mp_End) {
   hbytes += mn->mr_Bytes;
   ++fcount;
  }
  if (mn->mr_Next != ((void*)0)) {
   abytes += (char *)mn->mr_Next -
       ((char *)mn + mn->mr_Bytes);
  }
  mn = mn->mr_Next;
 }
 printf(" %d bytes allocated\n%d fragments (%d bytes fragmented)\n",
     abytes, fcount, hbytes);
}
