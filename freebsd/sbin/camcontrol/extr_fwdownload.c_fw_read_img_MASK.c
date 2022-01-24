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
struct stat {int st_size; } ;
struct fw_vendor {int type; int /*<<< orphan*/  dev_type; } ;
struct cam_device {int dummy; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  T_SEQUENTIAL ; 
#define  VENDOR_IBM 130 
#define  VENDOR_QUALSTAR 129 
#define  VENDOR_SEAGATE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_device*,int,int,int,char*,char const*,int) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

__attribute__((used)) static char *
FUNC12(struct cam_device *dev, int retry_count, int timeout, int quiet,
	    const char *fw_img_path, struct fw_vendor *vp, int *num_bytes)
{
	int fd;
	struct stat stbuf;
	char *buf;
	off_t img_size;
	int skip_bytes = 0;

	if ((fd = FUNC7(fw_img_path, O_RDONLY)) < 0) {
		FUNC10("Could not open image file %s", fw_img_path);
		return (NULL);
	}
	if (FUNC3(fd, &stbuf) < 0) {
		FUNC10("Could not stat image file %s", fw_img_path);
		goto bailout1;
	}
	if ((img_size = stbuf.st_size) == 0) {
		FUNC11("Zero length image file %s", fw_img_path);
		goto bailout1;
	}
	if ((buf = FUNC6(img_size)) == NULL) {
		FUNC11("Could not allocate buffer to read image file %s",
		    fw_img_path);
		goto bailout1;
	}
	/* Skip headers if applicable. */
	switch (vp->type) {
	case VENDOR_SEAGATE:
		if (FUNC8(fd, buf, 16) != 16) {
			FUNC10("Could not read image file %s", fw_img_path);
			goto bailout;
		}
		if (FUNC5(fd, 0, SEEK_SET) == -1) {
			FUNC10("Unable to lseek");
			goto bailout;
		}
		if ((FUNC9(buf, "SEAGATE,SEAGATE ", 16) == 0) ||
		    (img_size % 512 == 80))
			skip_bytes = 80;
		break;
	case VENDOR_QUALSTAR:
		skip_bytes = img_size % 1030;
		break;
	case VENDOR_IBM: {
		if (vp->dev_type != T_SEQUENTIAL)
			break;
		if (FUNC4(dev, retry_count, timeout, fd, buf,
				    fw_img_path, quiet) != 0)
			goto bailout;
		break;
	}
	default:
		break;
	}
	if (skip_bytes != 0) {
		FUNC1(stdout, "Skipping %d byte header.\n", skip_bytes);
		if (FUNC5(fd, skip_bytes, SEEK_SET) == -1) {
			FUNC10("Could not lseek");
			goto bailout;
		}
		img_size -= skip_bytes;
	}
	/* Read image into a buffer. */
	if (FUNC8(fd, buf, img_size) != img_size) {
		FUNC10("Could not read image file %s", fw_img_path);
		goto bailout;
	}
	*num_bytes = img_size;
	FUNC0(fd);
	return (buf);
bailout:
	FUNC2(buf);
bailout1:
	FUNC0(fd);
	*num_bytes = 0;
	return (NULL);
}