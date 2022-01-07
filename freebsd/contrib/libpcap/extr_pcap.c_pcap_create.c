
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {char* device; } ;
struct TYPE_8__ {TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;
struct TYPE_9__ {TYPE_2__* (* create_op ) (char*,char*,int*) ;} ;


 int PCAP_ERRBUF_SIZE ;
 TYPE_6__* capture_source_types ;
 int errno ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 TYPE_2__* pcap_create_interface (char*,char*) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_snprintf (char*,size_t,char*,int const*) ;
 char* strdup (char const*) ;
 TYPE_2__* stub1 (char*,char*,int*) ;
 size_t wcslen (int *) ;

pcap_t *
pcap_create(const char *device, char *errbuf)
{
 size_t i;
 int is_theirs;
 pcap_t *p;
 char *device_str;
 if (device == ((void*)0))
  device_str = strdup("any");
 else {
   device_str = strdup(device);
 }
 if (device_str == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  return (((void*)0));
 }






 for (i = 0; capture_source_types[i].create_op != ((void*)0); i++) {
  is_theirs = 0;
  p = capture_source_types[i].create_op(device_str, errbuf,
      &is_theirs);
  if (is_theirs) {
   if (p == ((void*)0)) {



    free(device_str);
    return (((void*)0));
   }
   p->opt.device = device_str;
   return (p);
  }
 }




 p = pcap_create_interface(device_str, errbuf);
 if (p == ((void*)0)) {



  free(device_str);
  return (((void*)0));
 }
 p->opt.device = device_str;
 return (p);
}
