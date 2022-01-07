
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_6__ {char* String; } ;
struct TYPE_7__ {scalar_t__ ParseOpcode; TYPE_1__ Value; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef int ACPI_SIZE ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef scalar_t__ ACPI_NAME ;


 int ASL_ERROR ;
 int ASL_MSG_ALPHANUMERIC_STRING ;
 int ASL_MSG_HID_LENGTH ;
 int ASL_MSG_HID_PREFIX ;
 int ASL_MSG_HID_SUFFIX ;
 int ASL_MSG_LEADING_ASTERISK ;
 int ASL_MSG_NULL_STRING ;
 int ASL_MSG_UPPER_CASE ;
 scalar_t__ ASL_TYPE_CID ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 scalar_t__ PARSEOP_STRING_LITERAL ;
 int isalnum (int) ;
 int isdigit (int) ;
 int isupper (int) ;
 int isxdigit (int) ;
 int strlen (char*) ;

void
AnCheckId (
    ACPI_PARSE_OBJECT *Op,
    ACPI_NAME Type)
{
    UINT32 i;
    ACPI_SIZE Length;




    if (Op->Asl.ParseOpcode != PARSEOP_STRING_LITERAL)
    {
        return;
    }



    Length = strlen (Op->Asl.Value.String);
    if (!Length)
    {
        AslError (ASL_ERROR, ASL_MSG_NULL_STRING, Op, ((void*)0));
        return;
    }







    if (*Op->Asl.Value.String == '*')
    {
        AslError (ASL_ERROR, ASL_MSG_LEADING_ASTERISK,
            Op, Op->Asl.Value.String);
        return;
    }



    if (Type == ASL_TYPE_CID)
    {
        return;
    }



    for (i = 0; Op->Asl.Value.String[i]; i++)
    {
        if (!isalnum ((int) Op->Asl.Value.String[i]))
        {
            AslError (ASL_ERROR, ASL_MSG_ALPHANUMERIC_STRING,
                Op, Op->Asl.Value.String);
            return;
        }
    }
    if ((Length < 7) || (Length > 8))
    {
        AslError (ASL_ERROR, ASL_MSG_HID_LENGTH,
            Op, Op->Asl.Value.String);
        return;
    }



    if (Length == 7)
    {


        for (i = 0; i < 3; i++)
        {
            if (!isupper ((int) Op->Asl.Value.String[i]))
            {
                AslError (ASL_ERROR, ASL_MSG_UPPER_CASE,
                    Op, &Op->Asl.Value.String[i]);
                return;
            }
        }
    }
    else
    {




        for (i = 0; i < 4; i++)
        {
            if (!isupper ((int) Op->Asl.Value.String[i]) &&
                !isdigit ((int) Op->Asl.Value.String[i]))
            {
                AslError (ASL_ERROR, ASL_MSG_HID_PREFIX,
                    Op, &Op->Asl.Value.String[i]);
                return;
            }
        }
    }



    for (; i < Length; i++)
    {
        if (!isxdigit ((int) Op->Asl.Value.String[i]))
        {
            AslError (ASL_ERROR, ASL_MSG_HID_SUFFIX,
                Op, &Op->Asl.Value.String[i]);
            break;
        }
    }
}
