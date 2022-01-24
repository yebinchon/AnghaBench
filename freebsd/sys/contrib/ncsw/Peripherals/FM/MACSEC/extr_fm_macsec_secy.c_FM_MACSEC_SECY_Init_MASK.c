#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/  cipherSuite; int /*<<< orphan*/  sci; } ;
struct TYPE_14__ {int numOfRxSc; size_t scId; int numOfTxSc; int exceptions; int events; struct TYPE_14__* p_FmMacsecSecYDriverParam; TYPE_2__ txScParams; int /*<<< orphan*/  h_FmMacsec; TYPE_1__* sa; struct TYPE_14__* p_TxSc; void* type; struct TYPE_14__* p_RxSc; scalar_t__ isPointToPoint; } ;
typedef  TYPE_3__ t_SecYSc ;
typedef  scalar_t__ t_Handle ;
typedef  TYPE_3__ t_FmMacsecSecYDriverParam ;
typedef  TYPE_3__ t_FmMacsecSecY ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  void* e_ScSaId ;
struct TYPE_12__ {void* saId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CheckFmMacsecSecYParameters ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int FM_MACSEC_SECY_EV_NEXT_PN ; 
 int FM_MACSEC_SECY_EX_FRAME_DISCARDED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FmMacsecSecYEventsIsr ; 
 int /*<<< orphan*/  FmMacsecSecYExceptionsIsr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 size_t MAX_NUM_OF_SA_PER_SC ; 
 int NUM_OF_RX_SC ; 
 int NUM_OF_TX_SC ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SECY_AN_FREE_VALUE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_NORMAL ; 
 int /*<<< orphan*/  e_FM_MACSEC_EV_TX_SC_NEXT_PN ; 
 int /*<<< orphan*/  e_FM_MACSEC_EX_TX_SC ; 
 int /*<<< orphan*/  e_FM_MACSEC_MOD_SC_TX ; 
 void* e_SC_RX ; 
 void* e_SC_TX ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC13(t_Handle h_FmMacsecSecY)
{
    t_FmMacsecSecY              *p_FmMacsecSecY = (t_FmMacsecSecY *)h_FmMacsecSecY;
    t_FmMacsecSecYDriverParam   *p_FmMacsecSecYDriverParam = NULL;
    uint32_t                    rxScIds[NUM_OF_RX_SC], txScIds[NUM_OF_TX_SC], i, j;
    t_Error                     err;

    FUNC9(p_FmMacsecSecY, E_INVALID_HANDLE);
    FUNC9(p_FmMacsecSecY->p_FmMacsecSecYDriverParam, E_INVALID_HANDLE);

    FUNC0(p_FmMacsecSecY, CheckFmMacsecSecYParameters);

    p_FmMacsecSecYDriverParam = p_FmMacsecSecY->p_FmMacsecSecYDriverParam;

    if ((p_FmMacsecSecY->isPointToPoint) &&
        ((err = FUNC7(p_FmMacsecSecY->h_FmMacsec, TRUE)) != E_OK))
        FUNC8(MAJOR, err, ("Can't set Poin-to-Point"));

    /* Rx Sc Allocation */
    p_FmMacsecSecY->p_RxSc = (t_SecYSc *)FUNC11(sizeof(t_SecYSc) * p_FmMacsecSecY->numOfRxSc);
    if (!p_FmMacsecSecY->p_RxSc)
        FUNC8(MAJOR, E_NO_MEMORY, ("FM MACSEC SECY RX SC"));
    FUNC12(p_FmMacsecSecY->p_RxSc, 0, sizeof(t_SecYSc) * p_FmMacsecSecY->numOfRxSc);
    if ((err = FUNC2(p_FmMacsecSecY->h_FmMacsec, e_SC_RX, p_FmMacsecSecY->isPointToPoint, p_FmMacsecSecY->numOfRxSc, rxScIds)) != E_OK)
    {
        if (p_FmMacsecSecY->p_TxSc)
            FUNC10(p_FmMacsecSecY->p_TxSc);
        if (p_FmMacsecSecY->p_RxSc)
            FUNC10(p_FmMacsecSecY->p_RxSc);
        return FUNC1(err);
    }
    for (i=0; i<p_FmMacsecSecY->numOfRxSc; i++)
    {
        p_FmMacsecSecY->p_RxSc[i].scId  = rxScIds[i];
        p_FmMacsecSecY->p_RxSc[i].type  = e_SC_RX;
        for (j=0; j<MAX_NUM_OF_SA_PER_SC;j++)
            p_FmMacsecSecY->p_RxSc[i].sa[j].saId = (e_ScSaId)SECY_AN_FREE_VALUE;
    }

    /* Tx Sc Allocation */
    p_FmMacsecSecY->p_TxSc = (t_SecYSc *)FUNC11(sizeof(t_SecYSc) * p_FmMacsecSecY->numOfTxSc);
    if (!p_FmMacsecSecY->p_TxSc)
        FUNC8(MAJOR, E_NO_MEMORY, ("FM MACSEC SECY TX SC"));
    FUNC12(p_FmMacsecSecY->p_TxSc, 0, sizeof(t_SecYSc) * p_FmMacsecSecY->numOfTxSc);

    if ((err = FUNC2(p_FmMacsecSecY->h_FmMacsec, e_SC_TX, p_FmMacsecSecY->isPointToPoint, p_FmMacsecSecY->numOfTxSc, txScIds)) != E_OK)
    {
        if (p_FmMacsecSecY->p_TxSc)
            FUNC10(p_FmMacsecSecY->p_TxSc);
        if (p_FmMacsecSecY->p_RxSc)
            FUNC10(p_FmMacsecSecY->p_RxSc);
        return FUNC1(err);
    }
    for (i=0; i<p_FmMacsecSecY->numOfTxSc; i++)
    {
        p_FmMacsecSecY->p_TxSc[i].scId  = txScIds[i];
        p_FmMacsecSecY->p_TxSc[i].type  = e_SC_TX;
        for (j=0; j<MAX_NUM_OF_SA_PER_SC;j++)
            p_FmMacsecSecY->p_TxSc[i].sa[j].saId = (e_ScSaId)SECY_AN_FREE_VALUE;
        FUNC3(p_FmMacsecSecY->h_FmMacsec,
                             e_FM_MACSEC_MOD_SC_TX,
                             (uint8_t)txScIds[i],
                             e_FM_INTR_TYPE_ERR,
                             FmMacsecSecYExceptionsIsr,
                             p_FmMacsecSecY);
        FUNC3(p_FmMacsecSecY->h_FmMacsec,
                             e_FM_MACSEC_MOD_SC_TX,
                             (uint8_t)txScIds[i],
                             e_FM_INTR_TYPE_NORMAL,
                             FmMacsecSecYEventsIsr,
                             p_FmMacsecSecY);

        if (p_FmMacsecSecY->exceptions & FM_MACSEC_SECY_EX_FRAME_DISCARDED)
            FUNC6(p_FmMacsecSecY->h_FmMacsec, e_FM_MACSEC_EX_TX_SC, txScIds[i], TRUE);
        if (p_FmMacsecSecY->events & FM_MACSEC_SECY_EV_NEXT_PN)
            FUNC5(p_FmMacsecSecY->h_FmMacsec, e_FM_MACSEC_EV_TX_SC_NEXT_PN, txScIds[i], TRUE);
    }

    FUNC4(p_FmMacsecSecY,
                         p_FmMacsecSecYDriverParam->txScParams.sci,
                         p_FmMacsecSecYDriverParam->txScParams.cipherSuite,
                         e_SC_TX);
    FUNC10(p_FmMacsecSecYDriverParam);
    p_FmMacsecSecY->p_FmMacsecSecYDriverParam = NULL;

    return E_OK;
}