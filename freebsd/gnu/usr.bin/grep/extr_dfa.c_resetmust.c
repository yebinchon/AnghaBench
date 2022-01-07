
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* left; char* right; char* is; int in; } ;
typedef TYPE_1__ must ;


 int freelist (int ) ;

__attribute__((used)) static void
resetmust (must *mp)
{
  mp->left[0] = mp->right[0] = mp->is[0] = '\0';
  freelist(mp->in);
}
