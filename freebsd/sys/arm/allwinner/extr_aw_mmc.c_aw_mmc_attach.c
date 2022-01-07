
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int f_min; int f_max; int host_ocr; int caps; } ;
struct aw_mmc_softc {int aw_timeout; int * devq; int sim_mtx; int * sim; int * aw_res; int aw_intrhand; int aw_mtx; int aw_timeoutc; int * aw_dev; int * ccb; TYPE_1__ aw_host; int * aw_reg_vqmmc; int * aw_reg_vmmc; int aw_clk_mmc; int aw_clk_ahb; int aw_rst_ahb; int * aw_req; struct aw_mmc_conf* aw_mmc_conf; } ;
struct aw_mmc_conf {int dummy; } ;
typedef int phandle_t ;
typedef int * device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;


 size_t AW_MMC_IRQRES ;
 int CARD_ID_FREQUENCY ;
 int CLK_SET_ROUND_DOWN ;
 int CTLFLAG_RW ;
 int ENXIO ;
 int FALSE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_HSPEED ;
 int MMC_CAP_MMC_DDR52 ;
 int MMC_CAP_SIGNALING_180 ;
 int MMC_CAP_SIGNALING_330 ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 int MMC_OCR_320_330 ;
 int MMC_OCR_330_340 ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int aw_mmc_cam_action ;
 int aw_mmc_cam_poll ;
 int aw_mmc_intr ;
 int aw_mmc_res_spec ;
 scalar_t__ aw_mmc_reset (struct aw_mmc_softc*) ;
 scalar_t__ aw_mmc_setup_dma (struct aw_mmc_softc*) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int *,int ,int *) ;
 int bus_release_resources (int *,int ,int *) ;
 scalar_t__ bus_setup_intr (int *,int ,int,int *,int ,struct aw_mmc_softc*,int *) ;
 int bus_teardown_intr (int *,int ,int ) ;
 int callout_drain (int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int * cam_sim_alloc_dev (int ,int ,char*,struct aw_mmc_softc*,int *,int *,int,int,int *) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int * cam_simq_alloc (int) ;
 int cam_simq_free (int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int *,int ,char*,int *) ;
 int clk_set_freq (int ,int ,int ) ;
 int compat_data ;
 int * device_add_child (int *,char*,int) ;
 int device_delete_child (int *,int *) ;
 char* device_get_nameunit (int *) ;
 struct aw_mmc_softc* device_get_softc (int *) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int *) ;
 int device_get_sysctl_tree (int *) ;
 int device_printf (int *,char*) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_name (int *,int ,char*,int *) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ofw_bus_get_node (int *) ;
 TYPE_2__* ofw_bus_search_compatible (int *,int ) ;
 scalar_t__ regulator_check_voltage (int *,int) ;
 scalar_t__ regulator_get_by_ofw_property (int *,int ,char*,int **) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int *,int ) ;

