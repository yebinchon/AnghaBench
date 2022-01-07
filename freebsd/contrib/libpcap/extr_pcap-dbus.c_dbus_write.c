
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pcap_dbus {int conn; } ;
struct TYPE_7__ {int errbuf; struct pcap_dbus* priv; } ;
typedef TYPE_1__ pcap_t ;
struct TYPE_8__ {int message; } ;
typedef int DBusMessage ;
typedef TYPE_2__ DBusError ;


 TYPE_2__ DBUS_ERROR_INIT ;
 int PCAP_ERRBUF_SIZE ;
 int dbus_connection_flush (int ) ;
 int dbus_connection_send (int ,int *,int *) ;
 int dbus_error_free (TYPE_2__*) ;
 int * dbus_message_demarshal (void const*,size_t,TYPE_2__*) ;
 int dbus_message_unref (int *) ;
 int pcap_snprintf (int ,int ,char*,int ) ;

__attribute__((used)) static int
dbus_write(pcap_t *handle, const void *buf, size_t size)
{

 struct pcap_dbus *handlep = handle->priv;

 DBusError error = DBUS_ERROR_INIT;
 DBusMessage *msg;

 if (!(msg = dbus_message_demarshal(buf, size, &error))) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE, "dbus_message_demarshal() failed: %s", error.message);
  dbus_error_free(&error);
  return -1;
 }

 dbus_connection_send(handlep->conn, msg, ((void*)0));
 dbus_connection_flush(handlep->conn);

 dbus_message_unref(msg);
 return 0;
}
