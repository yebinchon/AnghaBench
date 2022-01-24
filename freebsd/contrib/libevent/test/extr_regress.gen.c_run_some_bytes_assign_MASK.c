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
struct run {int some_bytes_set; int /*<<< orphan*/ * some_bytes_data; int /*<<< orphan*/  some_bytes_length; } ;
typedef  int /*<<< orphan*/  ev_uint8_t ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct run *msg, const ev_uint8_t * value, ev_uint32_t len)
{
  if (msg->some_bytes_data != NULL)
    FUNC0 (msg->some_bytes_data);
  msg->some_bytes_data = FUNC1(len);
  if (msg->some_bytes_data == NULL)
    return (-1);
  msg->some_bytes_set = 1;
  msg->some_bytes_length = len;
  FUNC2(msg->some_bytes_data, value, len);
  return (0);
}