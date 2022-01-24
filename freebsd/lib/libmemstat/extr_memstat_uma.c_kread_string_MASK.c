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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int MEMSTAT_ERROR_KVM ; 
 int MEMSTAT_ERROR_KVM_SHORTREAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long,char*,int) ; 

__attribute__((used)) static int
FUNC1(kvm_t *kvm, const void *kvm_pointer, char *buffer, int buflen)
{
	ssize_t ret;
	int i;

	for (i = 0; i < buflen; i++) {
		ret = FUNC0(kvm, (unsigned long)kvm_pointer + i,
		    &(buffer[i]), sizeof(char));
		if (ret < 0)
			return (MEMSTAT_ERROR_KVM);
		if ((size_t)ret != sizeof(char))
			return (MEMSTAT_ERROR_KVM_SHORTREAD);
		if (buffer[i] == '\0')
			return (0);
	}
	/* Truncate. */
	buffer[i-1] = '\0';
	return (0);
}