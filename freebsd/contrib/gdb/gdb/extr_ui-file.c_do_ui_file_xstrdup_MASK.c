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
struct accumulated_ui_file {char* buffer; long length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,long) ; 
 char* FUNC1 (long) ; 
 char* FUNC2 (char*,long) ; 

__attribute__((used)) static void
FUNC3 (void *context, const char *buffer, long length)
{
  struct accumulated_ui_file *acc = context;
  if (acc->buffer == NULL)
    acc->buffer = FUNC1 (length + 1);
  else
    acc->buffer = FUNC2 (acc->buffer, acc->length + length + 1);
  FUNC0 (acc->buffer + acc->length, buffer, length);
  acc->length += length;
  acc->buffer[acc->length] = '\0';
}