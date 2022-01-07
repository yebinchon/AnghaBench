
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
gdbserver_usage (void)
{
  error ("Usage:\tgdbserver COMM PROG [ARGS ...]\n"
  "\tgdbserver COMM --attach PID\n"
  "\n"
  "COMM may either be a tty device (for serial debugging), or \n"
  "HOST:PORT to listen for a TCP connection.\n");
}
