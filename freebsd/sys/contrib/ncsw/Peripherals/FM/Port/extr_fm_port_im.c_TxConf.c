
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_6__ {size_t currBdId; int * p_BdShadow; int (* f_TxConf ) (int ,int ,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ im; int h_App; } ;
typedef TYPE_2__ t_FmPort ;
typedef scalar_t__ t_Error ;
typedef int e_TxConfType ;


 int ASSERT_COND (TYPE_2__*) ;
 int BD_GET (size_t) ;
 int BD_LENGTH_MASK ;
 int BD_R_E ;
 int BD_STATUS_AND_LENGTH (int ) ;
 int BD_STATUS_AND_LENGTH_SET (int ,int ) ;
 int BdBufferGet (int ,int ) ;
 scalar_t__ E_BUSY ;
 scalar_t__ E_OK ;
 size_t GetNextBdId (TYPE_2__*,size_t) ;
 int TX_CONF_STATUS_UNSENT ;
 int XX_PhysToVirt ;
 int e_TX_CONF_TYPE_CALLBACK ;
 int e_TX_CONF_TYPE_FLUSH ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static t_Error TxConf(t_FmPort *p_FmPort, e_TxConfType confType)
{
    t_Error retVal = E_BUSY;
    uint32_t bdStatus;
    uint16_t savedStartBdId, confBdId;

    ASSERT_COND(p_FmPort);






    confBdId = savedStartBdId = p_FmPort->im.currBdId;
    bdStatus = BD_STATUS_AND_LENGTH(BD_GET(confBdId));



    while ((!(bdStatus & BD_R_E) || (confType == e_TX_CONF_TYPE_FLUSH)) && (retVal != E_OK))
    {
        if (confType & e_TX_CONF_TYPE_CALLBACK)
            BD_STATUS_AND_LENGTH_SET(BD_GET(confBdId), 0);


        if ((confType & e_TX_CONF_TYPE_CALLBACK) && (bdStatus & BD_LENGTH_MASK))
        {
            if (p_FmPort->im.f_TxConf)
            {
                if ((confType == e_TX_CONF_TYPE_FLUSH) && (bdStatus & BD_R_E))
                    p_FmPort->im.f_TxConf(p_FmPort->h_App,
                                          BdBufferGet(XX_PhysToVirt, BD_GET(confBdId)),
                                          TX_CONF_STATUS_UNSENT,
                                          p_FmPort->im.p_BdShadow[confBdId]);
                else
                    p_FmPort->im.f_TxConf(p_FmPort->h_App,
                                          BdBufferGet(XX_PhysToVirt, BD_GET(confBdId)),
                                          0,
                                          p_FmPort->im.p_BdShadow[confBdId]);
            }
        }


        confBdId = GetNextBdId(p_FmPort, confBdId);
        if (confBdId == savedStartBdId)
            retVal = E_OK;
        bdStatus = BD_STATUS_AND_LENGTH(BD_GET(confBdId));
    }

    return retVal;
}
