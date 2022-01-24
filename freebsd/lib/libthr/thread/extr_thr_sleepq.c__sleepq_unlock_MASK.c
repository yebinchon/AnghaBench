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
struct sleepqueue_chain {int /*<<< orphan*/  sc_lock; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 struct sleepqueue_chain* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC2 () ; 

void
FUNC3(void *wchan)
{
	struct sleepqueue_chain *sc;
	struct pthread *curthread = FUNC2();
                    
	sc = FUNC0(wchan);
	FUNC1(curthread, &sc->sc_lock);
}