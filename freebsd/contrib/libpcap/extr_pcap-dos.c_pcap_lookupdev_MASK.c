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
struct device {scalar_t__ name; scalar_t__ (* probe ) (struct device*) ;struct device* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ (*) (struct device*)) ; 
 scalar_t__ dev_base ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct device* probed_dev ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (struct device*) ; 

char *FUNC5 (char *ebuf)
{
  struct device *dev;

#ifdef USE_32BIT_DRIVERS
  init_32bit();
#endif

  for (dev = (struct device*)dev_base; dev; dev = dev->next)
  {
    FUNC1 (dev->probe);

    if ((*dev->probe)(dev))
    {
      FUNC0();
      probed_dev = (struct device*) dev; /* remember last probed device */
      return (char*) dev->name;
    }
  }

  if (ebuf)
     FUNC3 (ebuf, "No driver found");
  return (NULL);
}