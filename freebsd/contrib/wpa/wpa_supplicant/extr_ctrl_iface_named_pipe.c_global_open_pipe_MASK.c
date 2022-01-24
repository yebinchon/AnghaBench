#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * hEvent; } ;
struct wpa_global_dst {scalar_t__ pipe; struct wpa_global_dst* prev; struct wpa_global_dst* next; TYPE_1__ overlap; struct ctrl_iface_global_priv* priv; } ;
struct ctrl_iface_global_priv {struct wpa_global_dst* ctrl_dst; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
#define  ERROR_IO_PENDING 129 
#define  ERROR_PIPE_CONNECTED 128 
 int FILE_FLAG_OVERLAPPED ; 
 int FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  NAMED_PIPE_PREFIX ; 
 int PIPE_ACCESS_DUPLEX ; 
 int PIPE_READMODE_MESSAGE ; 
 int PIPE_TYPE_MESSAGE ; 
 int PIPE_WAIT ; 
 int /*<<< orphan*/  REPLY_BUFSIZE ; 
 int /*<<< orphan*/  REQUEST_BUFSIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct wpa_global_dst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_global_dst*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_global_dst*) ; 
 struct wpa_global_dst* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  wpa_supplicant_global_iface_receive ; 

__attribute__((used)) static int FUNC11(struct ctrl_iface_global_priv *priv)
{
	struct wpa_global_dst *dst;
	DWORD err;

	dst = FUNC9(sizeof(*dst));
	if (dst == NULL)
		return -1;
	FUNC10(MSG_DEBUG, "CTRL: Open pipe %p", dst);

	dst->priv = priv;
	dst->pipe = INVALID_HANDLE_VALUE;

	dst->overlap.hEvent = FUNC2(NULL, TRUE, TRUE, NULL);
	if (dst->overlap.hEvent == NULL) {
		FUNC10(MSG_ERROR, "CTRL: CreateEvent failed: %d",
			   (int) FUNC4());
		goto fail;
	}

	FUNC6(dst->overlap.hEvent,
			     sizeof(dst->overlap.hEvent),
			     wpa_supplicant_global_iface_receive, dst, NULL);

	/* TODO: add support for configuring access list for the pipe */
	dst->pipe = FUNC3(NAMED_PIPE_PREFIX,
				    PIPE_ACCESS_DUPLEX | FILE_FLAG_OVERLAPPED,
				    PIPE_TYPE_MESSAGE |
				    PIPE_READMODE_MESSAGE |
				    PIPE_WAIT,
				    10, REPLY_BUFSIZE, REQUEST_BUFSIZE,
				    1000, NULL);
	if (dst->pipe == INVALID_HANDLE_VALUE) {
		FUNC10(MSG_ERROR, "CTRL: CreateNamedPipe failed: %d",
			   (int) FUNC4());
		goto fail;
	}

	if (FUNC1(dst->pipe, &dst->overlap)) {
		FUNC10(MSG_ERROR, "CTRL: ConnectNamedPipe failed: %d",
			   (int) FUNC4());
		FUNC0(dst->pipe);
		FUNC8(dst);
		return -1;
	}

	err = FUNC4();
	switch (err) {
	case ERROR_IO_PENDING:
		FUNC10(MSG_DEBUG, "CTRL: ConnectNamedPipe: connection in "
			   "progress");
		break;
	case ERROR_PIPE_CONNECTED:
		FUNC10(MSG_DEBUG, "CTRL: ConnectNamedPipe: already "
			   "connected");
		if (FUNC5(dst->overlap.hEvent))
			break;
		/* fall through */
	default:
		FUNC10(MSG_DEBUG, "CTRL: ConnectNamedPipe error: %d",
			   (int) err);
		FUNC0(dst->pipe);
		FUNC8(dst);
		return -1;
	}

	dst->next = priv->ctrl_dst;
	if (dst->next)
		dst->next->prev = dst;
	priv->ctrl_dst = dst;

	return 0;

fail:
	FUNC7(dst);
	return -1;
}