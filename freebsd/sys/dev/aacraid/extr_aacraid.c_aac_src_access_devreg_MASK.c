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
typedef  int u_int32_t ;
struct aac_softc {int /*<<< orphan*/  msi_enabled; } ;

/* Variables and functions */
#define  AAC_CLEAR_AIF_BIT 134 
#define  AAC_CLEAR_SYNC_BIT 133 
#define  AAC_DISABLE_INTERRUPT 132 
#define  AAC_DISABLE_MSIX 131 
#define  AAC_ENABLE_INTERRUPT 130 
#define  AAC_ENABLE_INTX 129 
#define  AAC_ENABLE_MSIX 128 
 int AAC_INT_DISABLE_ALL ; 
 int AAC_INT_ENABLE_TYPE1_INTX ; 
 int AAC_INT_ENABLE_TYPE1_MSIX ; 
 int FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AAC_SRC_IDBR ; 
 int /*<<< orphan*/  AAC_SRC_IOAR ; 
 int /*<<< orphan*/  AAC_SRC_OIMR ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int PMC_ALL_INTERRUPT_BITS ; 
 int PMC_GLOBAL_INT_BIT0 ; 
 int PMC_GLOBAL_INT_BIT2 ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct aac_softc *sc, int mode)
{
	u_int32_t val;

	FUNC2(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	switch (mode) {
	case AAC_ENABLE_INTERRUPT:
		FUNC1(sc, AAC_SRC_OIMR, 
			(sc->msi_enabled ? AAC_INT_ENABLE_TYPE1_MSIX :
				           AAC_INT_ENABLE_TYPE1_INTX));
		break;

	case AAC_DISABLE_INTERRUPT:
		FUNC1(sc, AAC_SRC_OIMR, AAC_INT_DISABLE_ALL);
		break;

	case AAC_ENABLE_MSIX:
		/* set bit 6 */
		val = FUNC0(sc, AAC_SRC_IDBR);
		val |= 0x40;
		FUNC1(sc, AAC_SRC_IDBR, val);		
		FUNC0(sc, AAC_SRC_IDBR);
		/* unmask int. */
		val = PMC_ALL_INTERRUPT_BITS;
		FUNC1(sc, AAC_SRC_IOAR, val);
		val = FUNC0(sc, AAC_SRC_OIMR);
		FUNC1(sc, AAC_SRC_OIMR, 
			val & (~(PMC_GLOBAL_INT_BIT2 | PMC_GLOBAL_INT_BIT0)));
		break;

	case AAC_DISABLE_MSIX:
		/* reset bit 6 */
		val = FUNC0(sc, AAC_SRC_IDBR);
		val &= ~0x40;
		FUNC1(sc, AAC_SRC_IDBR, val);		
		FUNC0(sc, AAC_SRC_IDBR);
		break;

	case AAC_CLEAR_AIF_BIT:
		/* set bit 5 */
		val = FUNC0(sc, AAC_SRC_IDBR);
		val |= 0x20;
		FUNC1(sc, AAC_SRC_IDBR, val);		
		FUNC0(sc, AAC_SRC_IDBR);
		break;

	case AAC_CLEAR_SYNC_BIT:
		/* set bit 4 */
		val = FUNC0(sc, AAC_SRC_IDBR);
		val |= 0x10;
		FUNC1(sc, AAC_SRC_IDBR, val);		
		FUNC0(sc, AAC_SRC_IDBR);
		break;

	case AAC_ENABLE_INTX:
		/* set bit 7 */
		val = FUNC0(sc, AAC_SRC_IDBR);
		val |= 0x80;
		FUNC1(sc, AAC_SRC_IDBR, val);		
		FUNC0(sc, AAC_SRC_IDBR);
		/* unmask int. */
		val = PMC_ALL_INTERRUPT_BITS;
		FUNC1(sc, AAC_SRC_IOAR, val);
		val = FUNC0(sc, AAC_SRC_OIMR);
		FUNC1(sc, AAC_SRC_OIMR, 
			val & (~(PMC_GLOBAL_INT_BIT2)));
		break;
	
	default:
		break;
	}
}