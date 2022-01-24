#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  chain; int /*<<< orphan*/  key; int /*<<< orphan*/  cert; } ;
typedef  TYPE_1__ SSL_EXCERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 

void FUNC4(SSL_EXCERT *exc)
{
    SSL_EXCERT *curr;

    if (exc == NULL)
        return;
    while (exc) {
        FUNC2(exc->cert);
        FUNC0(exc->key);
        FUNC3(exc->chain, X509_free);
        curr = exc;
        exc = exc->next;
        FUNC1(curr);
    }
}