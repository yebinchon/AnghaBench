
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NetTrace ;
 scalar_t__ NetTraceFile ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

void
SetNetTrace(char *file)
{
    if (NetTrace && NetTrace != stdout)
 fclose(NetTrace);
    if (file && (strcmp(file, "-") != 0)) {
 NetTrace = fopen(file, "w");
 if (NetTrace) {
     strcpy((char *)NetTraceFile, file);
     return;
 }
 fprintf(stderr, "Cannot open %s.\n", file);
    }
    NetTrace = stdout;
    strcpy((char *)NetTraceFile, "(standard output)");
}
