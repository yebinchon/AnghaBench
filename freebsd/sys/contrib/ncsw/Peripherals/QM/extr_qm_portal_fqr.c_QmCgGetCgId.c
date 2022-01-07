
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int id; } ;
typedef TYPE_1__ t_QmCg ;
typedef scalar_t__ t_Handle ;



__attribute__((used)) static uint8_t QmCgGetCgId(t_Handle h_QmCg)
{
   t_QmCg *p_QmCg = (t_QmCg *)h_QmCg;

   return p_QmCg->id;

}
