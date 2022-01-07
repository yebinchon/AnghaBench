
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLUSHK () ;
 int _exit (int) ;
 int close_driver () ;
 int fprintf (int ,char*,char const*,unsigned int,char const*) ;
 int stderr ;

void pcap_assert (const char *what, const char *file, unsigned line)
{
  FLUSHK();
  fprintf (stderr, "%s (%u): Assertion \"%s\" failed\n",
           file, line, what);
  close_driver();
  _exit (-1);
}
