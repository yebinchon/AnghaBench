
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TR (int ,char*) ;
 int TRACE_DATABASE ;
 int _nc_visbuf (char*) ;

__attribute__((used)) static unsigned
chop_out(char *string, unsigned i, unsigned j)
{
    TR(TRACE_DATABASE, ("chop_out %d..%d from %s", i, j, _nc_visbuf(string)));
    while (string[j] != '\0') {
 string[i++] = string[j++];
    }
    string[i] = '\0';
    return i;
}
