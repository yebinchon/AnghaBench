
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LDNS_VERSION ;

const char *
ldns_version(void)
{
 return (char*)LDNS_VERSION;
}
