
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_11__ {scalar_t__ ps_ifdrop; scalar_t__ ps_recv; scalar_t__ ps_drop; } ;
struct pcap_dag {int dag_stream; int dag_fcs_bits; int dag_timeout; int * dag_ref; TYPE_1__ stat; scalar_t__ dag_mem_top; scalar_t__ dag_mem_bottom; struct timeval required_select_timeout; int drop_attr; int dag_root; } ;
struct TYPE_12__ {char* device; int timeout; scalar_t__ immediate; } ;
struct TYPE_13__ {scalar_t__ snapshot; int linktype; int selectable_fd; int fd; int cleanup_op; int stats_op; int setnonblock_op; int getnonblock_op; int set_datalink_op; int * setdirection_op; int setfilter_op; int inject_op; int read_op; int errbuf; scalar_t__ bufsize; TYPE_2__ opt; void* linktype_ext; struct timeval* required_select_timeout; struct pcap_dag* priv; } ;
typedef TYPE_3__ pcap_t ;
struct TYPE_14__ {int device_code; } ;
typedef TYPE_4__ daginf_t ;
typedef int dag_size_t ;


 void* LT_FCS_DATALINK_EXT (int) ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 scalar_t__ MAX_DAG_SNAPLEN ;
 scalar_t__ MIN_DAG_SNAPLEN ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int atoi (char*) ;
 scalar_t__ dag_attach_stream64 (int ,int,int ,int ) ;
 scalar_t__ dag_component_get_subcomponent (int ,int ,int ) ;
 int dag_config_dispose (int *) ;
 int dag_config_get_card_fd (int *) ;
 int dag_config_get_indexed_attribute_uuid (int *,int ,int) ;
 int dag_config_get_root_component (int *) ;
 int * dag_config_init (char*) ;
 scalar_t__ dag_detach_stream (int ,int) ;
 scalar_t__ dag_get_datalink (TYPE_3__*) ;
 scalar_t__ dag_get_stream_poll64 (int ,int,int*,struct timeval*,struct timeval*) ;
 TYPE_4__* dag_info (int ) ;
 int dag_inject ;
 scalar_t__ dag_parse_name (char*,char*,scalar_t__,int*) ;
 int dag_platform_cleanup ;
 int dag_read ;
 int dag_set_datalink ;
 scalar_t__ dag_set_stream_poll64 (int ,int,int,struct timeval*,struct timeval*) ;
 int dag_setfilter ;
 int dag_setnonblock ;
 scalar_t__ dag_start_stream (int ,int) ;
 int dag_stats ;
 scalar_t__ dag_stop_stream (int ,int) ;
 int delete_pcap_dag (TYPE_3__*) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int kComponentStreamFeatures ;
 int kNullAttributeUuid ;
 int kUint32AttributeStreamDropCount ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ new_pcap_dag (TYPE_3__*) ;
 int pcap_cleanup_live_common (TYPE_3__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*,...) ;
 int pcap_getnonblock_fd ;
 int pcap_snprintf (int ,int ,char*,...) ;
 scalar_t__ snaplen ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int dag_activate(pcap_t* p)
{
 struct pcap_dag *pd = p->priv;
 char *s;
 int n;
 daginf_t* daginf;
 char * newDev = ((void*)0);
 char * device = p->opt.device;
 dag_size_t mindata;
 struct timeval maxwait;
 struct timeval poll;

 if (device == ((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "device is NULL");
  return -1;
 }


 newDev = (char *)malloc(strlen(device) + 16);
 if (newDev == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't allocate string for device name");
  goto fail;
 }


 if (dag_parse_name(device, newDev, strlen(device) + 16, &pd->dag_stream) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_parse_name");
  goto fail;
 }
 device = newDev;

 if (pd->dag_stream%2) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "dag_parse_name: tx (even numbered) streams not supported for capture");
  goto fail;
 }


 if((pd->dag_ref = dag_config_init((char *)device)) == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_config_init %s", device);
  goto fail;
 }

 if((p->fd = dag_config_get_card_fd(pd->dag_ref)) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_config_get_card_fd %s", device);
  goto fail;
 }


 if (dag_attach_stream64(p->fd, pd->dag_stream, 0, 0) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_attach_stream");
  goto failclose;
 }


 pd->drop_attr = kNullAttributeUuid;
 pd->dag_root = dag_config_get_root_component(pd->dag_ref);
 if ( dag_component_get_subcomponent(pd->dag_root, kComponentStreamFeatures, 0) )
 {
  pd->drop_attr = dag_config_get_indexed_attribute_uuid(pd->dag_ref, kUint32AttributeStreamDropCount, pd->dag_stream/2);
 }




 if (dag_get_stream_poll64(p->fd, pd->dag_stream,
    &mindata, &maxwait, &poll) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_get_stream_poll");
  goto faildetach;
 }





 pd->required_select_timeout = poll;
 p->required_select_timeout = &pd->required_select_timeout;
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;

 if (p->opt.immediate) {



  mindata = 0;
 } else {




  mindata = 65536;
 }




 maxwait.tv_sec = p->opt.timeout/1000;
 maxwait.tv_usec = (p->opt.timeout%1000) * 1000;

 if (dag_set_stream_poll64(p->fd, pd->dag_stream,
    mindata, &maxwait, &poll) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_set_stream_poll");
  goto faildetach;
 }
 if(dag_start_stream(p->fd, pd->dag_stream) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_start_stream %s", device);
  goto faildetach;
 }






 pd->dag_mem_bottom = 0;
 pd->dag_mem_top = 0;





 daginf = dag_info(p->fd);
 if ((0x4200 == daginf->device_code) || (0x4230 == daginf->device_code)) {

  pd->dag_fcs_bits = 0;


  p->linktype_ext = LT_FCS_DATALINK_EXT(0);
 } else {



  pd->dag_fcs_bits = 32;


  if ((s = getenv("ERF_FCS_BITS")) != ((void*)0)) {
   if ((n = atoi(s)) == 0 || n == 16 || n == 32) {
    pd->dag_fcs_bits = n;
   } else {
    pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
     "pcap_activate %s: bad ERF_FCS_BITS value (%d) in environment", device, n);
    goto failstop;
   }
  }




  if ((s = getenv("ERF_DONT_STRIP_FCS")) != ((void*)0)) {


   p->linktype_ext = LT_FCS_DATALINK_EXT(pd->dag_fcs_bits/16);


   pd->dag_fcs_bits = 0;
  }
 }

 pd->dag_timeout = p->opt.timeout;

 p->linktype = -1;
 if (dag_get_datalink(p) < 0)
  goto failstop;

 p->bufsize = 0;

 if (new_pcap_dag(p) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "new_pcap_dag %s", device);
  goto failstop;
 }




 p->selectable_fd = -1;

 if (newDev != ((void*)0)) {
  free((char *)newDev);
 }

 p->read_op = dag_read;
 p->inject_op = dag_inject;
 p->setfilter_op = dag_setfilter;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = dag_set_datalink;
 p->getnonblock_op = pcap_getnonblock_fd;
 p->setnonblock_op = dag_setnonblock;
 p->stats_op = dag_stats;
 p->cleanup_op = dag_platform_cleanup;
 pd->stat.ps_drop = 0;
 pd->stat.ps_recv = 0;
 pd->stat.ps_ifdrop = 0;
 return 0;

failstop:
 if (dag_stop_stream(p->fd, pd->dag_stream) < 0) {
  fprintf(stderr,"dag_stop_stream: %s\n", strerror(errno));
 }

faildetach:
 if (dag_detach_stream(p->fd, pd->dag_stream) < 0)
  fprintf(stderr,"dag_detach_stream: %s\n", strerror(errno));

failclose:
 dag_config_dispose(pd->dag_ref);
 delete_pcap_dag(p);

fail:
 pcap_cleanup_live_common(p);
 if (newDev != ((void*)0)) {
  free((char *)newDev);
 }

 return PCAP_ERROR;
}
