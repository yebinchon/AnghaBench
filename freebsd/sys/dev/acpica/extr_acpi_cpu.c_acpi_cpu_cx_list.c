
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct acpi_cpu_softc {int cpu_cx_count; TYPE_1__* cpu_cx_states; int cpu_cx_supported; } ;
struct TYPE_2__ {int trans_lat; int type; } ;


 int SBUF_FIXEDLEN ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,int ,int,int ) ;
 int sbuf_printf (struct sbuf*,char*,int,int ,int ) ;
 int sbuf_trim (struct sbuf*) ;

__attribute__((used)) static void
acpi_cpu_cx_list(struct acpi_cpu_softc *sc)
{
    struct sbuf sb;
    int i;




    sbuf_new(&sb, sc->cpu_cx_supported, sizeof(sc->cpu_cx_supported),
 SBUF_FIXEDLEN);
    for (i = 0; i < sc->cpu_cx_count; i++)
 sbuf_printf(&sb, "C%d/%d/%d ", i + 1, sc->cpu_cx_states[i].type,
     sc->cpu_cx_states[i].trans_lat);
    sbuf_trim(&sb);
    sbuf_finish(&sb);
}
