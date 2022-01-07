
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *SSL_alert_desc_string(int value)
{
    switch (value & 0xff) {
    case 152:
        return "CN";
    case 147:
        return "UM";
    case 156:
        return "BM";
    case 151:
        return "DF";
    case 150:
        return "HF";
    case 148:
        return "NC";
    case 157:
        return "BC";
    case 146:
        return "UC";
    case 154:
        return "CR";
    case 155:
        return "CE";
    case 153:
        return "CU";
    case 149:
        return "IP";
    case 140:
        return "DC";
    case 133:
        return "RO";
    case 132:
        return "CA";
    case 145:
        return "AD";
    case 141:
        return "DE";
    case 139:
        return "CY";
    case 138:
        return "ER";
    case 134:
        return "PV";
    case 137:
        return "IS";
    case 136:
        return "IE";
    case 128:
        return "US";
    case 135:
        return "NR";
    case 129:
        return "UE";
    case 142:
        return "CO";
    case 130:
        return "UN";
    case 143:
        return "BR";
    case 144:
        return "BH";
    case 131:
        return "UP";
    default:
        return "UK";
    }
}
