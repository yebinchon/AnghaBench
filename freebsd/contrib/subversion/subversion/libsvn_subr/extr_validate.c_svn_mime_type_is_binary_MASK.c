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
typedef  int svn_boolean_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int const) ; 

svn_boolean_t
FUNC2(const char *mime_type)
{
  /* See comment in svn_mime_type_validate() above. */
  const apr_size_t len = FUNC0(mime_type, "; ");
  return ((FUNC1(mime_type, "text/", 5) != 0)
          && (len != 15 || FUNC1(mime_type, "image/x-xbitmap", len) != 0)
          && (len != 15 || FUNC1(mime_type, "image/x-xpixmap", len) != 0)
          );
}