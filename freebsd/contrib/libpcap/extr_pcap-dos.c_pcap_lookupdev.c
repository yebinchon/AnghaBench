
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ name; scalar_t__ (* probe ) (struct device*) ;struct device* next; } ;


 int FLUSHK () ;
 int PCAP_ASSERT (scalar_t__ (*) (struct device*)) ;
 scalar_t__ dev_base ;
 int init_32bit () ;
 struct device* probed_dev ;
 int strcpy (char*,char*) ;
 scalar_t__ stub1 (struct device*) ;

char *pcap_lookupdev (char *ebuf)
{
  struct device *dev;





  for (dev = (struct device*)dev_base; dev; dev = dev->next)
  {
    PCAP_ASSERT (dev->probe);

    if ((*dev->probe)(dev))
    {
      FLUSHK();
      probed_dev = (struct device*) dev;
      return (char*) dev->name;
    }
  }

  if (ebuf)
     strcpy (ebuf, "No driver found");
  return (((void*)0));
}
