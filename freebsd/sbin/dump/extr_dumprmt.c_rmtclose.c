
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TS_CLOSED ;
 scalar_t__ TS_OPEN ;
 int rmtcall (char*,char*) ;
 scalar_t__ rmtstate ;

void
rmtclose(void)
{

 if (rmtstate != TS_OPEN)
  return;
 rmtcall("close", "C\n");
 rmtstate = TS_CLOSED;
}
