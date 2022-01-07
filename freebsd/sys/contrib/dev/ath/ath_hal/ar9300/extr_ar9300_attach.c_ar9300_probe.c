
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 char const* AH_NULL ;
 scalar_t__ ATHEROS_VENDOR_ID ;

__attribute__((used)) static const char*
ar9300_probe(uint16_t vendorid, uint16_t devid)
{
    if (vendorid != ATHEROS_VENDOR_ID)
        return AH_NULL;

    switch (devid) {
    case 134:
        return "Atheros AR938x";
    case 135:
        return "Atheros AR934x";
    case 132:
        return "Atheros AR9485";
    case 131:
        return "Atheros AR9580";
    case 133:
        return "Atheros AR946x/AR948x";
    case 136:
        return "Atheros AR933x";
    case 129:
        return "Qualcomm Atheros QCA955x";
    case 128:
         return "Qualcomm Atheros AR9565";
    case 130:
         return "Qualcomm Atheros QCA953x";
    case 137:
         return "Atheros AR1111";
    default:
        return AH_NULL;
    }

    return AH_NULL;
}
