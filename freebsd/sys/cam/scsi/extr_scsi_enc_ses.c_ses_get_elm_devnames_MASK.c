#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sbuf {int dummy; } ;
struct TYPE_8__ {int elm_names_size; size_t elm_idx; scalar_t__ elm_names_len; int /*<<< orphan*/  elm_devnames; } ;
typedef  TYPE_2__ encioc_elm_devnames_t ;
struct TYPE_7__ {int /*<<< orphan*/ * elm_map; } ;
struct TYPE_9__ {int /*<<< orphan*/  periph; TYPE_1__ enc_cache; } ;
typedef  TYPE_3__ enc_softc_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 scalar_t__ FUNC6 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ses_elmdevname_callback ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sbuf*) ; 

__attribute__((used)) static int
FUNC9(enc_softc_t *enc, encioc_elm_devnames_t *elmdn)
{
	struct sbuf sb;
	int len;

	len = elmdn->elm_names_size;
	if (len < 0)
		return (EINVAL);

	FUNC1(enc->periph);
	FUNC7(&sb, NULL, len, SBUF_FIXEDLEN);
	FUNC8(enc, &enc->enc_cache.elm_map[elmdn->elm_idx],
	    ses_elmdevname_callback, &sb);
	FUNC5(&sb);
	elmdn->elm_names_len = FUNC6(&sb);
	FUNC2(FUNC3(&sb), elmdn->elm_devnames, elmdn->elm_names_len + 1);
	FUNC4(&sb);
	FUNC0(enc->periph);
	return (elmdn->elm_names_len > 0 ? 0 : ENODEV);
}