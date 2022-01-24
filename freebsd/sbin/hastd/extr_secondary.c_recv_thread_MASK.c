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
struct nv {int dummy; } ;
struct hio {int hio_cmd; int hio_memsync; scalar_t__ hio_error; int /*<<< orphan*/  hio_data; } ;
struct hast_resource {int /*<<< orphan*/  hr_remotein; int /*<<< orphan*/  hr_stat_flush; int /*<<< orphan*/  hr_stat_delete; int /*<<< orphan*/  hr_stat_write; int /*<<< orphan*/  hr_stat_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_TEMPFAIL ; 
#define  HIO_DELETE 132 
#define  HIO_FLUSH 131 
#define  HIO_KEEPALIVE 130 
#define  HIO_READ 129 
#define  HIO_WRITE 128 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hio*) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  free ; 
 int FUNC3 (struct hast_resource*,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nv**) ; 
 int /*<<< orphan*/  FUNC5 (struct hio*) ; 
 int /*<<< orphan*/  FUNC6 (struct hio*,struct hio*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,struct hio*,char*,struct hio*) ; 
 scalar_t__ FUNC10 (struct hast_resource*,struct hio*,struct nv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  send ; 

__attribute__((used)) static void *
FUNC12(void *arg)
{
	struct hast_resource *res = arg;
	struct hio *hio, *mshio;
	struct nv *nv;

	for (;;) {
		FUNC8(2, "recv: Taking free request.");
		FUNC2(free, hio);
		FUNC8(2, "recv: (%p) Got request.", hio);
		if (FUNC4(res->hr_remotein, &nv) == -1) {
			FUNC11(EX_TEMPFAIL,
			    "Unable to receive request header");
		}
		if (FUNC10(res, hio, nv) != 0) {
			FUNC7(nv);
			FUNC8(2,
			    "recv: (%p) Moving request to the send queue.",
			    hio);
			FUNC1(send, hio);
			continue;
		}
		switch (hio->hio_cmd) {
		case HIO_READ:
			res->hr_stat_read++;
			break;
		case HIO_WRITE:
			res->hr_stat_write++;
			break;
		case HIO_DELETE:
			res->hr_stat_delete++;
			break;
		case HIO_FLUSH:
			res->hr_stat_flush++;
			break;
		case HIO_KEEPALIVE:
			break;
		default:
			FUNC0("Unexpected command (cmd=%hhu).",
			    hio->hio_cmd);
		}
		FUNC9(LOG_DEBUG, 2, -1, hio,
		    "recv: (%p) Got request header: ", hio);
		if (hio->hio_cmd == HIO_KEEPALIVE) {
			FUNC7(nv);
			FUNC8(2,
			    "recv: (%p) Moving request to the free queue.",
			    hio);
			FUNC5(hio);
			FUNC1(free, hio);
			continue;
		} else if (hio->hio_cmd == HIO_WRITE) {
			if (FUNC3(res, res->hr_remotein, nv,
			    hio->hio_data, MAXPHYS) == -1) {
				FUNC11(EX_TEMPFAIL,
				    "Unable to receive request data");
			}
			if (hio->hio_memsync) {
				/*
				 * For memsync requests we expect two replies.
				 * Clone the hio so we can handle both of them.
				 */
				FUNC8(2, "recv: Taking free request.");
				FUNC2(free, mshio);
				FUNC8(2, "recv: (%p) Got request.",
				    mshio);
				FUNC6(hio, mshio);
				mshio->hio_error = 0;
				/*
				 * We want to keep 'memsync' tag only on the
				 * request going onto send queue (mshio).
				 */
				hio->hio_memsync = false;
				FUNC8(2,
				    "recv: (%p) Moving memsync request to the send queue.",
				    mshio);
				FUNC1(send, mshio);
			}
		}
		FUNC7(nv);
		FUNC8(2, "recv: (%p) Moving request to the disk queue.",
		    hio);
		FUNC1(disk, hio);
	}
	/* NOTREACHED */
	return (NULL);
}