
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 int INTERFACE_NAME ;
 int bt_monitor_activate ;
 TYPE_1__* pcap_create_common (char*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strrchr (char const*,char) ;

pcap_t *
bt_monitor_create(const char *device, char *ebuf, int *is_ours)
{
    pcap_t *p;
    const char *cp;

    cp = strrchr(device, '/');
    if (cp == ((void*)0))
        cp = device;

    if (strcmp(cp, INTERFACE_NAME) != 0) {
        *is_ours = 0;
        return ((void*)0);
    }

    *is_ours = 1;
    p = pcap_create_common(ebuf, 0);
    if (p == ((void*)0))
        return ((void*)0);

    p->activate_op = bt_monitor_activate;

    return p;
}
