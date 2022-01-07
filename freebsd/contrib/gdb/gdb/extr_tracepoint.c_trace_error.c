
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,...) ;
 char* strtol (char*,int *,int) ;

__attribute__((used)) static void
trace_error (char *buf)
{
  if (*buf++ != 'E')
    return;
  switch (*buf)
    {
    case '1':
      if (*++buf == '0')
 error ("tracepoint.c: error in outgoing packet.");
      else
 error ("tracepoint.c: error in outgoing packet at field #%ld.",
        strtol (buf, ((void*)0), 16));
    case '2':
      error ("trace API error 0x%s.", ++buf);
    default:
      error ("Target returns error code '%s'.", buf);
    }
}
