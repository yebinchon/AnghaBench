#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  f_fstypename; } ;
struct _fts_private11 {scalar_t__ ftsp_dev; int ftsp_linksreliable; TYPE_3__ ftsp_statfs; } ;
struct TYPE_4__ {scalar_t__ fts_dev; int /*<<< orphan*/  fts_path; } ;
typedef  TYPE_1__ FTSENT11 ;
typedef  int /*<<< orphan*/  FTS11 ;

/* Variables and functions */
 int freebsd11_statfs (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ strcmp (int /*<<< orphan*/ ,char const*) ; 
 char** ufslike_filesystems ; 

__attribute__((used)) static int
fts_ufslinks(FTS11 *sp, const FTSENT11 *ent)
{
	struct _fts_private11 *priv;
	const char **cpp;

	priv = (struct _fts_private11 *)sp;
	/*
	 * If this node's device is different from the previous, grab
	 * the filesystem information, and decide on the reliability
	 * of the link information from this filesystem for stat(2)
	 * avoidance.
	 */
	if (priv->ftsp_dev != ent->fts_dev) {
		if (freebsd11_statfs(ent->fts_path, &priv->ftsp_statfs) != -1) {
			priv->ftsp_dev = ent->fts_dev;
			priv->ftsp_linksreliable = 0;
			for (cpp = ufslike_filesystems; *cpp; cpp++) {
				if (strcmp(priv->ftsp_statfs.f_fstypename,
				    *cpp) == 0) {
					priv->ftsp_linksreliable = 1;
					break;
				}
			}
		} else {
			priv->ftsp_linksreliable = 0;
		}
	}
	return (priv->ftsp_linksreliable);
}