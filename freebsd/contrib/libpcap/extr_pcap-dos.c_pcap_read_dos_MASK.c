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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {scalar_t__ fd; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  pcap_handler ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (pcap_t *p, int cnt, pcap_handler callback, u_char *data)
{
  int rc, num = 0;

  while (num <= cnt || FUNC0(cnt))
  {
    if (p->fd <= 0)
       return (-1);
    rc = FUNC2 (p, callback, data);
    if (rc > 0)
       num++;
    if (rc < 0)
       break;
    FUNC1();  /* allow SIGINT generation, yield to Win95/NT */
  }
  return (num);
}