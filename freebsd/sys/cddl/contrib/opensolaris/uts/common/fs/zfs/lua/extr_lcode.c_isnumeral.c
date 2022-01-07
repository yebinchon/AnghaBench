
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ k; scalar_t__ t; scalar_t__ f; } ;
typedef TYPE_1__ expdesc ;


 scalar_t__ NO_JUMP ;
 scalar_t__ VKNUM ;

__attribute__((used)) static int isnumeral(expdesc *e) {
  return (e->k == VKNUM && e->t == NO_JUMP && e->f == NO_JUMP);
}
