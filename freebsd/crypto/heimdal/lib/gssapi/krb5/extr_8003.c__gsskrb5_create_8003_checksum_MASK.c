#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {int length; scalar_t__ data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  scalar_t__ gss_channel_bindings_t ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {TYPE_1__ checksum; int /*<<< orphan*/  cksumtype; } ;
typedef  int OM_uint32 ;
typedef  TYPE_3__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_GSSAPI ; 
 int ENOMEM ; 
 int GSS_C_DELEG_FLAG ; 
 scalar_t__ const GSS_C_NO_CHANNEL_BINDINGS ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

OM_uint32
FUNC5 (
		      OM_uint32 *minor_status,
		      const gss_channel_bindings_t input_chan_bindings,
		      OM_uint32 flags,
		      const krb5_data *fwd_data,
		      Checksum *result)
{
    u_char *p;

    /*
     * see rfc1964 (section 1.1.1 (Initial Token), and the checksum value
     * field's format) */
    result->cksumtype = CKSUMTYPE_GSSAPI;
    if (fwd_data->length > 0 && (flags & GSS_C_DELEG_FLAG))
	result->checksum.length = 24 + 4 + fwd_data->length;
    else
	result->checksum.length = 24;
    result->checksum.data   = FUNC2 (result->checksum.length);
    if (result->checksum.data == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    p = result->checksum.data;
    FUNC0 (16, p);
    p += 4;
    if (input_chan_bindings == GSS_C_NO_CHANNEL_BINDINGS) {
	FUNC4 (p, 0, 16);
    } else {
	FUNC1 (input_chan_bindings, p);
    }
    p += 16;
    FUNC0 (flags, p);
    p += 4;

    if (fwd_data->length > 0 && (flags & GSS_C_DELEG_FLAG)) {

	*p++ = (1 >> 0) & 0xFF;                   /* DlgOpt */ /* == 1 */
	*p++ = (1 >> 8) & 0xFF;                   /* DlgOpt */ /* == 0 */
	*p++ = (fwd_data->length >> 0) & 0xFF;    /* Dlgth  */
	*p++ = (fwd_data->length >> 8) & 0xFF;    /* Dlgth  */
	FUNC3(p, (unsigned char *) fwd_data->data, fwd_data->length);

	p += fwd_data->length;
    }

    return GSS_S_COMPLETE;
}