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
struct sparse {scalar_t__ type; size_t size; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 scalar_t__ END ; 
 scalar_t__ HOLE ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,size_t) ; 
 scalar_t__ FUNC3 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int FUNC5 (char const*,int,int) ; 
 scalar_t__ FUNC6 (int,char*,size_t) ; 

__attribute__((used)) static void
FUNC7(const char *path, const struct sparse *s)
{
	char buff[1024];
	int fd;
	size_t total_size = 0;
	const struct sparse *cur = s;

	FUNC4(buff, ' ', sizeof(buff));
	FUNC0((fd = FUNC5(path, O_CREAT | O_WRONLY, 0600)) != -1);

	/* Handle holes at the end by extending the file */
	while (cur->type != END) {
		total_size += cur->size;
		++cur;
	}
	FUNC0(FUNC2(fd, total_size) != -1);

	while (s->type != END) {
		if (s->type == HOLE) {
			FUNC0(FUNC3(fd, s->size, SEEK_CUR) != (off_t)-1);
		} else {
			size_t w, size;

			size = s->size;
			while (size) {
				if (size > sizeof(buff))
					w = sizeof(buff);
				else
					w = size;
				FUNC0(FUNC6(fd, buff, w) != (ssize_t)-1);
				size -= w;
			}
		}
		s++;
	}
	FUNC1(fd);
}