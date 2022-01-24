#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_8__ {int /*<<< orphan*/  Column; int /*<<< orphan*/  NameColumn; int /*<<< orphan*/  ByteOffset; int /*<<< orphan*/  Line; scalar_t__ StringLength; void* Value; void* Name; } ;
struct TYPE_7__ {int /*<<< orphan*/  Column; int /*<<< orphan*/  Line; scalar_t__ Value; } ;
typedef  TYPE_1__ DT_TABLE_UNIT ;
typedef  TYPE_2__ DT_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  AslGbl_FieldList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

void
FUNC6 (
    DT_TABLE_UNIT           *FieldKey,
    DT_TABLE_UNIT           *FieldValue,
    UINT32                  Offset)
{
    DT_FIELD                *Field = FUNC2 ();


    Field->StringLength = 0;
    if (FieldKey->Value)
    {
        Field->Name =
            FUNC4 (FUNC3 (FUNC5 (FieldKey->Value) + 1), FieldKey->Value);
    }

    if (FieldValue->Value)
    {
        Field->StringLength = FUNC5 (FieldValue->Value);
        Field->Value =
            FUNC4 (FUNC3 (Field->StringLength + 1), FieldValue->Value);
    }

    Field->Line = FieldValue->Line;
    Field->ByteOffset = Offset;
    Field->NameColumn = FieldKey->Column;
    Field->Column = FieldValue->Column;
    FUNC1 (Field);

    FUNC0 (AslGbl_FieldList);
}