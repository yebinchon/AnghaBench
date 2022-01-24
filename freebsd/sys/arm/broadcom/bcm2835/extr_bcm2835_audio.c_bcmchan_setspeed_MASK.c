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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm2835_audio_info {int dummy; } ;
struct bcm2835_audio_chinfo {int /*<<< orphan*/  spd; struct bcm2835_audio_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_info*) ; 

__attribute__((used)) static uint32_t
FUNC3(kobj_t obj, void *data, uint32_t speed)
{
	struct bcm2835_audio_chinfo *ch = data;
	struct bcm2835_audio_info *sc = ch->parent;

	FUNC0(sc);
	ch->spd = speed;
	FUNC2(sc);
	FUNC1(sc);

	return ch->spd;
}