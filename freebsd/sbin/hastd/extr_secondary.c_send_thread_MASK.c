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
struct hio {int hio_cmd; scalar_t__ hio_error; size_t hio_length; void* hio_data; scalar_t__ hio_memsync; int /*<<< orphan*/  hio_seq; } ;
struct hast_resource {int /*<<< orphan*/  hr_remoteout; int /*<<< orphan*/  hr_stat_flush_error; int /*<<< orphan*/  hr_stat_delete_error; int /*<<< orphan*/  hr_stat_write_error; int /*<<< orphan*/  hr_stat_read_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_TEMPFAIL ; 
#define  HIO_DELETE 131 
#define  HIO_FLUSH 130 
#define  HIO_READ 129 
#define  HIO_WRITE 128 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hio*) ; 
 int /*<<< orphan*/  free ; 
 int FUNC4 (struct hast_resource*,int /*<<< orphan*/ ,struct nv*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct hio*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nv*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,struct hio*,char*,struct hio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  send ; 

__attribute__((used)) static void *
FUNC14(void *arg)
{
	struct hast_resource *res = arg;
	struct nv *nvout;
	struct hio *hio;
	void *data;
	size_t length;

	for (;;) {
		FUNC11(2, "send: Taking request.");
		FUNC3(send, hio);
		FUNC12(LOG_DEBUG, 2, -1, hio, "send: (%p) Got request: ", hio);
		nvout = FUNC9();
		/* Copy sequence number. */
		FUNC8(nvout, hio->hio_seq, "seq");
		if (hio->hio_memsync) {
			FUNC1(hio->hio_cmd == HIO_WRITE);
			FUNC7(nvout, 1, "received");
		}
		switch (hio->hio_cmd) {
		case HIO_READ:
			if (hio->hio_error == 0) {
				data = hio->hio_data;
				length = hio->hio_length;
				break;
			}
			/*
			 * We send no data in case of an error.
			 */
			/* FALLTHROUGH */
		case HIO_DELETE:
		case HIO_FLUSH:
		case HIO_WRITE:
			data = NULL;
			length = 0;
			break;
		default:
			FUNC0("Unexpected command (cmd=%hhu).",
			    hio->hio_cmd);
		}
		if (hio->hio_error != 0) {
			switch (hio->hio_cmd) {
			case HIO_READ:
				res->hr_stat_read_error++;
				break;
			case HIO_WRITE:
				res->hr_stat_write_error++;
				break;
			case HIO_DELETE:
				res->hr_stat_delete_error++;
				break;
			case HIO_FLUSH:
				res->hr_stat_flush_error++;
				break;
			}
			FUNC6(nvout, hio->hio_error, "error");
		}
		if (FUNC4(res, res->hr_remoteout, nvout, data,
		    length) == -1) {
			FUNC13(EX_TEMPFAIL, "Unable to send reply");
		}
		FUNC10(nvout);
		FUNC11(2, "send: (%p) Moving request to the free queue.",
		    hio);
		FUNC5(hio);
		FUNC2(free, hio);
	}
	/* NOTREACHED */
	return (NULL);
}