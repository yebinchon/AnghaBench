
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _7z_folder {unsigned int numCoders; TYPE_1__* unPackSize; TYPE_1__* packedStreams; TYPE_1__* bindPairs; TYPE_1__* coders; } ;
struct TYPE_2__ {struct TYPE_2__* properties; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_Folder(struct _7z_folder *f)
{
 unsigned i;

 if (f->coders) {
  for (i = 0; i< f->numCoders; i++) {
   free(f->coders[i].properties);
  }
  free(f->coders);
 }
 free(f->bindPairs);
 free(f->packedStreams);
 free(f->unPackSize);
}
