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
typedef  int const uintmax_t ;
typedef  int uint64_t ;
struct nv {int dummy; } ;
struct hio {int hio_cmd; int hio_error; scalar_t__ hio_seq; int hio_offset; int hio_length; int /*<<< orphan*/  hio_memsync; } ;
struct hast_resource {int hr_local_sectorsize; int /*<<< orphan*/  hr_datasize; } ;

/* Variables and functions */
 void* EINVAL ; 
#define  HIO_DELETE 132 
#define  HIO_FLUSH 131 
#define  HIO_KEEPALIVE 130 
#define  HIO_READ 129 
#define  HIO_WRITE 128 
 int MAXPHYS ; 
 int /*<<< orphan*/  FUNC0 (struct nv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv*,char*) ; 
 void* FUNC2 (struct nv*,char*) ; 
 int FUNC3 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(struct hast_resource *res, struct hio *hio, struct nv *nv)
{

	hio->hio_cmd = FUNC3(nv, "cmd");
	if (hio->hio_cmd == 0) {
		FUNC4("Header contains no 'cmd' field.");
		hio->hio_error = EINVAL;
		goto end;
	}
	if (hio->hio_cmd != HIO_KEEPALIVE) {
		hio->hio_seq = FUNC2(nv, "seq");
		if (hio->hio_seq == 0) {
			FUNC4("Header contains no 'seq' field.");
			hio->hio_error = EINVAL;
			goto end;
		}
	}
	switch (hio->hio_cmd) {
	case HIO_FLUSH:
	case HIO_KEEPALIVE:
		break;
	case HIO_WRITE:
		hio->hio_memsync = FUNC1(nv, "memsync");
		/* FALLTHROUGH */
	case HIO_READ:
	case HIO_DELETE:
		hio->hio_offset = FUNC2(nv, "offset");
		if (FUNC0(nv) != 0) {
			FUNC4("Header is missing 'offset' field.");
			hio->hio_error = EINVAL;
			goto end;
		}
		hio->hio_length = FUNC2(nv, "length");
		if (FUNC0(nv) != 0) {
			FUNC4("Header is missing 'length' field.");
			hio->hio_error = EINVAL;
			goto end;
		}
		if (hio->hio_length == 0) {
			FUNC4("Data length is zero.");
			hio->hio_error = EINVAL;
			goto end;
		}
		if (hio->hio_cmd != HIO_DELETE && hio->hio_length > MAXPHYS) {
			FUNC4("Data length is too large (%ju > %ju).",
			    (uintmax_t)hio->hio_length, (uintmax_t)MAXPHYS);
			hio->hio_error = EINVAL;
			goto end;
		}
		if ((hio->hio_offset % res->hr_local_sectorsize) != 0) {
			FUNC4("Offset %ju is not multiple of sector size.",
			    (uintmax_t)hio->hio_offset);
			hio->hio_error = EINVAL;
			goto end;
		}
		if ((hio->hio_length % res->hr_local_sectorsize) != 0) {
			FUNC4("Length %ju is not multiple of sector size.",
			    (uintmax_t)hio->hio_length);
			hio->hio_error = EINVAL;
			goto end;
		}
		if (hio->hio_offset + hio->hio_length >
		    (uint64_t)res->hr_datasize) {
			FUNC4("Data offset is too large (%ju > %ju).",
			    (uintmax_t)(hio->hio_offset + hio->hio_length),
			    (uintmax_t)res->hr_datasize);
			hio->hio_error = EINVAL;
			goto end;
		}
		break;
	default:
		FUNC4("Header contains invalid 'cmd' (%hhu).",
		    hio->hio_cmd);
		hio->hio_error = EINVAL;
		goto end;
	}
	hio->hio_error = 0;
end:
	return (hio->hio_error);
}