
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_dbus {int conn; } ;
struct TYPE_4__ {struct pcap_dbus* priv; } ;
typedef TYPE_1__ pcap_t ;


 int dbus_connection_unref (int ) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;

__attribute__((used)) static void
dbus_cleanup(pcap_t *handle)
{
 struct pcap_dbus *handlep = handle->priv;

 dbus_connection_unref(handlep->conn);

 pcap_cleanup_live_common(handle);
}
