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
struct rar {int /*<<< orphan*/  has_encrypted_entries; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_read*,struct rar*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_read_format_rar_bid ; 
 int /*<<< orphan*/  archive_read_format_rar_cleanup ; 
 int /*<<< orphan*/  archive_read_format_rar_has_encrypted_entries ; 
 int /*<<< orphan*/  archive_read_format_rar_options ; 
 int /*<<< orphan*/  archive_read_format_rar_read_data ; 
 int /*<<< orphan*/  archive_read_format_rar_read_data_skip ; 
 int /*<<< orphan*/  archive_read_format_rar_read_header ; 
 int /*<<< orphan*/  archive_read_format_rar_seek_data ; 
 int /*<<< orphan*/  archive_read_support_format_rar_capabilities ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rar*) ; 

int
FUNC5(struct archive *_a)
{
  struct archive_read *a = (struct archive_read *)_a;
  struct rar *rar;
  int r;

  FUNC1(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
                      "archive_read_support_format_rar");

  rar = (struct rar *)FUNC3(sizeof(*rar), 1);
  if (rar == NULL)
  {
    FUNC2(&a->archive, ENOMEM, "Can't allocate rar data");
    return (ARCHIVE_FATAL);
  }

	/*
	 * Until enough data has been read, we cannot tell about
	 * any encrypted entries yet.
	 */
	rar->has_encrypted_entries = ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;

  r = FUNC0(a,
                                     rar,
                                     "rar",
                                     archive_read_format_rar_bid,
                                     archive_read_format_rar_options,
                                     archive_read_format_rar_read_header,
                                     archive_read_format_rar_read_data,
                                     archive_read_format_rar_read_data_skip,
                                     archive_read_format_rar_seek_data,
                                     archive_read_format_rar_cleanup,
                                     archive_read_support_format_rar_capabilities,
                                     archive_read_format_rar_has_encrypted_entries);

  if (r != ARCHIVE_OK)
    FUNC4(rar);
  return (r);
}