
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ partVSPBase; scalar_t__ partNumOfVSPs; int userSetExceptions; TYPE_2__* p_FmStateStruct; TYPE_3__* p_FmDriverParam; int f_BusError; int f_Exception; int resetOnInit; } ;
typedef TYPE_4__ t_Fm ;
typedef int t_Error ;
struct TYPE_9__ {scalar_t__ dma_axi_dbg_num_of_beats; int dma_cam_num_of_entries; scalar_t__ dma_comm_qtsh_asrt_emer; scalar_t__ dma_comm_qtsh_clr_emer; scalar_t__ dma_read_buf_tsh_asrt_emer; scalar_t__ dma_read_buf_tsh_clr_emer; scalar_t__ dma_write_buf_tsh_asrt_emer; scalar_t__ dma_write_buf_tsh_clr_emer; scalar_t__ dma_dbg_cnt_mode; scalar_t__ dma_emergency_bus_select; scalar_t__ dma_aid_mode; scalar_t__ disp_limit_tsh; scalar_t__ tnum_aging_period; scalar_t__ halt_on_unrecov_ecc_err; scalar_t__ dma_watchdog; scalar_t__ dma_stop_on_bus_error; } ;
struct TYPE_7__ {int majorRev; } ;
struct TYPE_8__ {int totalFifoSize; scalar_t__ totalNumOfTasks; scalar_t__ maxNumOfOpenDmas; TYPE_1__ revInfo; int fmClkFreq; } ;


 int BMI_FIFO_UNITS ;
 int BMI_MAX_FIFO_SIZE ;
 scalar_t__ BMI_MAX_NUM_OF_DMAS ;
 scalar_t__ BMI_MAX_NUM_OF_TASKS ;
 int DMA_CAM_UNITS ;
 scalar_t__ DMA_MAX_WATCHDOG ;
 scalar_t__ DMA_MODE_MAX_AXI_DBG_NUM_OF_BEATS ;
 scalar_t__ DMA_THRESH_MAX_BUF ;
 scalar_t__ DMA_THRESH_MAX_COMMQ ;
 scalar_t__ E_FMAN_DMA_AID_OUT_PORT_ID ;
 scalar_t__ E_FMAN_DMA_DBG_CNT_INT_READ_EM ;
 scalar_t__ E_FMAN_DMA_DBG_CNT_INT_WRITE_EM ;
 scalar_t__ E_FMAN_DMA_DBG_CNT_RAW_WAR_PROT ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 scalar_t__ FM_DMA_MURAM_READ_EMERGENCY ;
 scalar_t__ FM_DMA_MURAM_WRITE_EMERGENCY ;
 int FM_EX_BMI_DISPATCH_RAM_ECC ;
 int FM_EX_QMI_DOUBLE_ECC ;
 int FM_EX_QMI_SINGLE_ECC ;
 scalar_t__ FM_VSP_MAX_NUM_OF_ENTRIES ;
 scalar_t__ FPM_MAX_DISP_LIMIT ;
 scalar_t__ IsFmanCtrlCodeLoaded (TYPE_4__*) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ USEC_TO_CLK (scalar_t__,int ) ;

