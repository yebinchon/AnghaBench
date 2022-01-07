
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UINT32 ;
struct TYPE_3__ {char* Value; void* Column; void* Line; } ;
typedef TYPE_1__ DT_TABLE_UNIT ;


 scalar_t__ UtFieldCacheCalloc () ;

DT_TABLE_UNIT *
DtCreateTableUnit (
    char *Data,
    UINT32 Line,
    UINT32 Column)
{
    DT_TABLE_UNIT *Unit = (DT_TABLE_UNIT *) UtFieldCacheCalloc ();


    Unit->Value = Data;
    Unit->Line = Line;
    Unit->Column = Column;
    return (Unit);
}
