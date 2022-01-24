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
struct file_data {char const* filename; char const* mode; int keep_open; int /*<<< orphan*/ * fd; } ;
typedef  int /*<<< orphan*/  krb5_log_facility ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  close_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_file ; 
 struct file_data* FUNC3 (int) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context, krb5_log_facility *fac, int min, int max,
	  const char *filename, const char *mode, FILE *f, int keep_open)
{
    struct file_data *fd = FUNC3(sizeof(*fd));
    if(fd == NULL) {
	FUNC2(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    fd->filename = filename;
    fd->mode = mode;
    fd->fd = f;
    fd->keep_open = keep_open;

    return FUNC1(context, fac, min, max, log_file, close_file, fd);
}