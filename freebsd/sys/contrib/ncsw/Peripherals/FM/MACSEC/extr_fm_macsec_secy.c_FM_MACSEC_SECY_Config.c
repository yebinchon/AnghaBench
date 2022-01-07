
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* t_Handle ;
typedef int t_FmMacsecSecYSCParams ;
struct TYPE_10__ {int txScParams; int numReceiveChannels; int h_App; int f_Exception; int f_Event; int h_FmMacsec; } ;
typedef TYPE_2__ t_FmMacsecSecYParams ;
struct TYPE_9__ {int txScParams; struct TYPE_9__* p_FmMacsecSecYDriverParam; int events; int exceptions; int numOfTxSc; int numOfRxSc; int isPointToPoint; int sciInsertionMode; int protectFrames; int replayWindow; int replayProtect; int validateFrames; int confidentialityOffset; int confidentialityEnable; int h_App; int f_Exception; int f_Event; int h_FmMacsec; } ;
typedef TYPE_1__ t_FmMacsecSecYDriverParam ;
typedef TYPE_1__ t_FmMacsecSecY ;


 int DEFAULT_confidentialityEnable ;
 int DEFAULT_confidentialityOffset ;
 int DEFAULT_events ;
 int DEFAULT_exceptions ;
 int DEFAULT_numOfTxSc ;
 int DEFAULT_protectFrames ;
 int DEFAULT_ptp ;
 int DEFAULT_replayEnable ;
 int DEFAULT_replayWindow ;
 int DEFAULT_sciInsertionMode ;
 int DEFAULT_validateFrames ;
 int E_NO_MEMORY ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Handle FM_MACSEC_SECY_Config(t_FmMacsecSecYParams *p_FmMacsecSecYParam)
{
    t_FmMacsecSecY *p_FmMacsecSecY;


    p_FmMacsecSecY = (t_FmMacsecSecY *) XX_Malloc(sizeof(t_FmMacsecSecY));
    if (!p_FmMacsecSecY)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM MACSEC SECY driver structure"));
        return ((void*)0);
    }
    memset(p_FmMacsecSecY, 0, sizeof(t_FmMacsecSecY));


    p_FmMacsecSecY->p_FmMacsecSecYDriverParam = (t_FmMacsecSecYDriverParam *)XX_Malloc(sizeof(t_FmMacsecSecYDriverParam));
    if (!p_FmMacsecSecY->p_FmMacsecSecYDriverParam)
    {
        XX_Free(p_FmMacsecSecY);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM MACSEC SECY driver parameters"));
        return ((void*)0);
    }
    memset(p_FmMacsecSecY->p_FmMacsecSecYDriverParam, 0, sizeof(t_FmMacsecSecYDriverParam));


    p_FmMacsecSecY->h_FmMacsec = p_FmMacsecSecYParam->h_FmMacsec;
    p_FmMacsecSecY->f_Event = p_FmMacsecSecYParam->f_Event;
    p_FmMacsecSecY->f_Exception = p_FmMacsecSecYParam->f_Exception;
    p_FmMacsecSecY->h_App = p_FmMacsecSecYParam->h_App;
    p_FmMacsecSecY->confidentialityEnable = DEFAULT_confidentialityEnable;
    p_FmMacsecSecY->confidentialityOffset = DEFAULT_confidentialityOffset;
    p_FmMacsecSecY->validateFrames = DEFAULT_validateFrames;
    p_FmMacsecSecY->replayProtect = DEFAULT_replayEnable;
    p_FmMacsecSecY->replayWindow = DEFAULT_replayWindow;
    p_FmMacsecSecY->protectFrames = DEFAULT_protectFrames;
    p_FmMacsecSecY->sciInsertionMode = DEFAULT_sciInsertionMode;
    p_FmMacsecSecY->isPointToPoint = DEFAULT_ptp;
    p_FmMacsecSecY->numOfRxSc = p_FmMacsecSecYParam->numReceiveChannels;
    p_FmMacsecSecY->numOfTxSc = DEFAULT_numOfTxSc;
    p_FmMacsecSecY->exceptions = DEFAULT_exceptions;
    p_FmMacsecSecY->events = DEFAULT_events;

    memcpy(&p_FmMacsecSecY->p_FmMacsecSecYDriverParam->txScParams,
           &p_FmMacsecSecYParam->txScParams,
           sizeof(t_FmMacsecSecYSCParams));
    return p_FmMacsecSecY;
}
