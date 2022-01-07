
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
name_type_str(int name_type)
{
    const char *f = ((void*)0);

    switch (name_type) {
    case 0: f = "Workstation"; break;
    case 0x03: f = "Client?"; break;
    case 0x20: f = "Server"; break;
    case 0x1d: f = "Master Browser"; break;
    case 0x1b: f = "Domain Controller"; break;
    case 0x1e: f = "Browser Server"; break;
    default: f = "Unknown"; break;
    }
    return(f);
}
