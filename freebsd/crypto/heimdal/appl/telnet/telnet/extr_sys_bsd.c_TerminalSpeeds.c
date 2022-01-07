
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termspeeds {int speed; long value; } ;


 long cfgetispeed (int *) ;
 long cfgetospeed (int *) ;
 int old_tc ;
 struct termspeeds* termspeeds ;

void
TerminalSpeeds(long *input_speed, long *output_speed)
{



    long in, out;

    out = cfgetospeed(&old_tc);
    in = cfgetispeed(&old_tc);
    if (in == 0)
 in = out;
 *input_speed = in;
 *output_speed = out;

}
