#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int xva_mapsize; int /*<<< orphan*/ * xva_reqattrmap; } ;
typedef  TYPE_1__ xvattr_t ;
struct TYPE_11__ {scalar_t__ xoa_readonly; scalar_t__ xoa_hidden; scalar_t__ xoa_system; scalar_t__ xoa_archive; scalar_t__ xoa_immutable; scalar_t__ xoa_nounlink; scalar_t__ xoa_appendonly; scalar_t__ xoa_opaque; scalar_t__ xoa_nodump; scalar_t__ xoa_av_quarantined; scalar_t__ xoa_av_modified; scalar_t__ xoa_reparse; scalar_t__ xoa_offline; scalar_t__ xoa_sparse; int /*<<< orphan*/  xoa_av_scanstamp; int /*<<< orphan*/  xoa_createtime; } ;
typedef  TYPE_2__ xoptattr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int lr_attr_masksize; int /*<<< orphan*/  lr_attr_bitmap; } ;
typedef  TYPE_3__ lr_attr_t ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  AV_SCANSTAMP_SZ ; 
 int /*<<< orphan*/  XAT0_APPENDONLY ; 
 int /*<<< orphan*/  XAT0_ARCHIVE ; 
 int /*<<< orphan*/  XAT0_AV_MODIFIED ; 
 int /*<<< orphan*/  XAT0_AV_QUARANTINED ; 
 int /*<<< orphan*/  XAT0_HIDDEN ; 
 int /*<<< orphan*/  XAT0_IMMUTABLE ; 
 int /*<<< orphan*/  XAT0_NODUMP ; 
 int /*<<< orphan*/  XAT0_NOUNLINK ; 
 int /*<<< orphan*/  XAT0_OFFLINE ; 
 int /*<<< orphan*/  XAT0_READONLY ; 
 int /*<<< orphan*/  XAT0_REPARSE ; 
 int /*<<< orphan*/  XAT0_SPARSE ; 
 int /*<<< orphan*/  XAT0_SYSTEM ; 
 int /*<<< orphan*/  XAT_APPENDONLY ; 
 int /*<<< orphan*/  XAT_ARCHIVE ; 
 int /*<<< orphan*/  XAT_AV_MODIFIED ; 
 int /*<<< orphan*/  XAT_AV_QUARANTINED ; 
 int /*<<< orphan*/  XAT_AV_SCANSTAMP ; 
 int /*<<< orphan*/  XAT_CREATETIME ; 
 int /*<<< orphan*/  XAT_HIDDEN ; 
 int /*<<< orphan*/  XAT_IMMUTABLE ; 
 int /*<<< orphan*/  XAT_NODUMP ; 
 int /*<<< orphan*/  XAT_NOUNLINK ; 
 int /*<<< orphan*/  XAT_OFFLINE ; 
 int /*<<< orphan*/  XAT_OPAQUE ; 
 int /*<<< orphan*/  XAT_READONLY ; 
 int /*<<< orphan*/  XAT_REPARSE ; 
 int /*<<< orphan*/  XAT_SPARSE ; 
 int /*<<< orphan*/  XAT_SYSTEM ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(lr_attr_t *lrattr, xvattr_t *xvap)
{
	uint32_t	*bitmap;
	uint64_t	*attrs;
	uint64_t	*crtime;
	xoptattr_t	*xoap;
	void		*scanstamp;
	int		i;

	xoap = FUNC4(xvap);
	FUNC0(xoap);

	lrattr->lr_attr_masksize = xvap->xva_mapsize;
	bitmap = &lrattr->lr_attr_bitmap;
	for (i = 0; i != xvap->xva_mapsize; i++, bitmap++) {
		*bitmap = xvap->xva_reqattrmap[i];
	}

	/* Now pack the attributes up in a single uint64_t */
	attrs = (uint64_t *)bitmap;
	crtime = attrs + 1;
	scanstamp = (caddr_t)(crtime + 2);
	*attrs = 0;
	if (FUNC1(xvap, XAT_READONLY))
		*attrs |= (xoap->xoa_readonly == 0) ? 0 :
		    XAT0_READONLY;
	if (FUNC1(xvap, XAT_HIDDEN))
		*attrs |= (xoap->xoa_hidden == 0) ? 0 :
		    XAT0_HIDDEN;
	if (FUNC1(xvap, XAT_SYSTEM))
		*attrs |= (xoap->xoa_system == 0) ? 0 :
		    XAT0_SYSTEM;
	if (FUNC1(xvap, XAT_ARCHIVE))
		*attrs |= (xoap->xoa_archive == 0) ? 0 :
		    XAT0_ARCHIVE;
	if (FUNC1(xvap, XAT_IMMUTABLE))
		*attrs |= (xoap->xoa_immutable == 0) ? 0 :
		    XAT0_IMMUTABLE;
	if (FUNC1(xvap, XAT_NOUNLINK))
		*attrs |= (xoap->xoa_nounlink == 0) ? 0 :
		    XAT0_NOUNLINK;
	if (FUNC1(xvap, XAT_APPENDONLY))
		*attrs |= (xoap->xoa_appendonly == 0) ? 0 :
		    XAT0_APPENDONLY;
	if (FUNC1(xvap, XAT_OPAQUE))
		*attrs |= (xoap->xoa_opaque == 0) ? 0 :
		    XAT0_APPENDONLY;
	if (FUNC1(xvap, XAT_NODUMP))
		*attrs |= (xoap->xoa_nodump == 0) ? 0 :
		    XAT0_NODUMP;
	if (FUNC1(xvap, XAT_AV_QUARANTINED))
		*attrs |= (xoap->xoa_av_quarantined == 0) ? 0 :
		    XAT0_AV_QUARANTINED;
	if (FUNC1(xvap, XAT_AV_MODIFIED))
		*attrs |= (xoap->xoa_av_modified == 0) ? 0 :
		    XAT0_AV_MODIFIED;
	if (FUNC1(xvap, XAT_CREATETIME))
		FUNC2(&xoap->xoa_createtime, crtime);
	if (FUNC1(xvap, XAT_AV_SCANSTAMP))
		FUNC3(xoap->xoa_av_scanstamp, scanstamp, AV_SCANSTAMP_SZ);
	if (FUNC1(xvap, XAT_REPARSE))
		*attrs |= (xoap->xoa_reparse == 0) ? 0 :
		    XAT0_REPARSE;
	if (FUNC1(xvap, XAT_OFFLINE))
		*attrs |= (xoap->xoa_offline == 0) ? 0 :
		    XAT0_OFFLINE;
	if (FUNC1(xvap, XAT_SPARSE))
		*attrs |= (xoap->xoa_sparse == 0) ? 0 :
		    XAT0_SPARSE;
}