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
struct wpabuf_trace {scalar_t__ magic; } ;
struct wpabuf {scalar_t__ used; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ WPABUF_MAGIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct wpabuf const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct wpabuf_trace* FUNC3 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC4(const struct wpabuf *buf, size_t len)
{
#ifdef WPA_TRACE
	struct wpabuf_trace *trace = wpabuf_get_trace(buf);
	if (trace->magic != WPABUF_MAGIC) {
		wpa_printf(MSG_ERROR, "wpabuf: invalid magic %x",
			   trace->magic);
	}
#endif /* WPA_TRACE */
	FUNC1(MSG_ERROR, "wpabuf %p (size=%lu used=%lu) overflow len=%lu",
		   buf, (unsigned long) buf->size, (unsigned long) buf->used,
		   (unsigned long) len);
	FUNC2("wpabuf overflow");
	FUNC0();
}