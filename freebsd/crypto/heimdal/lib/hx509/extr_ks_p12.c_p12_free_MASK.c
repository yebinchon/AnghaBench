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
struct ks_pkcs12 {struct ks_pkcs12* fn; int /*<<< orphan*/  certs; } ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ks_pkcs12*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(hx509_certs certs, void *data)
{
    struct ks_pkcs12 *p12 = data;
    FUNC1(&p12->certs);
    FUNC0(p12->fn);
    FUNC0(p12);
    return 0;
}