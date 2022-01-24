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
struct mem_data {int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int ENOMEM ; 
 struct mem_data* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_data*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(hx509_context context,
	 hx509_certs certs, void **data, int flags,
	 const char *residue, hx509_lock lock)
{
    struct mem_data *mem;
    mem = FUNC0(1, sizeof(*mem));
    if (mem == NULL)
	return ENOMEM;
    if (residue == NULL || residue[0] == '\0')
	residue = "anonymous";
    mem->name = FUNC2(residue);
    if (mem->name == NULL) {
	FUNC1(mem);
	return ENOMEM;
    }
    *data = mem;
    return 0;
}