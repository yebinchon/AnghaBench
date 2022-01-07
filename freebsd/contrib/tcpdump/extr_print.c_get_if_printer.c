
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* ndo_error ) (TYPE_1__*,char*,int) ;} ;
typedef TYPE_1__ netdissect_options ;
typedef int * if_printer ;


 int * lookup_printer (int) ;
 char* pcap_datalink_val_to_name (int) ;
 int stub1 (TYPE_1__*,char*,char const*) ;
 int stub2 (TYPE_1__*,char*,int) ;

if_printer
get_if_printer(netdissect_options *ndo, int type)
{
 const char *dltname;
 if_printer printer;

 printer = lookup_printer(type);
 if (printer == ((void*)0)) {
  dltname = pcap_datalink_val_to_name(type);
  if (dltname != ((void*)0))
   (*ndo->ndo_error)(ndo,
       "packet printing is not supported for link type %s: use -w",
       dltname);
  else
   (*ndo->ndo_error)(ndo,
       "packet printing is not supported for link type %d: use -w", type);
 }
 return printer;
}
