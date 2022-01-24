#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MIC_QOS_CONTROL ; 
 int /*<<< orphan*/  AR_MIC_QOS_SELECT ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK_BIT_OFF ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK_BYTE_OFF ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK_TWO_BIT ; 
 int /*<<< orphan*/  AR_TXOP_0_3 ; 
 int /*<<< orphan*/  AR_TXOP_12_15 ; 
 int /*<<< orphan*/  AR_TXOP_4_7 ; 
 int /*<<< orphan*/  AR_TXOP_8_11 ; 
 int /*<<< orphan*/  AR_TXOP_X ; 
 int AR_TXOP_X_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct ath_hal *ah)
{
    FUNC0(ah, AR_MIC_QOS_CONTROL, 0x100aa);  /* XXX magic */
    FUNC0(ah, AR_MIC_QOS_SELECT, 0x3210);    /* XXX magic */

    /* Turn on NOACK Support for QoS packets */
    FUNC0(ah, AR_QOS_NO_ACK,
        FUNC1(2, AR_QOS_NO_ACK_TWO_BIT) |
        FUNC1(5, AR_QOS_NO_ACK_BIT_OFF) |
        FUNC1(0, AR_QOS_NO_ACK_BYTE_OFF));

    /*
     * initialize TXOP for all TIDs
     */
    FUNC0(ah, AR_TXOP_X, AR_TXOP_X_VAL);
    FUNC0(ah, AR_TXOP_0_3, 0xFFFFFFFF);
    FUNC0(ah, AR_TXOP_4_7, 0xFFFFFFFF);
    FUNC0(ah, AR_TXOP_8_11, 0xFFFFFFFF);
    FUNC0(ah, AR_TXOP_12_15, 0xFFFFFFFF);
}