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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 struct wpabuf* FUNC0 (struct wpabuf const*,struct wpabuf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

struct wpabuf * FUNC2(void *ctx, const struct wpabuf *peer_public,
				  const struct wpabuf *own_private)
{
	return FUNC0(peer_public, own_private, FUNC1(5));
}