__attribute__((used)) static int
aw_mmc_attach(device_t dev)
{
 device_t child;
 struct aw_mmc_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *tree;
 uint32_t bus_width, max_freq;
 phandle_t node;
 int error;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);
 sc->aw_dev = dev;

 sc->aw_mmc_conf = (struct aw_mmc_conf *)ofw_bus_search_compatible(dev, compat_data)->ocd_data;


 sc->aw_req = ((void*)0);

 if (bus_alloc_resources(dev, aw_mmc_res_spec, sc->aw_res) != 0) {
  device_printf(dev, "cannot allocate device resources\n");
  return (ENXIO);
 }
 if (bus_setup_intr(dev, sc->aw_res[AW_MMC_IRQRES],
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), aw_mmc_intr, sc,
     &sc->aw_intrhand)) {
  bus_release_resources(dev, aw_mmc_res_spec, sc->aw_res);
  device_printf(dev, "cannot setup interrupt handler\n");
  return (ENXIO);
 }
 mtx_init(&sc->aw_mtx, device_get_nameunit(sc->aw_dev), "aw_mmc",
     MTX_DEF);
 callout_init_mtx(&sc->aw_timeoutc, &sc->aw_mtx, 0);


 if (hwreset_get_by_ofw_name(dev, 0, "ahb", &sc->aw_rst_ahb) == 0) {
  error = hwreset_deassert(sc->aw_rst_ahb);
  if (error != 0) {
   device_printf(dev, "cannot de-assert reset\n");
   goto fail;
  }
 }


 error = clk_get_by_ofw_name(dev, 0, "ahb", &sc->aw_clk_ahb);
 if (error != 0) {
  device_printf(dev, "cannot get ahb clock\n");
  goto fail;
 }
 error = clk_enable(sc->aw_clk_ahb);
 if (error != 0) {
  device_printf(dev, "cannot enable ahb clock\n");
  goto fail;
 }
 error = clk_get_by_ofw_name(dev, 0, "mmc", &sc->aw_clk_mmc);
 if (error != 0) {
  device_printf(dev, "cannot get mmc clock\n");
  goto fail;
 }
 error = clk_set_freq(sc->aw_clk_mmc, CARD_ID_FREQUENCY,
     CLK_SET_ROUND_DOWN);
 if (error != 0) {
  device_printf(dev, "cannot init mmc clock\n");
  goto fail;
 }
 error = clk_enable(sc->aw_clk_mmc);
 if (error != 0) {
  device_printf(dev, "cannot enable mmc clock\n");
  goto fail;
 }

 sc->aw_timeout = 10;
 ctx = device_get_sysctl_ctx(dev);
 tree = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "req_timeout", CTLFLAG_RW,
     &sc->aw_timeout, 0, "Request timeout in seconds");


 if (aw_mmc_reset(sc) != 0) {
  device_printf(dev, "cannot reset the controller\n");
  goto fail;
 }

 if (aw_mmc_setup_dma(sc) != 0) {
  device_printf(sc->aw_dev, "Couldn't setup DMA!\n");
  goto fail;
 }

 if (OF_getencprop(node, "bus-width", &bus_width, sizeof(uint32_t)) <= 0)
  bus_width = 4;

 if (regulator_get_by_ofw_property(dev, 0, "vmmc-supply",
     &sc->aw_reg_vmmc) == 0) {
  if (bootverbose)
   device_printf(dev, "vmmc-supply regulator found\n");
 }
 if (regulator_get_by_ofw_property(dev, 0, "vqmmc-supply",
     &sc->aw_reg_vqmmc) == 0 && bootverbose) {
  if (bootverbose)
   device_printf(dev, "vqmmc-supply regulator found\n");
 }

 sc->aw_host.f_min = 400000;

 if (OF_getencprop(node, "max-frequency", &max_freq,
     sizeof(uint32_t)) <= 0)
  max_freq = 52000000;
 sc->aw_host.f_max = max_freq;

 sc->aw_host.host_ocr = MMC_OCR_320_330 | MMC_OCR_330_340;
 sc->aw_host.caps = MMC_CAP_HSPEED | MMC_CAP_UHS_SDR12 |
      MMC_CAP_UHS_SDR25 | MMC_CAP_UHS_SDR50 |
      MMC_CAP_UHS_DDR50 | MMC_CAP_MMC_DDR52;

 if (sc->aw_reg_vqmmc != ((void*)0)) {
  if (regulator_check_voltage(sc->aw_reg_vqmmc, 1800000) == 0)
   sc->aw_host.caps |= MMC_CAP_SIGNALING_180;
  if (regulator_check_voltage(sc->aw_reg_vqmmc, 3300000) == 0)
   sc->aw_host.caps |= MMC_CAP_SIGNALING_330;
 } else
  sc->aw_host.caps |= MMC_CAP_SIGNALING_330;

 if (bus_width >= 4)
  sc->aw_host.caps |= MMC_CAP_4_BIT_DATA;
 if (bus_width >= 8)
  sc->aw_host.caps |= MMC_CAP_8_BIT_DATA;
 child = device_add_child(dev, "mmc", -1);
 if (child == ((void*)0)) {
  device_printf(dev, "attaching MMC bus failed!\n");
  goto fail;
 }
 if (device_probe_and_attach(child) != 0) {
  device_printf(dev, "attaching MMC child failed!\n");
  device_delete_child(dev, child);
  goto fail;
 }

 return (0);

fail:
 callout_drain(&sc->aw_timeoutc);
 mtx_destroy(&sc->aw_mtx);
 bus_teardown_intr(dev, sc->aw_res[AW_MMC_IRQRES], sc->aw_intrhand);
 bus_release_resources(dev, aw_mmc_res_spec, sc->aw_res);
 return (ENXIO);
}
