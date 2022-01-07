
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct _7z_folder {scalar_t__* unPackSize; TYPE_1__* bindPairs; int numBindPairs; scalar_t__ numOutStreams; } ;
struct TYPE_2__ {scalar_t__ outIndex; } ;



__attribute__((used)) static uint64_t
folder_uncompressed_size(struct _7z_folder *f)
{
 int n = (int)f->numOutStreams;
 unsigned pairs = (unsigned)f->numBindPairs;

 while (--n >= 0) {
  unsigned i;
  for (i = 0; i < pairs; i++) {
   if (f->bindPairs[i].outIndex == (uint64_t)n)
    break;
  }
  if (i >= pairs)
   return (f->unPackSize[n]);
 }
 return (0);
}
