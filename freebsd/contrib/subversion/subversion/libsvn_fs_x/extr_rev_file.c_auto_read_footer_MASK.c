#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned char* data; size_t len; } ;
typedef  TYPE_4__ svn_stringbuf_t ;
struct TYPE_12__ {int end; int /*<<< orphan*/  start; int /*<<< orphan*/  checksum; } ;
struct TYPE_11__ {int start; int /*<<< orphan*/  end; int /*<<< orphan*/  checksum; } ;
struct TYPE_10__ {int /*<<< orphan*/  start_revision; } ;
struct TYPE_14__ {TYPE_3__ p2l_info; TYPE_2__ l2p_info; int /*<<< orphan*/  pool; TYPE_1__ file_info; int /*<<< orphan*/  file; int /*<<< orphan*/  block_size; } ;
typedef  TYPE_5__ svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  footer_length ;
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,unsigned char,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_x__revision_file_t *file)
{
  if (file->l2p_info.start == -1)
    {
      apr_off_t filesize = 0;
      unsigned char footer_length;
      svn_stringbuf_t *footer;

      /* Determine file size. */
      FUNC0(FUNC1(file));
      FUNC0(FUNC5(file->file, APR_END, &filesize, file->pool));

      /* Read last byte (containing the length of the footer). */
      FUNC0(FUNC3(file->file, file->block_size, NULL,
                                       filesize - 1, file->pool));
      FUNC0(FUNC4(file->file, &footer_length,
                                     sizeof(footer_length), NULL, NULL,
                                     file->pool));

      /* Read footer. */
      footer = FUNC6(footer_length, file->pool);
      FUNC0(FUNC3(file->file, file->block_size, NULL,
                                       filesize - 1 - footer_length,
                                       file->pool));
      FUNC0(FUNC4(file->file, footer->data, footer_length,
                                     &footer->len, NULL, file->pool));
      footer->data[footer->len] = '\0';

      /* Extract index locations. */
      FUNC0(FUNC2(&file->l2p_info.start,
                                     &file->l2p_info.checksum,
                                     &file->p2l_info.start,
                                     &file->p2l_info.checksum,
                                     footer, file->file_info.start_revision,
                                     filesize - footer_length - 1, file->pool));
      file->l2p_info.end = file->p2l_info.start;
      file->p2l_info.end = filesize - footer_length - 1;
    }

  return SVN_NO_ERROR;
}