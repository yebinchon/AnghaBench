
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;



__attribute__((used)) static int
is_in_line(netdissect_options *ndo, int indent)
{
    return indent - 1 >= ndo->ndo_vflag && ndo->ndo_vflag < 3;
}
