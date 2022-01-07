
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_event {int dummy; } ;


 int memset (struct pt_event*,int ,int) ;

__attribute__((used)) static struct pt_event *pt_event_init(struct pt_event *event)
{
 if (event)
  memset(event, 0, sizeof(*event));

 return event;
}
