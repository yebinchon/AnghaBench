#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int num_phys; } ;
union ses_elm_sas_hdr {TYPE_1__ base_hdr; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ses_elm_sas_type0_eip_hdr {int dummy; } ;
struct ses_elm_sas_type0_base_hdr {int dummy; } ;
struct ses_elm_sas_device_phy {int dummy; } ;
struct TYPE_13__ {struct ses_elm_sas_device_phy* sasdev_phys; } ;
struct TYPE_9__ {union ses_elm_sas_hdr* sas; } ;
struct ses_addl_status {TYPE_7__ proto_data; TYPE_2__ proto_hdr; } ;
struct TYPE_10__ {struct ses_addl_status addl; } ;
typedef  TYPE_3__ ses_element_t ;
typedef  int /*<<< orphan*/  enc_softc_t ;
struct TYPE_11__ {TYPE_3__* elm_private; } ;
typedef  TYPE_4__ enc_element_t ;
struct TYPE_12__ {TYPE_4__* elm_map; } ;
typedef  TYPE_5__ enc_cache_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int) ; 

__attribute__((used)) static int
FUNC2(enc_softc_t *enc, enc_cache_t *enc_cache,
				 uint8_t *buf, int bufsiz, int eip, int nobj)
{
	int err, offset, physz;
	enc_element_t *obj;
	ses_element_t *elmpriv;
	struct ses_addl_status *addl;

	err = offset = 0;

	/* basic object setup */
	obj = &(enc_cache->elm_map[nobj]);
	elmpriv = obj->elm_private;
	addl = &(elmpriv->addl);

	addl->proto_hdr.sas = (union ses_elm_sas_hdr *)&buf[offset];

	/* Don't assume this object has any phys */
	FUNC1(&addl->proto_data, sizeof(addl->proto_data));
	if (addl->proto_hdr.sas->base_hdr.num_phys == 0)
		goto out;

	/* Skip forward to the phy list */
	if (eip)
		offset += sizeof(struct ses_elm_sas_type0_eip_hdr);
	else
		offset += sizeof(struct ses_elm_sas_type0_base_hdr);

	/* Make sure the phy list fits in the buffer */
	physz = addl->proto_hdr.sas->base_hdr.num_phys;
	physz *= sizeof(struct ses_elm_sas_device_phy);
	if (physz > (bufsiz - offset + 4)) {
		FUNC0(enc, "Element %d Device Phy List Beyond End Of Buffer\n",
		    nobj);
		err = EIO;
		goto out;
	}

	/* Point to the phy list */
	addl->proto_data.sasdev_phys =
	    (struct ses_elm_sas_device_phy *)&buf[offset];

out:
	return (err);
}