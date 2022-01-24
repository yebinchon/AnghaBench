#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nline; } ;
struct FILE_INFO {int /*<<< orphan*/ * fpi; int /*<<< orphan*/  fname; int /*<<< orphan*/  backch; TYPE_1__ curpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOF ; 
 struct FILE_INFO* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct FILE_INFO*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static struct FILE_INFO *
FUNC5(
	const char *path,
	const char *mode
	)
{
	struct FILE_INFO *stream;
	size_t            nnambuf;

	nnambuf = FUNC4(path);
	stream = FUNC0(sizeof(*stream) + nnambuf);
	stream->curpos.nline = 1;
	stream->backch = EOF;
	/* copy name with memcpy -- trailing NUL already there! */
	FUNC3(stream->fname, path, nnambuf);

	if (NULL != mode) {
		stream->fpi = FUNC1(path, mode);
		if (NULL == stream->fpi) {
			FUNC2(stream);
			stream = NULL;
		}
	}
	return stream;
}