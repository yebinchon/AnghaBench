; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_init_session_cache_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_init_session_cache_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_SESS_CACHE_NO_INTERNAL = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@add_session = common dso_local global i32 0, align 4
@get_session = common dso_local global i32 0, align 4
@del_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_session_cache_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_session_cache_ctx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL, align 4
  %5 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @SSL_CTX_set_session_cache_mode(i32* %3, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @add_session, align 4
  %10 = call i32 @SSL_CTX_sess_set_new_cb(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @get_session, align 4
  %13 = call i32 @SSL_CTX_sess_set_get_cb(i32* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @del_session, align 4
  %16 = call i32 @SSL_CTX_sess_set_remove_cb(i32* %14, i32 %15)
  ret void
}

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_new_cb(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_get_cb(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_remove_cb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
