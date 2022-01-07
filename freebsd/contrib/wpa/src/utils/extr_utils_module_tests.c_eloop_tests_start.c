
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_eloop {int magic; int close_in_timeout; int * pipefd2; int * pipefd1; } ;


 int MSG_INFO ;
 int close (int ) ;
 int eloop_register_read_sock (int ,int ,struct test_eloop*,int *) ;
 int eloop_register_timeout (int ,int,int ,struct test_eloop*,int *) ;
 int eloop_test_cb ;
 int eloop_test_read_1 ;
 int eloop_test_read_2 ;
 int eloop_test_timeout ;
 int errno ;
 int os_free (struct test_eloop*) ;
 int os_sleep (int ,int) ;
 struct test_eloop* os_zalloc (int) ;
 int pipe (int *) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ write (int ,char*,int) ;

__attribute__((used)) static void eloop_tests_start(int close_in_timeout)
{
 struct test_eloop *t;
 int res;

 t = os_zalloc(sizeof(*t));
 if (!t)
  return;
 t->magic = 0x12345678;
 t->close_in_timeout = close_in_timeout;

 wpa_printf(MSG_INFO, "starting eloop tests (%p) (close_in_timeout=%d)",
     t, close_in_timeout);

 res = pipe(t->pipefd1);
 if (res < 0) {
  wpa_printf(MSG_INFO, "pipe: %s", strerror(errno));
  os_free(t);
  return;
 }

 res = pipe(t->pipefd2);
 if (res < 0) {
  wpa_printf(MSG_INFO, "pipe: %s", strerror(errno));
  close(t->pipefd1[0]);
  close(t->pipefd1[1]);
  os_free(t);
  return;
 }

 wpa_printf(MSG_INFO, "pipe fds: %d,%d %d,%d",
     t->pipefd1[0], t->pipefd1[1],
     t->pipefd2[0], t->pipefd2[1]);

 eloop_register_read_sock(t->pipefd1[0], eloop_test_read_1, t, ((void*)0));
 eloop_register_read_sock(t->pipefd2[0], eloop_test_read_2, t, ((void*)0));
 eloop_register_timeout(0, 0, eloop_test_cb, t, ((void*)0));
 eloop_register_timeout(0, 200000, eloop_test_timeout, t, ((void*)0));

 if (write(t->pipefd1[1], "HELLO", 5) < 0)
  wpa_printf(MSG_INFO, "write: %s", strerror(errno));
 if (write(t->pipefd2[1], "TEST", 4) < 0)
  wpa_printf(MSG_INFO, "write: %s", strerror(errno));
 os_sleep(0, 50000);
 wpa_printf(MSG_INFO, "waiting for eloop callbacks");
}
