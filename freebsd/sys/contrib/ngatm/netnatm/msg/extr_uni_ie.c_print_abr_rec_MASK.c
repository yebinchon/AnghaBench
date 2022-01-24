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
struct unicx {int dummy; } ;
struct uni_abr_rec {int present; int /*<<< orphan*/  adtf; int /*<<< orphan*/  cdf; int /*<<< orphan*/  trm; int /*<<< orphan*/  nrm; } ;

/* Variables and functions */
 int UNI_ABR_REC_ADTF_P ; 
 int UNI_ABR_REC_CDF_P ; 
 int UNI_ABR_REC_NRM_P ; 
 int UNI_ABR_REC_TRM_P ; 
 int /*<<< orphan*/  FUNC0 (struct unicx*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct unicx *cx, struct uni_abr_rec *rec)
{
	if(rec->present & UNI_ABR_REC_NRM_P)
		FUNC0(cx, "nrm", "%d", rec->nrm);
	if(rec->present & UNI_ABR_REC_TRM_P)
		FUNC0(cx, "trm", "%d", rec->trm);
	if(rec->present & UNI_ABR_REC_CDF_P)
		FUNC0(cx, "cdf", "%d", rec->cdf);
	if(rec->present & UNI_ABR_REC_ADTF_P)
		FUNC0(cx, "adtf", "%d", rec->adtf);
}