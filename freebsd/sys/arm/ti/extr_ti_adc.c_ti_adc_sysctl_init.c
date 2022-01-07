
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adc_softc {int sc_adc_nchannels; int* sc_adc_channels; int value; int sc_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int pinbuf ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct ti_adc_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;
 int ti_adc_clockdiv_proc ;
 int ti_adc_enable_proc ;
 struct ti_adc_softc* ti_adc_inputs ;
 int ti_adc_open_delay_proc ;
 int ti_adc_samples_avg_proc ;

__attribute__((used)) static void
ti_adc_sysctl_init(struct ti_adc_softc *sc)
{
 char pinbuf[3];
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree_node, *inp_node, *inpN_node;
 struct sysctl_oid_list *tree, *inp_tree, *inpN_tree;
 int ain, i;




 ctx = device_get_sysctl_ctx(sc->sc_dev);
 tree_node = device_get_sysctl_tree(sc->sc_dev);
 tree = SYSCTL_CHILDREN(tree_node);
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "clockdiv",
     CTLFLAG_RW | CTLTYPE_UINT, sc, 0,
     ti_adc_clockdiv_proc, "IU", "ADC clock prescaler");
 inp_node = SYSCTL_ADD_NODE(ctx, tree, OID_AUTO, "ain",
     CTLFLAG_RD, ((void*)0), "ADC inputs");
 inp_tree = SYSCTL_CHILDREN(inp_node);

 for (i = 0; i < sc->sc_adc_nchannels; i++) {
  ain = sc->sc_adc_channels[i];

  snprintf(pinbuf, sizeof(pinbuf), "%d", ain);
  inpN_node = SYSCTL_ADD_NODE(ctx, inp_tree, OID_AUTO, pinbuf,
      CTLFLAG_RD, ((void*)0), "ADC input");
  inpN_tree = SYSCTL_CHILDREN(inpN_node);

  SYSCTL_ADD_PROC(ctx, inpN_tree, OID_AUTO, "enable",
      CTLFLAG_RW | CTLTYPE_UINT, &ti_adc_inputs[ain], 0,
      ti_adc_enable_proc, "IU", "Enable ADC input");
  SYSCTL_ADD_PROC(ctx, inpN_tree, OID_AUTO, "open_delay",
      CTLFLAG_RW | CTLTYPE_UINT, &ti_adc_inputs[ain], 0,
      ti_adc_open_delay_proc, "IU", "ADC open delay");
  SYSCTL_ADD_PROC(ctx, inpN_tree, OID_AUTO, "samples_avg",
      CTLFLAG_RW | CTLTYPE_UINT, &ti_adc_inputs[ain], 0,
      ti_adc_samples_avg_proc, "IU", "ADC samples average");
  SYSCTL_ADD_INT(ctx, inpN_tree, OID_AUTO, "input",
      CTLFLAG_RD, &ti_adc_inputs[ain].value, 0,
      "Converted raw value for the ADC input");
 }
}
