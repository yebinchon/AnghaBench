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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(u_int algo, int enc, u_char *data, size_t datasize,
    const u_char *key, size_t keysize)
{
	u_char iv[keysize];

	FUNC0(iv, sizeof(iv));
	return (FUNC1(algo, enc, data, datasize, key, keysize, iv));
}