
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* tokens; } ;
 TYPE_1__* dfa ;

__attribute__((used)) static int
nsubtoks (int tindex)
{
  int ntoks1;

  switch (dfa->tokens[tindex - 1])
    {
    default:
      return 1;
    case 129:
    case 128:
    case 130:
      return 1 + nsubtoks(tindex - 1);
    case 133:
    case 132:
    case 131:
      ntoks1 = nsubtoks(tindex - 1);
      return 1 + ntoks1 + nsubtoks(tindex - 1 - ntoks1);
    }
}
