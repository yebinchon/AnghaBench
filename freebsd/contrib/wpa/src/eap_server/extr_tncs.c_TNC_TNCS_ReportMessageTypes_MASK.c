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
struct tnc_if_imv {size_t num_supported_types; int /*<<< orphan*/ * supported_types; } ;
typedef  size_t TNC_UInt32 ;
typedef  int /*<<< orphan*/  TNC_Result ;
typedef  unsigned long* TNC_MessageTypeList ;
typedef  int /*<<< orphan*/  TNC_MessageType ;
typedef  scalar_t__ TNC_IMVID ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TNC_RESULT_FATAL ; 
 int /*<<< orphan*/  TNC_RESULT_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TNC_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long*,size_t) ; 
 struct tnc_if_imv* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,unsigned long) ; 

__attribute__((used)) static TNC_Result FUNC4(
	TNC_IMVID imvID,
	TNC_MessageTypeList supportedTypes,
	TNC_UInt32 typeCount)
{
	TNC_UInt32 i;
	struct tnc_if_imv *imv;

	FUNC3(MSG_DEBUG, "TNC: TNC_TNCS_ReportMessageTypes(imvID=%lu "
		   "typeCount=%lu)",
		   (unsigned long) imvID, (unsigned long) typeCount);

	for (i = 0; i < typeCount; i++) {
		FUNC3(MSG_DEBUG, "TNC: supportedTypes[%lu] = %lu",
			   i, supportedTypes[i]);
	}

	imv = FUNC2(imvID);
	if (imv == NULL)
		return TNC_RESULT_INVALID_PARAMETER;
	FUNC0(imv->supported_types);
	imv->supported_types = FUNC1(supportedTypes,
					 typeCount * sizeof(TNC_MessageType));
	if (imv->supported_types == NULL)
		return TNC_RESULT_FATAL;
	imv->num_supported_types = typeCount;

	return TNC_RESULT_SUCCESS;
}