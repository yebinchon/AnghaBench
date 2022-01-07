
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
typedef int off_t ;
struct TYPE_8__ {int attr; int clus; int size; } ;
struct TYPE_7__ {int dirents; } ;
typedef TYPE_1__ DOS_FS ;
typedef TYPE_2__ DOS_DE ;


 int FA_DIR ;
 int blkbyt (TYPE_1__*,int) ;
 int cv2 (int ) ;
 int cv4 (int ) ;
 int fatcnt (TYPE_1__*,int ) ;

__attribute__((used)) static off_t
fsize(DOS_FS *fs, DOS_DE *de)
{
   u_long size;
   u_int c;
   int n;

   if (!(size = cv4(de->size)) && de->attr & FA_DIR) {
      if (!(c = cv2(de->clus)))
         size = fs->dirents * sizeof(DOS_DE);
      else {
         if ((n = fatcnt(fs, c)) == -1)
            return (n);
         size = blkbyt(fs, n);
      }
   }
   return (size);
}
