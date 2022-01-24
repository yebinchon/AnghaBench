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
typedef  int uint32_t ;
struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int dma_size; } ;
struct sc_chinfo {int /*<<< orphan*/  buffer; struct sc_pcminfo* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_pcminfo*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static uint32_t
FUNC3(kobj_t obj, void *data, uint32_t blocksize)
{
	struct sc_chinfo *ch = data;
	struct sc_pcminfo *scp = ch->parent;
	struct sc_info *sc = scp->sc;

	FUNC2(ch->buffer, sc->dma_size / blocksize, blocksize);

	FUNC0(scp);

	return (FUNC1(ch->buffer));
}