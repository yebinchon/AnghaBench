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
typedef  TYPE_1__* hx509_cert ;
struct TYPE_4__ {scalar_t__ ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

hx509_cert
FUNC1(hx509_cert cert)
{
    if (cert == NULL)
	return NULL;
    if (cert->ref <= 0)
	FUNC0("cert refcount <= 0");
    cert->ref++;
    if (cert->ref == 0)
	FUNC0("cert refcount == 0");
    return cert;
}