
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int INTERFACE_NAME ;
 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int PCAP_IF_WIRELESS ;
 int * add_dev (int *,int ,int,char*,char*) ;

int
bt_monitor_findalldevs(pcap_if_list_t *devlistp, char *err_str)
{
    int ret = 0;
    if (add_dev(devlistp, INTERFACE_NAME,
                PCAP_IF_WIRELESS|PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE,
                "Bluetooth Linux Monitor", err_str) == ((void*)0))
    {
        ret = -1;
    }

    return ret;
}
