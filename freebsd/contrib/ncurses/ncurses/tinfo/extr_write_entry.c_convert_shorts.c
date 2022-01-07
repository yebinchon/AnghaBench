
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short ABSENT_NUMERIC ;
 short CANCELLED_NUMERIC ;
 int LITTLE_ENDIAN (unsigned char*,short) ;
 int TRACE_OUT (char*) ;

__attribute__((used)) static void
convert_shorts(unsigned char *buf, short *Numbers, size_t count)
{
    size_t i;
    for (i = 0; i < count; i++) {
 if (Numbers[i] == ABSENT_NUMERIC) {
     buf[2 * i] = buf[2 * i + 1] = 0377;
 } else if (Numbers[i] == CANCELLED_NUMERIC) {
     buf[2 * i] = 0376;
     buf[2 * i + 1] = 0377;
 } else {
     LITTLE_ENDIAN(buf + 2 * i, Numbers[i]);
     TRACE_OUT(("put Numbers[%u]=%d", (unsigned) i, Numbers[i]));
 }
    }
}
