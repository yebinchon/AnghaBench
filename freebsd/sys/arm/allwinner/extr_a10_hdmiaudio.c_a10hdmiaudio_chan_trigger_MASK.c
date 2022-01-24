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
struct a10hdmiaudio_info {int /*<<< orphan*/  lock; } ;
struct a10hdmiaudio_chinfo {int run; struct a10hdmiaudio_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct a10hdmiaudio_chinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct a10hdmiaudio_chinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, int go)
{
	struct a10hdmiaudio_chinfo *ch = data;
	struct a10hdmiaudio_info *sc = ch->parent;

	if (!FUNC0(go))
		return (0);

	FUNC3(sc->lock);
	switch (go) {
	case PCMTRIG_START:
		ch->run = 1;
		FUNC1(ch);
		break;
	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		ch->run = 0;
		FUNC2(ch);
		break;
	default:
		break;
	}
	FUNC4(sc->lock);

	return (0);
}