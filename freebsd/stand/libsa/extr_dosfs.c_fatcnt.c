
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int fatsz; } ;
typedef TYPE_1__ DOS_FS ;


 scalar_t__ fatend (int ,int ) ;
 scalar_t__ fatget (TYPE_1__*,int *) ;
 scalar_t__ okclus (TYPE_1__*,int ) ;

__attribute__((used)) static int
fatcnt(DOS_FS *fs, u_int c)
{
   int n;

   for (n = 0; okclus(fs, c); n++)
      if (fatget(fs, &c))
   return (-1);
   return (fatend(fs->fatsz, c) ? n : -1);
}
