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
struct wpa_ssid {int dummy; } ;
struct parse_data {scalar_t__ param2; scalar_t__ param1; } ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static char * FUNC2(const struct parse_data *data,
				   struct wpa_ssid *ssid)
{
	size_t len;
	char **src;

	src = (char **) (((u8 *) ssid) + (long) data->param1);
	if (*src == NULL)
		return NULL;

	if (data->param2)
		len = *((size_t *) (((u8 *) ssid) + (long) data->param2));
	else
		len = FUNC0(*src);

	return FUNC1((const u8 *) *src, len);
}