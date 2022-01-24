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
struct eap_aka_data {int /*<<< orphan*/ * id_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wpabuf const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct eap_aka_data *data,
			      const struct wpabuf *msg)
{
	if (msg == NULL)
		return -1;

	if (data->id_msgs == NULL) {
		data->id_msgs = FUNC0(msg);
		return data->id_msgs == NULL ? -1 : 0;
	}

	if (FUNC3(&data->id_msgs, FUNC1(msg)) < 0)
		return -1;
	FUNC2(data->id_msgs, msg);

	return 0;
}