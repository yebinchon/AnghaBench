
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_8__ {struct TYPE_8__* next; int flags; int * addresses; struct TYPE_8__* name; int * description; } ;
typedef TYPE_1__ pcap_if_t ;
struct TYPE_9__ {TYPE_1__* beginning; } ;
typedef TYPE_2__ pcap_if_list_t ;
typedef int bpf_u_int32 ;


 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ get_figure_of_merit (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 void* strdup (char const*) ;

pcap_if_t *
add_dev(pcap_if_list_t *devlistp, const char *name, bpf_u_int32 flags,
    const char *description, char *errbuf)
{
 pcap_if_t *curdev, *prevdev, *nextdev;
 u_int this_figure_of_merit, nextdev_figure_of_merit;

 curdev = malloc(sizeof(pcap_if_t));
 if (curdev == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  return (((void*)0));
 }




 curdev->next = ((void*)0);
 curdev->name = strdup(name);
 if (curdev->name == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  free(curdev);
  return (((void*)0));
 }
 if (description == ((void*)0)) {



  curdev->description = ((void*)0);
 } else {



  curdev->description = strdup(description);
  if (curdev->description == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   free(curdev->name);
   free(curdev);
   return (((void*)0));
  }
 }
 curdev->addresses = ((void*)0);
 curdev->flags = flags;





 this_figure_of_merit = get_figure_of_merit(curdev);
 prevdev = ((void*)0);
 for (;;) {



  if (prevdev == ((void*)0)) {



   nextdev = devlistp->beginning;
  } else
   nextdev = prevdev->next;




  if (nextdev == ((void*)0)) {



   break;
  }







  nextdev_figure_of_merit = get_figure_of_merit(nextdev);
  if (this_figure_of_merit < nextdev_figure_of_merit) {




   break;
  }

  prevdev = nextdev;
 }




 curdev->next = nextdev;





 if (prevdev == ((void*)0)) {




  devlistp->beginning = curdev;
 } else
  prevdev->next = curdev;
 return (curdev);
}
