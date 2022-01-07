
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node_guid_tbl; } ;
struct TYPE_6__ {TYPE_1__ subn; } ;
typedef TYPE_2__ osm_opensm_t ;
typedef int FILE ;


 int dump_qmap (int ,int *,int ,TYPE_2__*) ;
 int fprintf (int *,char*) ;
 int print_node_report ;
 int stdout ;

__attribute__((used)) static void print_report(osm_opensm_t * osm, FILE * file)
{
 fprintf(file, "\n==================================================="
  "====================================================\n"
  "Vendor      : Ty : #  : Sta : LID  : LMC : MTU  : LWA :"
  " LSA  : Port GUID        : Neighbor Port (Port #)\n");
 dump_qmap(stdout, &osm->subn.node_guid_tbl, print_node_report, osm);
}
