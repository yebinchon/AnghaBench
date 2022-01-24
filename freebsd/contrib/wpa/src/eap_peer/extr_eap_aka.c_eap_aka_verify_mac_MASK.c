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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int /*<<< orphan*/  k_aut; } ;

/* Variables and functions */
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int FUNC0 (int /*<<< orphan*/ ,struct wpabuf const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct wpabuf const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC2(struct eap_aka_data *data,
			      const struct wpabuf *req,
			      const u8 *mac, const u8 *extra,
			      size_t extra_len)
{
	if (data->eap_method == EAP_TYPE_AKA_PRIME)
		return FUNC1(data->k_aut, req, mac, extra,
						 extra_len);
	return FUNC0(data->k_aut, req, mac, extra, extra_len);
}