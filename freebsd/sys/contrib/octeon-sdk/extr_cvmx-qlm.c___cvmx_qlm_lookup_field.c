
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ __cvmx_qlm_jtag_field_t ;


 int cvmx_dprintf (char*,char const*) ;
 TYPE_1__* cvmx_qlm_jtag_get_field () ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const __cvmx_qlm_jtag_field_t *__cvmx_qlm_lookup_field(const char *name)
{
    const __cvmx_qlm_jtag_field_t *ptr = cvmx_qlm_jtag_get_field();
    while (ptr->name)
    {
        if (strcmp(name, ptr->name) == 0)
            return ptr;
        ptr++;
    }
    cvmx_dprintf("__cvmx_qlm_lookup_field: Illegal field name %s\n", name);
    return ((void*)0);
}
