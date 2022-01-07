
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHATDEBUG_SEND ;
 int LOG_DEBUG ;
 unsigned char PAUSE_CH ;
 int STDOUT_FILENO ;
 int alarm (int ) ;
 scalar_t__ alarmed ;
 int chat_alarm ;
 int chat_debug ;
 int chat_unalarm () ;
 int cleanstr (char const*,int ) ;
 int result (int) ;
 int strlen (char const*) ;
 int syslog (int ,char*,int ) ;
 int usleep (int) ;
 int write (int ,unsigned char*,int) ;

__attribute__((used)) static int
chat_send(char const *str)
{
 int r = 0;

 if (chat_debug & CHATDEBUG_SEND)
  syslog(LOG_DEBUG, "chat_send '%s'", cleanstr(str, strlen(str)));

 if (*str) {
                alarm(chat_alarm);
                alarmed = 0;
                while (r == 0 && *str)
                {
                        unsigned char ch = (unsigned char)*str++;

                        if (alarmed)
           r = 3;
                        else if (ch == PAUSE_CH)
    usleep(500000);
   else {
    usleep(10000);
                                if (write(STDOUT_FILENO, &ch, 1) != 1)
              r = alarmed ? 3 : 2;
                        }
                }
                alarm(0);
                chat_unalarm();
                alarmed = 0;
 }

        if (chat_debug & CHATDEBUG_SEND)
          syslog(LOG_DEBUG, "chat_send %s", result(r));

        return r;
}
