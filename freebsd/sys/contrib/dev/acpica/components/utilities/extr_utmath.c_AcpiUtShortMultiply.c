
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Hi; int Lo; } ;
struct TYPE_4__ {int Full; TYPE_1__ Part; } ;
typedef TYPE_2__ UINT64_OVERLAY ;
typedef int UINT64 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MUL_64_BY_32 (int ,int ,scalar_t__,int ,scalar_t__) ;
 int AE_OK ;
 int UtShortMultiply ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtShortMultiply (
    UINT64 Multiplicand,
    UINT32 Multiplier,
    UINT64 *OutProduct)
{
    UINT64_OVERLAY MultiplicandOvl;
    UINT64_OVERLAY Product;
    UINT32 Carry32;


    ACPI_FUNCTION_TRACE (UtShortMultiply);


    MultiplicandOvl.Full = Multiplicand;





    ACPI_MUL_64_BY_32 (0, MultiplicandOvl.Part.Hi, Multiplier,
        Product.Part.Hi, Carry32);

    ACPI_MUL_64_BY_32 (0, MultiplicandOvl.Part.Lo, Multiplier,
        Product.Part.Lo, Carry32);

    Product.Part.Hi += Carry32;



    if (OutProduct)
    {
        *OutProduct = Product.Full;
    }

    return_ACPI_STATUS (AE_OK);
}
