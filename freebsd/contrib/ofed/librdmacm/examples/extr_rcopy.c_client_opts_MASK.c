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

/* Variables and functions */
 char* dst_addr ; 
 char* dst_file ; 
 int FUNC0 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* src_file ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(int argc, char **argv)
{
	int op;

	if (argc < 3)
		FUNC1(argv[0]);

	src_file = argv[1];
	dst_addr = argv[2];
	dst_file = FUNC2(dst_addr, ':');
	if (dst_file) {
		*dst_file = '\0';
		dst_file++;
	}
	if (!dst_file)
		dst_file = src_file;

	while ((op = FUNC0(argc, argv, "p:")) != -1) {
		switch (op) {
		case 'p':
			port = optarg;
			break;
		default:
			FUNC1(argv[0]);
		}
	}

}