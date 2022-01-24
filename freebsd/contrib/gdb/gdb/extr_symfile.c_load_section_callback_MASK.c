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
struct load_section_data {scalar_t__ load_offset; int data_count; int write_count; int /*<<< orphan*/  total_size; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int SEC_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 scalar_t__ download_write_size ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char const* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ quit_flag ; 
 int /*<<< orphan*/  FUNC11 (char const*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,char*,int) ; 
 int FUNC13 (scalar_t__,char*,scalar_t__,int*) ; 
 scalar_t__ FUNC14 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 scalar_t__ validate_download ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC16 (int) ; 

__attribute__((used)) static void
FUNC17 (bfd *abfd, asection *asec, void *data)
{
  struct load_section_data *args = data;

  if (FUNC1 (abfd, asec) & SEC_LOAD)
    {
      bfd_size_type size = FUNC3 (asec);
      if (size > 0)
	{
	  char *buffer;
	  struct cleanup *old_chain;
	  CORE_ADDR lma = FUNC4 (abfd, asec) + args->load_offset;
	  bfd_size_type block_size;
	  int err;
	  const char *sect_name = FUNC2 (abfd, asec);
	  bfd_size_type sent;

	  if (download_write_size > 0 && size > download_write_size)
	    block_size = download_write_size;
	  else
	    block_size = size;

	  buffer = FUNC16 (size);
	  old_chain = FUNC7 (xfree, buffer);

	  /* Is this really necessary?  I guess it gives the user something
	     to look at during a long download.  */
	  FUNC15 (uiout, 0, "Loading section %s, size 0x%s lma 0x%s\n",
			  sect_name, FUNC10 (size), FUNC10 (lma));

	  FUNC0 (abfd, asec, buffer, 0, size);

	  sent = 0;
	  do
	    {
	      int len;
	      bfd_size_type this_transfer = size - sent;

	      if (this_transfer >= block_size)
		this_transfer = block_size;
	      len = FUNC13 (lma, buffer,
						 this_transfer, &err);
	      if (err)
		break;
	      if (validate_download)
		{
		  /* Broken memories and broken monitors manifest
		     themselves here when bring new computers to
		     life.  This doubles already slow downloads.  */
		  /* NOTE: cagney/1999-10-18: A more efficient
		     implementation might add a verify_memory()
		     method to the target vector and then use
		     that.  remote.c could implement that method
		     using the ``qCRC'' packet.  */
		  char *check = FUNC16 (len);
		  struct cleanup *verify_cleanups = 
		    FUNC7 (xfree, check);

		  if (FUNC12 (lma, check, len) != 0)
		    FUNC6 ("Download verify read failed at 0x%s",
			   FUNC9 (lma));
		  if (FUNC8 (buffer, check, len) != 0)
		    FUNC6 ("Download verify compare failed at 0x%s",
			   FUNC9 (lma));
		  FUNC5 (verify_cleanups);
		}
	      args->data_count += len;
	      lma += len;
	      buffer += len;
	      args->write_count += 1;
	      sent += len;
	      if (quit_flag
		  || (&ui_load_progress_hook != NULL
		      && FUNC14 (sect_name, sent)))
		FUNC6 ("Canceled the download");

	      if (&show_load_progress != NULL)
		FUNC11 (sect_name, sent, size, 
				    args->data_count, args->total_size);
	    }
	  while (sent < size);

	  if (err != 0)
	    FUNC6 ("Memory access error while loading section %s.", sect_name);

	  FUNC5 (old_chain);
	}
    }
}