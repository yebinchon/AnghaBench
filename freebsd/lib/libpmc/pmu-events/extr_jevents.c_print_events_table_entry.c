
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_entry_data {char* topic; int * outfp; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static int print_events_table_entry(void *data, char *name, const char *event,
        char *desc, char *long_desc,
        char *pmu, char *unit, char *perpkg,
        char *metric_expr,
        char *metric_name, char *metric_group)
{
 struct perf_entry_data *pd = data;
 FILE *outfp = pd->outfp;
 char *etopic = pd->topic;





 fprintf(outfp, "{\n");

 if (name)
  fprintf(outfp, "\t.name = \"%s\",\n", name);
 if (event)
  fprintf(outfp, "\t.event = \"%s\",\n", event);
 fprintf(outfp, "\t.desc = \"%s\",\n", desc);
 fprintf(outfp, "\t.topic = \"%s\",\n", etopic);
 if (long_desc && long_desc[0])
  fprintf(outfp, "\t.long_desc = \"%s\",\n", long_desc);
 if (pmu)
  fprintf(outfp, "\t.pmu = \"%s\",\n", pmu);
 if (unit)
  fprintf(outfp, "\t.unit = \"%s\",\n", unit);
 if (perpkg)
  fprintf(outfp, "\t.perpkg = \"%s\",\n", perpkg);
 if (metric_expr)
  fprintf(outfp, "\t.metric_expr = \"%s\",\n", metric_expr);
 if (metric_name)
  fprintf(outfp, "\t.metric_name = \"%s\",\n", metric_name);
 if (metric_group)
  fprintf(outfp, "\t.metric_group = \"%s\",\n", metric_group);
 fprintf(outfp, "},\n");

 return 0;
}
