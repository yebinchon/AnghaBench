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
typedef  int /*<<< orphan*/  ar9300_eeprom_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** default9300 ; 

ar9300_eeprom_t *
FUNC1(int default_index) 
{
    if (default_index >= 0 &&
        default_index < FUNC0(default9300))
    {
        return default9300[default_index];
    } else {
        return 0;
    }
}