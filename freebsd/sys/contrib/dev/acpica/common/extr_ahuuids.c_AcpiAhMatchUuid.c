
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {char const* Description; int String; } ;
typedef TYPE_1__ AH_UUID ;


 int AcpiUtConvertStringToUuid (int ,int *) ;
 TYPE_1__* Gbl_AcpiUuids ;
 int UUID_BUFFER_LENGTH ;
 int memcmp (int *,int *,int) ;

const char *
AcpiAhMatchUuid (
    UINT8 *Data)
{
    const AH_UUID *Info;
    UINT8 UuidBuffer[UUID_BUFFER_LENGTH];




    for (Info = Gbl_AcpiUuids; Info->Description; Info++)
    {


        if (!Info->String)
        {
            continue;
        }

        AcpiUtConvertStringToUuid (Info->String, UuidBuffer);

        if (!memcmp (Data, UuidBuffer, UUID_BUFFER_LENGTH))
        {
            return (Info->Description);
        }
    }

    return (((void*)0));
}
