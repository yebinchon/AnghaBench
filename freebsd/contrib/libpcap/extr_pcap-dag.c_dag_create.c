
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct pcap_dag {int dummy; } ;
struct TYPE_5__ {int tstamp_precision_count; int * tstamp_precision_list; int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 long DAG_MAX_BOARDS ;
 long DAG_STREAM_MAX ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_TSTAMP_PRECISION_MICRO ;
 int PCAP_TSTAMP_PRECISION_NANO ;
 int dag_activate ;
 int errno ;
 int * malloc (int) ;
 int pcap_close (TYPE_1__*) ;
 TYPE_1__* pcap_create_common (char*,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;
 long strtol (char const*,char**,int) ;

pcap_t *dag_create(const char *device, char *ebuf, int *is_ours)
{
 const char *cp;
 char *cpend;
 long devnum;
 pcap_t *p;
 long stream = 0;


 cp = strrchr(device, '/');
 if (cp == ((void*)0))
  cp = device;

 if (strncmp(cp, "dag", 3) != 0) {

  *is_ours = 0;
  return ((void*)0);
 }

 cp += 3;
 devnum = strtol(cp, &cpend, 10);
 if (*cpend == ':') {

  stream = strtol(++cpend, &cpend, 10);
 }

 if (cpend == cp || *cpend != '\0') {

  *is_ours = 0;
  return ((void*)0);
 }

 if (devnum < 0 || devnum >= DAG_MAX_BOARDS) {

  *is_ours = 0;
  return ((void*)0);
 }

 if (stream <0 || stream >= DAG_STREAM_MAX) {

  *is_ours = 0;
  return ((void*)0);
 }


 *is_ours = 1;

 p = pcap_create_common(ebuf, sizeof (struct pcap_dag));
 if (p == ((void*)0))
  return ((void*)0);

 p->activate_op = dag_activate;
 p->tstamp_precision_count = 2;
 p->tstamp_precision_list = malloc(2 * sizeof(u_int));
 if (p->tstamp_precision_list == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  pcap_close(p);
  return ((void*)0);
 }
 p->tstamp_precision_list[0] = PCAP_TSTAMP_PRECISION_MICRO;
 p->tstamp_precision_list[1] = PCAP_TSTAMP_PRECISION_NANO;
 return p;
}
