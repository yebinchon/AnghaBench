
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Pcd; } ;
typedef TYPE_1__ t_Fm ;



t_Handle FmGetPcd(t_Handle h_Fm)
{
 return ((t_Fm*)h_Fm)->h_Pcd;
}
