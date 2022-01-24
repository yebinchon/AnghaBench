#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ _position; scalar_t__ _limit; } ;
typedef  TYPE_1__ ldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 

void
FUNC2(ldns_buffer *buffer, const char *s)
{
        bool found;
        char c;
        const char *d;

        while(FUNC0(buffer, buffer->_position, sizeof(char))) {
                c = (char) FUNC1(buffer, buffer->_position);
                found = false;
                for (d = s; *d; d++) {
                        if (*d == c) {
                                found = true;
                        }
                }
                if (found && buffer->_limit > buffer->_position) {
                        buffer->_position += sizeof(char);
                } else {
                        return;
                }
        }
}