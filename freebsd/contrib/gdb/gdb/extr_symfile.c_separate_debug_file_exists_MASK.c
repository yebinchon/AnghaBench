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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,char*,int) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static int
FUNC4 (const char *name, unsigned long crc)
{
  unsigned long file_crc = 0;
  int fd;
  char buffer[8*1024];
  int count;

  fd = FUNC2 (name, O_RDONLY | O_BINARY);
  if (fd < 0)
    return 0;

  while ((count = FUNC3 (fd, buffer, sizeof (buffer))) > 0)
    file_crc = FUNC1 (file_crc, buffer, count);

  FUNC0 (fd);

  return crc == file_crc;
}