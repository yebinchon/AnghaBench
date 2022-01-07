
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ModifyLogLevel (int) ;
 int * log_stream ;

void
InitNTLogging(FILE *stream, int debug) {
 log_stream = stream;
 ModifyLogLevel(debug);
}
