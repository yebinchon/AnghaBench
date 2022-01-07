
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;


 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 int fputc (char,int ) ;
 char* progname ;
 int progress_flush (int) ;
 int signals_block () ;
 int signals_unblock () ;
 int stderr ;
 int verbosity ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
vmessage(enum message_verbosity v, const char *fmt, va_list ap)
{
 if (v <= verbosity) {
  signals_block();

  progress_flush(0);





  fprintf(stderr, _("%s: "), progname);
  vfprintf(stderr, fmt, ap);
  fputc('\n', stderr);

  signals_unblock();
 }

 return;
}
