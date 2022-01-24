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
struct sbuf {int dummy; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cam_path*,struct sbuf*) ; 

int
FUNC3(struct cam_path *path, char *str, size_t str_len)
{
	struct sbuf sb;
	int len;

	FUNC1(&sb, str, str_len, 0);
	len = FUNC2(path, &sb);
	FUNC0(&sb);
	return (len);
}