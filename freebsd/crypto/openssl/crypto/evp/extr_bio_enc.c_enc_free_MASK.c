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
struct TYPE_4__ {int /*<<< orphan*/  cipher; } ;
typedef  TYPE_1__ BIO_ENC_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(BIO *a)
{
    BIO_ENC_CTX *b;

    if (a == NULL)
        return 0;

    b = FUNC0(a);
    if (b == NULL)
        return 0;

    FUNC3(b->cipher);
    FUNC4(b, sizeof(BIO_ENC_CTX));
    FUNC1(a, NULL);
    FUNC2(a, 0);

    return 1;
}