
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int parseCode; } ;
typedef TYPE_1__ t_FmPcdCcNode ;


 int ASSERT_COND (TYPE_1__*) ;

uint8_t FmPcdCcGetParseCode(t_Handle h_CcNode)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;

    ASSERT_COND(p_CcNode);

    return p_CcNode->parseCode;
}
