
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dlt_count; int linktype; int dlt_list; int errbuf; int activated; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERROR ;
 int PCAP_ERROR_NOT_ACTIVATED ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 scalar_t__ malloc (int) ;
 int memcpy (int*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*) ;

int
pcap_list_datalinks(pcap_t *p, int **dlt_buffer)
{
 if (!p->activated)
  return (PCAP_ERROR_NOT_ACTIVATED);
 if (p->dlt_count == 0) {






  *dlt_buffer = (int*)malloc(sizeof(**dlt_buffer));
  if (*dlt_buffer == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(p->errbuf, sizeof(p->errbuf),
       errno, "malloc");
   return (PCAP_ERROR);
  }
  **dlt_buffer = p->linktype;
  return (1);
 } else {
  *dlt_buffer = (int*)calloc(sizeof(**dlt_buffer), p->dlt_count);
  if (*dlt_buffer == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(p->errbuf, sizeof(p->errbuf),
       errno, "malloc");
   return (PCAP_ERROR);
  }
  (void)memcpy(*dlt_buffer, p->dlt_list,
      sizeof(**dlt_buffer) * p->dlt_count);
  return (p->dlt_count);
 }
}
