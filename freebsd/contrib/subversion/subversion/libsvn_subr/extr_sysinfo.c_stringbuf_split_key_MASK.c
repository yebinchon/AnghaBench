#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; int len; int blocksize; } ;
typedef  TYPE_1__ svn_stringbuf_t ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static const char *
FUNC2(svn_stringbuf_t *buffer, char delim)
{
  char *key;
  char *end;

  end = FUNC0(buffer->data, delim);
  if (!end)
    return NULL;

  FUNC1(buffer);

  /* Now we split the currently allocated buffer in two parts:
      - a const char * HEAD
      - the remaining stringbuf_t. */

  /* Create HEAD as '\0' terminated const char * */
  key = buffer->data;
  end = FUNC0(key, delim);
  *end = '\0';

  /* And update the TAIL to be a smaller, but still valid stringbuf */
  buffer->data = end + 1;
  buffer->len -= 1 + end - key;
  buffer->blocksize -= 1 + end - key;

  FUNC1(buffer);

  return key;
}