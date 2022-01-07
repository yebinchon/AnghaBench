
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_t ;
typedef int pcap_if_list_t ;
typedef int (* get_if_flags_func ) (char const*,int *,char*) ;
typedef int bpf_u_int32 ;


 int * add_dev (int *,char const*,int ,char const*,char*) ;
 int * find_dev (int *,char const*) ;
 int stub1 (char const*,int *,char*) ;

pcap_if_t *
find_or_add_dev(pcap_if_list_t *devlistp, const char *name, bpf_u_int32 flags,
    get_if_flags_func get_flags_func, const char *description, char *errbuf)
{
 pcap_if_t *curdev;




 curdev = find_dev(devlistp, name);
 if (curdev != ((void*)0)) {



  return (curdev);
 }
 if ((*get_flags_func)(name, &flags, errbuf) == -1) {



  return (((void*)0));
 }




 return (add_dev(devlistp, name, flags, description, errbuf));
}
