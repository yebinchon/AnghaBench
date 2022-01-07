
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int PBUFSIZ ;
 int last_sent_signal ;
 int last_sent_step ;
 int sds_send (unsigned char*,int) ;

__attribute__((used)) static void
sds_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  unsigned char buf[PBUFSIZ];

  last_sent_signal = siggnal;
  last_sent_step = step;

  buf[0] = (step ? 21 : 20);
  buf[1] = 0;

  sds_send (buf, 2);
}
