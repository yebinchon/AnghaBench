#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union ses_elm_sas_hdr {int dummy; } ses_elm_sas_hdr ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_2__* ses_types; } ;
typedef  TYPE_3__ ses_cache_t ;
typedef  int /*<<< orphan*/  enc_softc_t ;
struct TYPE_11__ {TYPE_3__* private; } ;
typedef  TYPE_4__ enc_cache_t ;
struct TYPE_9__ {TYPE_1__* hdr; } ;
struct TYPE_8__ {int /*<<< orphan*/  etype_elm_type; } ;

/* Variables and functions */
 int EIO ; 
#define  ELMTYP_ARRAY_DEV 135 
#define  ELMTYP_DEVICE 134 
#define  ELMTYP_ESCC 133 
#define  ELMTYP_SAS_EXP 132 
#define  ELMTYP_SCSI_INI 131 
#define  ELMTYP_SCSI_TGT 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,...) ; 
 int ENODEV ; 
#define  SES_SASOBJ_TYPE_OTHER 129 
#define  SES_SASOBJ_TYPE_SLOT 128 
 int FUNC1 (union ses_elm_sas_hdr*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static int
FUNC4(enc_softc_t *enc, enc_cache_t *enc_cache,
			   uint8_t *buf, int bufsiz, int eip, int tidx,
			   int nobj)
{
	int dtype, err;
	ses_cache_t *ses_cache;
	union ses_elm_sas_hdr *hdr;

	/* Need to be able to read the descriptor type! */
	if (bufsiz < sizeof(union ses_elm_sas_hdr)) {
		err = EIO;
		goto out;
	}

	ses_cache = enc_cache->private;

	hdr = (union ses_elm_sas_hdr *)buf;
	dtype = FUNC1(hdr);
	switch(dtype) {
	case SES_SASOBJ_TYPE_SLOT:
		switch(ses_cache->ses_types[tidx].hdr->etype_elm_type) {
		case ELMTYP_DEVICE:
		case ELMTYP_ARRAY_DEV:
			break;
		default:
			FUNC0(enc, "Element %d has Additional Status type 0, "
			    "invalid for SES element type 0x%x\n", nobj,
			    ses_cache->ses_types[tidx].hdr->etype_elm_type);
			err = ENODEV;
			goto out;
		}
		err = FUNC2(enc, enc_cache,
						       buf, bufsiz, eip,
		    nobj);
		break;
	case SES_SASOBJ_TYPE_OTHER:
		switch(ses_cache->ses_types[tidx].hdr->etype_elm_type) {
		case ELMTYP_SAS_EXP:
		case ELMTYP_SCSI_INI:
		case ELMTYP_SCSI_TGT:
		case ELMTYP_ESCC:
			break;
		default:
			FUNC0(enc, "Element %d has Additional Status type 1, "
			    "invalid for SES element type 0x%x\n", nobj,
			    ses_cache->ses_types[tidx].hdr->etype_elm_type);
			err = ENODEV;
			goto out;
		}
		err = FUNC3(enc, enc_cache, buf,
						       bufsiz, eip, nobj);
		break;
	default:
		FUNC0(enc, "Element %d of type 0x%x has Additional Status "
		    "of unknown type 0x%x\n", nobj,
		    ses_cache->ses_types[tidx].hdr->etype_elm_type, dtype);
		err = ENODEV;
		break;
	}

out:
	return (err);
}