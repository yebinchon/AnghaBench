
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvmx_usb_complete_t ;
__attribute__((used)) static const char *__cvmx_usb_complete_to_string(cvmx_usb_complete_t complete_code)
{
    switch (complete_code)
    {
        case 129: return "SUCCESS";
        case 131: return "SHORT";
        case 135: return "CANCEL";
        case 133: return "ERROR";
        case 130: return "STALL";
        case 128: return "XACTERR";
        case 134: return "DATATGLERR";
        case 136: return "BABBLEERR";
        case 132: return "FRAMEERR";
    }
    return "Update __cvmx_usb_complete_to_string";
}
