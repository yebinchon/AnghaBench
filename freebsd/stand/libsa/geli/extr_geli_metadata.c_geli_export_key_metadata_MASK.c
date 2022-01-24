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
struct preloaded_file {int dummy; } ;
struct keybuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GELI_KEYBUF_SIZE ; 
 int /*<<< orphan*/  MODINFOMD_KEYBUF ; 
 int /*<<< orphan*/  FUNC0 (struct keybuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct preloaded_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct keybuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct keybuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct keybuf*) ; 
 struct keybuf* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct preloaded_file *kfp)
{
    struct keybuf *keybuf;

    keybuf = FUNC4(GELI_KEYBUF_SIZE);
    FUNC3(keybuf);
    FUNC1(kfp, MODINFOMD_KEYBUF, GELI_KEYBUF_SIZE, keybuf);
    FUNC0(keybuf, GELI_KEYBUF_SIZE);
    FUNC2(keybuf);
}