__attribute__((used)) static t_Error CheckFmParameters(t_Fm *p_Fm)
{
    if (IsFmanCtrlCodeLoaded(p_Fm) && !p_Fm->resetOnInit)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Old FMan CTRL code is loaded; FM must be reset!"));

    if (!p_Fm->p_FmDriverParam->dma_axi_dbg_num_of_beats ||
        (p_Fm->p_FmDriverParam->dma_axi_dbg_num_of_beats > DMA_MODE_MAX_AXI_DBG_NUM_OF_BEATS))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("axiDbgNumOfBeats has to be in the range 1 - %d", DMA_MODE_MAX_AXI_DBG_NUM_OF_BEATS));

    if (p_Fm->p_FmDriverParam->dma_cam_num_of_entries % DMA_CAM_UNITS)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_cam_num_of_entries has to be divisble by %d", DMA_CAM_UNITS));


    if (p_Fm->p_FmDriverParam->dma_comm_qtsh_asrt_emer > DMA_THRESH_MAX_COMMQ)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_comm_qtsh_asrt_emer can not be larger than %d", DMA_THRESH_MAX_COMMQ));
    if (p_Fm->p_FmDriverParam->dma_comm_qtsh_clr_emer > DMA_THRESH_MAX_COMMQ)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_comm_qtsh_clr_emer can not be larger than %d", DMA_THRESH_MAX_COMMQ));
    if (p_Fm->p_FmDriverParam->dma_comm_qtsh_clr_emer >= p_Fm->p_FmDriverParam->dma_comm_qtsh_asrt_emer)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_comm_qtsh_clr_emer must be smaller than dma_comm_qtsh_asrt_emer"));

    if (p_Fm->p_FmDriverParam->dma_read_buf_tsh_asrt_emer > DMA_THRESH_MAX_BUF)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_read_buf_tsh_asrt_emer can not be larger than %d", DMA_THRESH_MAX_BUF));
    if (p_Fm->p_FmDriverParam->dma_read_buf_tsh_clr_emer > DMA_THRESH_MAX_BUF)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_read_buf_tsh_clr_emer can not be larger than %d", DMA_THRESH_MAX_BUF));
    if (p_Fm->p_FmDriverParam->dma_read_buf_tsh_clr_emer >= p_Fm->p_FmDriverParam->dma_read_buf_tsh_asrt_emer)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_read_buf_tsh_clr_emer must be smaller than dma_read_buf_tsh_asrt_emer"));
    if (p_Fm->p_FmDriverParam->dma_write_buf_tsh_asrt_emer > DMA_THRESH_MAX_BUF)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_write_buf_tsh_asrt_emer can not be larger than %d", DMA_THRESH_MAX_BUF));
    if (p_Fm->p_FmDriverParam->dma_write_buf_tsh_clr_emer > DMA_THRESH_MAX_BUF)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_write_buf_tsh_clr_emer can not be larger than %d", DMA_THRESH_MAX_BUF));
    if (p_Fm->p_FmDriverParam->dma_write_buf_tsh_clr_emer >= p_Fm->p_FmDriverParam->dma_write_buf_tsh_asrt_emer)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("dma_write_buf_tsh_clr_emer must be smaller than dma_write_buf_tsh_asrt_emer"));
    if (!p_Fm->p_FmStateStruct->fmClkFreq)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("fmClkFreq must be set."));
    if (USEC_TO_CLK(p_Fm->p_FmDriverParam->dma_watchdog, p_Fm->p_FmStateStruct->fmClkFreq) > DMA_MAX_WATCHDOG)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("dma_watchdog depends on FM clock. dma_watchdog(in microseconds) * clk (in Mhz), may not exceed 0x08x", DMA_MAX_WATCHDOG));






    if (p_Fm->p_FmStateStruct->totalFifoSize % BMI_FIFO_UNITS)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("totalFifoSize number has to be divisible by %d", BMI_FIFO_UNITS));
    if (!p_Fm->p_FmStateStruct->totalFifoSize ||
        (p_Fm->p_FmStateStruct->totalFifoSize > BMI_MAX_FIFO_SIZE))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("totalFifoSize (currently defined as %d) has to be in the range of 256 to %d",
                      p_Fm->p_FmStateStruct->totalFifoSize,
                      BMI_MAX_FIFO_SIZE));
    if (!p_Fm->p_FmStateStruct->totalNumOfTasks ||
        (p_Fm->p_FmStateStruct->totalNumOfTasks > BMI_MAX_NUM_OF_TASKS))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("totalNumOfTasks number has to be in the range 1 - %d", BMI_MAX_NUM_OF_TASKS));







    if (p_Fm->p_FmDriverParam->disp_limit_tsh > FPM_MAX_DISP_LIMIT)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("disp_limit_tsh can't be greater than %d", FPM_MAX_DISP_LIMIT));

    if (!p_Fm->f_Exception)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Exceptions callback not provided"));
    if (!p_Fm->f_BusError)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Exceptions callback not provided"));
    return E_OK;
}
