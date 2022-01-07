
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coresight_event {int dummy; } ;
struct coresight_device {int dummy; } ;


 struct coresight_device* coresight_next_device (struct coresight_device*,struct coresight_event*) ;

__attribute__((used)) static int
coresight_build_list(struct coresight_device *cs_dev,
    struct coresight_event *event)
{
 struct coresight_device *out;

 out = cs_dev;
 while (out != ((void*)0))
  out = coresight_next_device(out, event);

 return (0);
}
