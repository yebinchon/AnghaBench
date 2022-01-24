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
struct zip {size_t central_directory_bytes; struct cd_segment* central_directory_last; struct cd_segment* central_directory; } ;
struct cd_segment {scalar_t__ p; scalar_t__ buff; scalar_t__ buff_size; struct cd_segment* next; } ;

/* Variables and functions */
 struct cd_segment* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cd_segment*) ; 
 unsigned char* FUNC2 (int) ; 

__attribute__((used)) static unsigned char *
FUNC3(struct zip *zip, size_t length)
{
	unsigned char *p;

	if (zip->central_directory == NULL
	    || (zip->central_directory_last->p + length
		> zip->central_directory_last->buff + zip->central_directory_last->buff_size)) {
		struct cd_segment *segment = FUNC0(1, sizeof(*segment));
		if (segment == NULL)
			return NULL;
		segment->buff_size = 64 * 1024;
		segment->buff = FUNC2(segment->buff_size);
		if (segment->buff == NULL) {
			FUNC1(segment);
			return NULL;
		}
		segment->p = segment->buff;

		if (zip->central_directory == NULL) {
			zip->central_directory
			    = zip->central_directory_last
			    = segment;
		} else {
			zip->central_directory_last->next = segment;
			zip->central_directory_last = segment;
		}
	}

	p = zip->central_directory_last->p;
	zip->central_directory_last->p += length;
	zip->central_directory_bytes += length;
	return (p);
}