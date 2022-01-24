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
struct _citrus_iconv_std_dst_list {int dummy; } ;
struct _citrus_iconv_std_dst {int /*<<< orphan*/  sd_mapper; } ;

/* Variables and functions */
 struct _citrus_iconv_std_dst* FUNC0 (struct _citrus_iconv_std_dst_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_iconv_std_dst_list*,struct _citrus_iconv_std_dst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _citrus_iconv_std_dst*) ; 
 int /*<<< orphan*/  sd_entry ; 

__attribute__((used)) static void
FUNC4(struct _citrus_iconv_std_dst_list *dl)
{
	struct _citrus_iconv_std_dst *sd;

	while ((sd = FUNC0(dl)) != NULL) {
		FUNC1(dl, sd, sd_entry);
		FUNC2(sd->sd_mapper);
		FUNC3(sd);
	}
}