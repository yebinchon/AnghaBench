
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_ENCODING_LENGTH ;
 int AslError (int ,int ,int *,int *) ;

__attribute__((used)) static UINT8
CgGetPackageLenByteCount (
    ACPI_PARSE_OBJECT *Op,
    UINT32 PackageLength)
{






    if (PackageLength <= (0x0000003F - 1))
    {
        return (1);
    }
    else if (PackageLength <= (0x00000FFF - 2))
    {
        return (2);
    }
    else if (PackageLength <= (0x000FFFFF - 3))
    {
        return (3);
    }
    else if (PackageLength <= (0x0FFFFFFF - 4))
    {
        return (4);
    }
    else
    {


        AslError (ASL_ERROR, ASL_MSG_ENCODING_LENGTH, Op, ((void*)0));
    }

    return (0);
}
