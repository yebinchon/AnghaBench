
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcap_if_list_t ;
struct TYPE_3__ {int device_code; } ;
typedef TYPE_1__ dag_card_inf_t ;


 int DAGNAME_BUFSIZE ;
 int DAG_MAX_BOARDS ;
 int DAG_STREAM_MAX ;
 int PCAP_ERRBUF_SIZE ;
 int * add_dev (int *,char*,int ,char*,char*) ;
 scalar_t__ dag_attach_stream (int,int,int ,int ) ;
 int dag_close (int) ;
 int dag_detach_stream (int,int) ;
 char* dag_device_name (int ,int) ;
 int dag_open (char*) ;
 int dag_parse_name (char*,char*,int,int*) ;
 TYPE_1__* dag_pciinfo (int) ;
 int dag_rx_get_stream_count (int) ;
 int pcap_snprintf (char*,int,char*,...) ;

int
dag_findalldevs(pcap_if_list_t *devlistp, char *errbuf)
{
 char name[12];
 int c;
 char dagname[DAGNAME_BUFSIZE];
 int dagstream;
 int dagfd;
 dag_card_inf_t *inf;
 char *description;
 int stream, rxstreams;


 for (c = 0; c < DAG_MAX_BOARDS; c++) {
  pcap_snprintf(name, 12, "dag%d", c);
  if (-1 == dag_parse_name(name, dagname, DAGNAME_BUFSIZE, &dagstream))
  {
   (void) pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "dag: device name %s can't be parsed", name);
   return (-1);
  }
  if ( (dagfd = dag_open(dagname)) >= 0 ) {
   description = ((void*)0);
   if ((inf = dag_pciinfo(dagfd)))
    description = dag_device_name(inf->device_code, 1);
   if (add_dev(devlistp, name, 0, description, errbuf) == ((void*)0)) {



    return (-1);
   }
   rxstreams = dag_rx_get_stream_count(dagfd);
   for(stream=0;stream<DAG_STREAM_MAX;stream+=2) {
    if (0 == dag_attach_stream(dagfd, stream, 0, 0)) {
     dag_detach_stream(dagfd, stream);

     pcap_snprintf(name, 10, "dag%d:%d", c, stream);
     if (add_dev(devlistp, name, 0, description, errbuf) == ((void*)0)) {



      return (-1);
     }

     rxstreams--;
     if(rxstreams <= 0) {
      break;
     }
    }
   }
   dag_close(dagfd);
  }

 }
 return (0);
}
