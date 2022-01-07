
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd {int dummy; } ;
struct example {int est_out_count; int est_in_count; } ;


 int HHOOK_TCP_EST_IN ;
 int HHOOK_TCP_EST_OUT ;

__attribute__((used)) static int
example_hook(int hhook_type, int hhook_id, void *udata, void *ctx_data,
    void *hdata, struct osd *hosd)
{
 struct example *data;

 data = hdata;

 if (hhook_id == HHOOK_TCP_EST_IN)
  data->est_in_count++;
 else if (hhook_id == HHOOK_TCP_EST_OUT)
  data->est_out_count++;

 return (0);
}
