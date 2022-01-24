#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ipu_softc {int sc_fb_phys; TYPE_1__* sc_mode; } ;
struct ipu_cpmem_ch_param {int dummy; } ;
struct TYPE_2__ {int hdisplay; scalar_t__ vdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipu_cpmem_ch_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu_cpmem_ch_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ipu_cpmem_ch_param*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ipu_cpmem_ch_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ipu_cpmem_ch_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ipu_cpmem_ch_param*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ipu_cpmem_ch_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ipu_cpmem_ch_param*,int /*<<< orphan*/ ) ; 
 int DMA_CHANNEL ; 
 int DMFC_DP_CHAN ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMFC_DP_CHAN_BURST_SIZE_8 ; 
 int DMFC_DP_CHAN_DEF ; 
 unsigned long FUNC21 (int) ; 
 unsigned long FUNC22 (int) ; 
 unsigned long FUNC23 (int) ; 
 unsigned long FUNC24 (int) ; 
 unsigned long DMFC_DP_CHAN_DEF_WM_EN_5B ; 
 unsigned long DMFC_DP_CHAN_DEF_WM_EN_5F ; 
 unsigned long FUNC25 (int) ; 
 unsigned long FUNC26 (int) ; 
 int /*<<< orphan*/  DMFC_DP_CHAN_FIFO_SIZE_128 ; 
 int /*<<< orphan*/  DMFC_DP_CHAN_FIFO_SIZE_256 ; 
 unsigned long FUNC27 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC28 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC29 (int) ; 
 unsigned long FUNC30 (int) ; 
 int DMFC_GENERAL_1 ; 
 int DMFC_GENERAL_1_WAIT4EOT_5B ; 
 int DMFC_IC_CTRL ; 
 unsigned long DMFC_IC_CTRL_DISABLED ; 
 int DMFC_WR_CHAN ; 
 unsigned long DMFC_WR_CHAN_BURST_SIZE_8 ; 
 int DMFC_WR_CHAN_DEF ; 
 unsigned long FUNC31 (int) ; 
 unsigned long FUNC32 (int) ; 
 unsigned long FUNC33 (int) ; 
 unsigned long FUNC34 (int) ; 
 unsigned long DMFC_WR_CHAN_DEF_WM_EN_1 ; 
 unsigned long FUNC35 (int) ; 
 unsigned long DMFC_WR_CHAN_FIFO_SIZE_128 ; 
 int IPU_CH_DB_MODE_SEL_0 ; 
 int IPU_CH_DB_MODE_SEL_1 ; 
 int IPU_CUR_BUF_0 ; 
 int IPU_CUR_BUF_1 ; 
 int /*<<< orphan*/  IPU_PIX_FORMAT_BPP_16 ; 
 int /*<<< orphan*/  IPU_PIX_FORMAT_RGB ; 
 int FUNC36 (struct ipu_softc*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct ipu_softc*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC38 (struct ipu_softc*,int,struct ipu_cpmem_ch_param*) ; 
 int MODE_BPP ; 
 int /*<<< orphan*/  FUNC39 (struct ipu_cpmem_ch_param*) ; 

__attribute__((used)) static void
FUNC40(struct ipu_softc *sc)
{
	struct ipu_cpmem_ch_param param;
	uint32_t stride;
	uint32_t reg, db_mode_sel, cur_buf;

	stride = sc->sc_mode->hdisplay * MODE_BPP / 8;

	/* init channel parameters */
	FUNC0(&param);
	/* XXX: interlaced modes are not supported yet */
	FUNC9(&param, sc->sc_mode->hdisplay - 1);
	FUNC8(&param, sc->sc_mode->vdisplay - 1);
	FUNC16(&param, stride - 1);

	FUNC6(&param, (sc->sc_fb_phys >> 3));
	FUNC7(&param, (sc->sc_fb_phys >> 3));

	FUNC5(&param, IPU_PIX_FORMAT_BPP_16);
	FUNC13(&param, IPU_PIX_FORMAT_RGB);
	/* 16 pixels per burst access */
	FUNC12(&param, 16 - 1);

	FUNC14(&param, 0);
	FUNC15(&param, 5 - 1);
	FUNC10(&param, 5);
	FUNC11(&param, 6 - 1);
	FUNC3(&param, 11);
	FUNC4(&param, 5 - 1);
	FUNC1(&param, 16);
	FUNC2(&param, 8 - 1);

	FUNC17(&param, 0);
	FUNC18(&param, 0);

	FUNC38(sc, DMA_CHANNEL, &param);
#ifdef DEBUG
	ipu_print_channel(&param);
#endif

	/* init DMFC */
	FUNC37(sc, DMFC_IC_CTRL, DMFC_IC_CTRL_DISABLED);
	/* High resolution DP */
	FUNC37(sc, DMFC_WR_CHAN, DMFC_WR_CHAN_BURST_SIZE_8 |
	    DMFC_WR_CHAN_FIFO_SIZE_128);
	FUNC37(sc, DMFC_WR_CHAN_DEF, FUNC34(1) |
	    FUNC32(1) |
	    FUNC33(1) |
	    FUNC31(7) |
	    FUNC35(5) |
	    DMFC_WR_CHAN_DEF_WM_EN_1);

	FUNC37(sc, DMFC_DP_CHAN,
	    FUNC20(DMFC_DP_CHAN_BURST_SIZE_8) |
	    FUNC28(DMFC_DP_CHAN_FIFO_SIZE_128) |
	    FUNC30(6) /* segment 6 */ |
	    FUNC19(DMFC_DP_CHAN_BURST_SIZE_8) |
	    FUNC27(DMFC_DP_CHAN_FIFO_SIZE_256) |
	    FUNC29(2) /* segment 2 */);

	FUNC37(sc, DMFC_DP_CHAN_DEF, FUNC24(1) |
	    FUNC23(1) |
	    FUNC22(7) |
	    FUNC26(5) |
	    DMFC_DP_CHAN_DEF_WM_EN_5F |
	    FUNC21(7) |
	    FUNC25(5) |
	    DMFC_DP_CHAN_DEF_WM_EN_5B);

	reg = FUNC36(sc, DMFC_GENERAL_1);
	reg &= ~(DMFC_GENERAL_1_WAIT4EOT_5B);
	FUNC37(sc, DMFC_GENERAL_1, reg);

	/* XXX: set priority? */

	/* Set single buffer mode */
	if (DMA_CHANNEL < 32) {
		db_mode_sel = IPU_CH_DB_MODE_SEL_0;
		cur_buf = IPU_CUR_BUF_0;
	} else {
		db_mode_sel = IPU_CH_DB_MODE_SEL_1;
		cur_buf = IPU_CUR_BUF_1;
	}

	reg = FUNC36(sc, db_mode_sel);
	reg |= (1UL << (DMA_CHANNEL & 0x1f));
	FUNC37(sc, db_mode_sel, reg);

	FUNC37(sc, cur_buf, (1UL << (DMA_CHANNEL & 0x1f)));
}