
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_vls; int high_limit; char* vlarb_high; char* vlarb_low; char* sl2vl; } ;
typedef TYPE_1__ osm_qos_options_t ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,char const*,int,char const*,int,char const*,char*,char const*,char*,char const*,char*) ;

__attribute__((used)) static int subn_dump_qos_options(FILE * file, const char *set_name,
     const char *prefix, osm_qos_options_t * opt)
{
 return fprintf(file, "# %s\n"
         "%s_max_vls %u\n"
         "%s_high_limit %d\n"
         "%s_vlarb_high %s\n"
         "%s_vlarb_low %s\n"
         "%s_sl2vl %s\n",
         set_name,
         prefix, opt->max_vls,
         prefix, opt->high_limit,
         prefix, opt->vlarb_high,
         prefix, opt->vlarb_low, prefix, opt->sl2vl);
}
