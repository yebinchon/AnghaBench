#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  spkac; int /*<<< orphan*/  signature; int /*<<< orphan*/  sig_algor; } ;
typedef  TYPE_1__ NETSCAPE_SPKI ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  NETSCAPE_SPKAC ; 

int FUNC2(NETSCAPE_SPKI *x, EVP_PKEY *pkey, const EVP_MD *md)
{
    return (FUNC1(FUNC0(NETSCAPE_SPKAC), &x->sig_algor, NULL,
                           x->signature, x->spkac, pkey, md));
}