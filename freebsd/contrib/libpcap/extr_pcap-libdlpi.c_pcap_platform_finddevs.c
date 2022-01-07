
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pcap_if_list_t ;
struct TYPE_5__ {scalar_t__ lw_err; TYPE_2__* lw_list; int member_1; int * member_0; } ;
typedef TYPE_1__ linkwalk_t ;
struct TYPE_6__ {struct TYPE_6__* lnl_next; int linkname; } ;
typedef TYPE_2__ linknamelist_t ;


 int PCAP_ERRBUF_SIZE ;
 int dlpi_walk (int ,TYPE_1__*,int ) ;
 int errno ;
 int * find_or_add_dev (int *,int ,int ,int ,int *,char*) ;
 int free (TYPE_2__*) ;
 int get_if_flags ;
 int is_dlpi_interface ;
 int list_interfaces ;
 int pcap_findalldevs_interfaces (int *,char*,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*) ;

int
pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf)
{
 int retv = 0;

 linknamelist_t *entry, *next;
 linkwalk_t lw = {((void*)0), 0};
 int save_errno;




 if (pcap_findalldevs_interfaces(devlistp, errbuf,
     is_dlpi_interface, get_if_flags) == -1)
  return (-1);
 dlpi_walk(list_interfaces, &lw, 0);

 if (lw.lw_err != 0) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      lw.lw_err, "dlpi_walk");
  retv = -1;
  goto done;
 }


 for (entry = lw.lw_list; entry != ((void*)0); entry = entry->lnl_next) {




  if (find_or_add_dev(devlistp, entry->linkname, 0, get_if_flags,
      ((void*)0), errbuf) == ((void*)0))
   retv = -1;
 }
done:
 save_errno = errno;
 for (entry = lw.lw_list; entry != ((void*)0); entry = next) {
  next = entry->lnl_next;
  free(entry);
 }
 errno = save_errno;

 return (retv);
}
