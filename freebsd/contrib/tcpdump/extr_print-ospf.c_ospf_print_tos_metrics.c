
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tos_metric; int tos_type; } ;
struct TYPE_3__ {int link_tos_count; } ;
union un_tos {TYPE_2__ metrics; TYPE_1__ link; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (union un_tos const) ;
 int ospf_topology_values ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static int
ospf_print_tos_metrics(netdissect_options *ndo,
                       const union un_tos *tos)
{
    int metric_count;
    int toscount;

    toscount = tos->link.link_tos_count+1;
    metric_count = 0;




    while (toscount > 0) {
        ND_TCHECK(*tos);
        ND_PRINT((ndo, "\n\t\ttopology %s (%u), metric %u",
               tok2str(ospf_topology_values, "Unknown",
                       metric_count ? tos->metrics.tos_type : 0),
               metric_count ? tos->metrics.tos_type : 0,
               EXTRACT_16BITS(&tos->metrics.tos_metric)));
        metric_count++;
        tos++;
        toscount--;
    }
    return 0;
trunc:
    return 1;
}
