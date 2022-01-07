
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tstamp_type_count; int tstamp_type_list; int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERROR ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int memcpy (int*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*) ;

int
pcap_list_tstamp_types(pcap_t *p, int **tstamp_typesp)
{
 if (p->tstamp_type_count == 0) {



  *tstamp_typesp = ((void*)0);
 } else {
  *tstamp_typesp = (int*)calloc(sizeof(**tstamp_typesp),
      p->tstamp_type_count);
  if (*tstamp_typesp == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(p->errbuf, sizeof(p->errbuf),
       errno, "malloc");
   return (PCAP_ERROR);
  }
  (void)memcpy(*tstamp_typesp, p->tstamp_type_list,
      sizeof(**tstamp_typesp) * p->tstamp_type_count);
 }
 return (p->tstamp_type_count);
}
