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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	bool has_aes, has_sha;

	FUNC0(&has_aes, &has_sha);
	if (!has_aes && !has_sha) {
		FUNC1(dev, "No AES or SHA support.\n");
		return (EINVAL);
	} else if (has_aes && has_sha)
		FUNC2(dev,
		    "AES-CBC,AES-CCM,AES-GCM,AES-ICM,AES-XTS,SHA1,SHA256");
	else if (has_aes)
		FUNC2(dev,
		    "AES-CBC,AES-CCM,AES-GCM,AES-ICM,AES-XTS");
	else
		FUNC2(dev, "SHA1,SHA256");

	return (0);
}