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
struct tls_in_data {size_t consumed; int /*<<< orphan*/  in_data; } ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(WOLFSSL *ssl, char *buf, int sz, void *ctx)
{
	size_t get = sz;
	struct tls_in_data *data = ctx;

	if (!data)
		return -1;

	if (get > (FUNC2(data->in_data) - data->consumed))
		get = FUNC2(data->in_data) - data->consumed;

	FUNC0(buf, FUNC1(data->in_data) + data->consumed, get);
	data->consumed += get;

	if (get == 0)
		return -2; /* WANT_READ */

	return (int) get;
}