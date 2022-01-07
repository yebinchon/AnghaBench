
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int marker; } ;
typedef TYPE_1__ Obj_Entry ;


 int bzero (TYPE_1__*,int) ;

__attribute__((used)) static void
init_marker(Obj_Entry *marker)
{

 bzero(marker, sizeof(*marker));
 marker->marker = 1;
}
