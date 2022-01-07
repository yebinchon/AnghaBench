
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHATDEBUG_EXPECT ;
 int CHATDEBUG_RECEIVE ;
 int LOG_DEBUG ;
 int STDIN_FILENO ;
 int alarm (int ) ;
 scalar_t__ alarmed ;
 int chat_alarm ;
 int chat_debug ;
 int chat_unalarm () ;
 int cleanchr (int *,unsigned char) ;
 int cleanstr (char const*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int read (int ,unsigned char*,int) ;
 int result (int) ;
 int strlen (char const*) ;
 int syslog (int ,char*,int ,...) ;

__attribute__((used)) static int
chat_expect(const char *str)
{
 int len, r = 0;

 if (chat_debug & CHATDEBUG_EXPECT)
  syslog(LOG_DEBUG, "chat_expect '%s'", cleanstr(str, strlen(str)));

 if ((len = strlen(str)) > 0) {
  int i = 0;
  char * got;

  if ((got = malloc(len + 1)) == ((void*)0))
   r = 1;
  else {

   memset(got, 0, len+1);
   alarm(chat_alarm);
   alarmed = 0;

   while (r == 0 && i < len) {
    if (alarmed)
     r = 3;
    else {
     unsigned char ch;

     if (read(STDIN_FILENO, &ch, 1) == 1) {

      if (chat_debug & CHATDEBUG_RECEIVE)
       syslog(LOG_DEBUG, "chat_recv '%s' m=%d",
        cleanchr(((void*)0), ch), i);

      if (ch == str[i])
       got[i++] = ch;
      else if (i > 0) {
       int j = 1;




       while (j < i && memcmp(got + j, str, i - j) != 0)
        j++;
       if (j < i)
        memcpy(got, got + j, i - j);
       i -= j;
      }
     } else
      r = alarmed ? 3 : 2;
    }
   }
   alarm(0);
          chat_unalarm();
          alarmed = 0;
          free(got);
  }
 }

 if (chat_debug & CHATDEBUG_EXPECT)
  syslog(LOG_DEBUG, "chat_expect %s", result(r));

 return r;
}
