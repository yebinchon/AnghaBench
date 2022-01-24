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
typedef  int /*<<< orphan*/  val_64 ;
typedef  int /*<<< orphan*/  val_32 ;
typedef  unsigned long uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct region_desc {unsigned long start; unsigned long end; } ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long*,int) ; 

__attribute__((used)) static uint64_t
FUNC7(void)
{
	int fd;
	uint64_t entry[2];
	static uint64_t load_segment = ~(0UL);
	uint64_t val_64;
	uint32_t val_32;
	struct region_desc rsvd_reg[32];
	int rsvd_reg_cnt = 0;
	int ret, a, b;
	uint64_t start, end;

	if (load_segment == ~(0UL)) {

		/* Default load address is 0x00000000 */
		load_segment = 0UL;

		/* Read reserved regions */
		fd = FUNC4("/proc/device-tree/reserved-ranges", O_RDONLY, 0);
		if (fd >= 0) {
			while (FUNC5(fd, &entry[0], sizeof(entry)) == sizeof(entry)) {
				rsvd_reg[rsvd_reg_cnt].start = FUNC2(entry[0]);
				rsvd_reg[rsvd_reg_cnt].end =
				    FUNC2(entry[1]) + rsvd_reg[rsvd_reg_cnt].start - 1;
				rsvd_reg_cnt++;
			}
			FUNC3(fd);
		}
		/* Read where the kernel ends */
		fd = FUNC4("/proc/device-tree/chosen/linux,kernel-end", O_RDONLY, 0);
		if (fd >= 0) {
			ret = FUNC5(fd, &val_64, sizeof(val_64));

			if (ret == sizeof(uint64_t)) {
				rsvd_reg[rsvd_reg_cnt].start = 0;
				rsvd_reg[rsvd_reg_cnt].end = FUNC2(val_64) - 1;
			} else {
				FUNC6(&val_32, &val_64, sizeof(val_32));
				rsvd_reg[rsvd_reg_cnt].start = 0;
				rsvd_reg[rsvd_reg_cnt].end = FUNC1(val_32) - 1;
			}
			rsvd_reg_cnt++;

			FUNC3(fd);
		}
		/* Read memory size (SOCKET0 only) */
		fd = FUNC4("/proc/device-tree/memory@0/reg", O_RDONLY, 0);
		if (fd < 0)
			fd = FUNC4("/proc/device-tree/memory/reg", O_RDONLY, 0);
		if (fd >= 0) {
			ret = FUNC5(fd, &entry, sizeof(entry));

			/* Memory range in start:length format */
			entry[0] = FUNC2(entry[0]);
			entry[1] = FUNC2(entry[1]);

			/* Reserve everything what is before start */
			if (entry[0] != 0) {
				rsvd_reg[rsvd_reg_cnt].start = 0;
				rsvd_reg[rsvd_reg_cnt].end = entry[0] - 1;
				rsvd_reg_cnt++;
			}
			/* Reserve everything what is after end */
			if (entry[1] != 0xffffffffffffffffUL) {
				rsvd_reg[rsvd_reg_cnt].start = entry[0] + entry[1];
				rsvd_reg[rsvd_reg_cnt].end = 0xffffffffffffffffUL;
				rsvd_reg_cnt++;
			}

			FUNC3(fd);
		}

		/* Sort entries in ascending order (bubble) */
		for (a = rsvd_reg_cnt - 1; a > 0; a--) {
			for (b = 0; b < a; b++) {
				if (rsvd_reg[b].start > rsvd_reg[b + 1].start) {
					struct region_desc tmp;
					tmp = rsvd_reg[b];
					rsvd_reg[b] = rsvd_reg[b + 1];
					rsvd_reg[b + 1] = tmp;
				}
			}
		}

		/* Join overlapping/adjacent regions */
		for (a = 0; a < rsvd_reg_cnt - 1; ) {

			if ((rsvd_reg[a + 1].start >= rsvd_reg[a].start) &&
			    ((rsvd_reg[a + 1].start - 1) <= rsvd_reg[a].end)) {
				/* We have overlapping/adjacent regions! */
				rsvd_reg[a].end =
				    FUNC0(rsvd_reg[a].end, rsvd_reg[a + a].end);

				for (b = a + 1; b < rsvd_reg_cnt - 1; b++)
					rsvd_reg[b] = rsvd_reg[b + 1];
				rsvd_reg_cnt--;
			} else
				a++;
		}

		/* Find the first free region */
		if (rsvd_reg_cnt > 0) {
			start = 0;
			end = rsvd_reg[0].start;
			for (a = 0; a < rsvd_reg_cnt - 1; a++) {
				if ((start >= rsvd_reg[a].start) &&
				    (start <= rsvd_reg[a].end)) {
					start = rsvd_reg[a].end + 1;
					end = rsvd_reg[a + 1].start;
				} else
					break;
			}

			if (start != end) {
				uint64_t align = 64UL*1024UL*1024UL;

				/* Align both to 64MB boundary */
				start = (start + align - 1UL) & ~(align - 1UL);
				end = ((end + 1UL) & ~(align - 1UL)) - 1UL;

				if (start < end)
					load_segment = start;
			}
		}
	}

	return (load_segment);
}