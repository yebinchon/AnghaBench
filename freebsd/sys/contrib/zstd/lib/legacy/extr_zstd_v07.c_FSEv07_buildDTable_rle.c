
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fastMode; scalar_t__ tableLog; } ;
struct TYPE_3__ {scalar_t__ nbBits; int symbol; scalar_t__ newState; } ;
typedef TYPE_1__ FSEv07_decode_t ;
typedef TYPE_2__ FSEv07_DTableHeader ;
typedef int FSEv07_DTable ;
typedef int BYTE ;



size_t FSEv07_buildDTable_rle (FSEv07_DTable* dt, BYTE symbolValue)
{
    void* ptr = dt;
    FSEv07_DTableHeader* const DTableH = (FSEv07_DTableHeader*)ptr;
    void* dPtr = dt + 1;
    FSEv07_decode_t* const cell = (FSEv07_decode_t*)dPtr;

    DTableH->tableLog = 0;
    DTableH->fastMode = 0;

    cell->newState = 0;
    cell->symbol = symbolValue;
    cell->nbBits = 0;

    return 0;
}
