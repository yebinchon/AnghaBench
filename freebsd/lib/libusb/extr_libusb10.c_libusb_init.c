
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_context {int debug_fixed; int * ctrl_pipe; int ctx_poll; int ctx_cond; int hotplug_lock; int ctx_lock; void* hotplug_handler; void* ctx_handler; int hotplug_devs; int hotplug_cbh; int tr_done; int pollfds; scalar_t__ debug; } ;
typedef int pthread_condattr_t ;
typedef struct libusb_context libusb_context ;


 int CLOCK_MONOTONIC ;
 int DPRINTF (struct libusb_context*,int ,char*) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_MEM ;
 int LIBUSB_ERROR_OTHER ;
 void* NO_THREAD ;
 int POLLIN ;
 int TAILQ_INIT (int *) ;
 int default_context_lock ;
 scalar_t__ errno ;
 int free (struct libusb_context*) ;
 char* getenv (char*) ;
 int libusb10_add_pollfd (struct libusb_context*,int *,int *,int ,int ) ;
 int libusb_set_nonblocking (int ) ;
 struct libusb_context* malloc (int) ;
 int memset (struct libusb_context*,int ,int) ;
 int pipe (int *) ;
 int pthread_cond_destroy (int *) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 int pthread_condattr_destroy (int *) ;
 scalar_t__ pthread_condattr_init (int *) ;
 scalar_t__ pthread_condattr_setclock (int *,int ) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strtol (char*,char**,int) ;
 struct libusb_context* usbi_default_context ;

int
libusb_init(libusb_context **context)
{
 struct libusb_context *ctx;
 pthread_condattr_t attr;
 char *debug, *ep;
 int ret;

 ctx = malloc(sizeof(*ctx));
 if (!ctx)
  return (LIBUSB_ERROR_INVALID_PARAM);

 memset(ctx, 0, sizeof(*ctx));

 debug = getenv("LIBUSB_DEBUG");
 if (debug != ((void*)0)) {




  errno = 0;
  ctx->debug = strtol(debug, &ep, 10);
  if (errno == 0 && *ep == '\0') {
   ctx->debug_fixed = 1;
  } else {






   ctx->debug = 0;
  }
 }
 TAILQ_INIT(&ctx->pollfds);
 TAILQ_INIT(&ctx->tr_done);
 TAILQ_INIT(&ctx->hotplug_cbh);
 TAILQ_INIT(&ctx->hotplug_devs);

 if (pthread_mutex_init(&ctx->ctx_lock, ((void*)0)) != 0) {
  free(ctx);
  return (LIBUSB_ERROR_NO_MEM);
 }
 if (pthread_mutex_init(&ctx->hotplug_lock, ((void*)0)) != 0) {
  pthread_mutex_destroy(&ctx->ctx_lock);
  free(ctx);
  return (LIBUSB_ERROR_NO_MEM);
 }
 if (pthread_condattr_init(&attr) != 0) {
  pthread_mutex_destroy(&ctx->ctx_lock);
  pthread_mutex_destroy(&ctx->hotplug_lock);
  free(ctx);
  return (LIBUSB_ERROR_NO_MEM);
 }
 if (pthread_condattr_setclock(&attr, CLOCK_MONOTONIC) != 0) {
  pthread_mutex_destroy(&ctx->ctx_lock);
  pthread_mutex_destroy(&ctx->hotplug_lock);
  pthread_condattr_destroy(&attr);
  free(ctx);
  return (LIBUSB_ERROR_OTHER);
 }
 if (pthread_cond_init(&ctx->ctx_cond, &attr) != 0) {
  pthread_mutex_destroy(&ctx->ctx_lock);
  pthread_mutex_destroy(&ctx->hotplug_lock);
  pthread_condattr_destroy(&attr);
  free(ctx);
  return (LIBUSB_ERROR_NO_MEM);
 }
 pthread_condattr_destroy(&attr);

 ctx->ctx_handler = NO_THREAD;
 ctx->hotplug_handler = NO_THREAD;

 ret = pipe(ctx->ctrl_pipe);
 if (ret < 0) {
  pthread_mutex_destroy(&ctx->ctx_lock);
  pthread_mutex_destroy(&ctx->hotplug_lock);
  pthread_cond_destroy(&ctx->ctx_cond);
  free(ctx);
  return (LIBUSB_ERROR_OTHER);
 }

 libusb_set_nonblocking(ctx->ctrl_pipe[0]);
 libusb_set_nonblocking(ctx->ctrl_pipe[1]);

 libusb10_add_pollfd(ctx, &ctx->ctx_poll, ((void*)0), ctx->ctrl_pipe[0], POLLIN);

 pthread_mutex_lock(&default_context_lock);
 if (usbi_default_context == ((void*)0)) {
  usbi_default_context = ctx;
 }
 pthread_mutex_unlock(&default_context_lock);

 if (context)
  *context = ctx;

 DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_init complete");

 return (0);
}
