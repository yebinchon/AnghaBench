
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *SSL_alert_type_string_long(int value)
{
    switch (value >> 8) {
    case 128:
        return "warning";
    case 129:
        return "fatal";
    default:
        return "unknown";
    }
}
