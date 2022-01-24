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
struct a10codec_info {int /*<<< orphan*/  dmat; } ;
struct a10codec_chinfo {int /*<<< orphan*/  dmamap; int /*<<< orphan*/  dmaaddr; int /*<<< orphan*/  dmachan; int /*<<< orphan*/  dmac; struct a10codec_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(kobj_t obj, void *data)
{
	struct a10codec_chinfo *ch = data;
	struct a10codec_info *sc = ch->parent;

	FUNC0(ch->dmac, ch->dmachan);
	FUNC1(sc->dmat, ch->dmamap);
	FUNC2(sc->dmat, ch->dmaaddr, ch->dmamap);

	return (0);
}