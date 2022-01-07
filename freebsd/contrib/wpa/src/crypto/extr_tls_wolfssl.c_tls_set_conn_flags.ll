; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_set_conn_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_set_conn_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS_CONN_DISABLE_TLSv1_0 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_1 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_1 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_2 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_2 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @tls_set_conn_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_set_conn_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @SSL_OP_NO_TLSv1, align 4
  %12 = call i32 @wolfSSL_set_options(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @SSL_OP_NO_TLSv1_1, align 4
  %21 = call i32 @wolfSSL_set_options(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_2, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @SSL_OP_NO_TLSv1_2, align 4
  %30 = call i32 @wolfSSL_set_options(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @wolfSSL_set_options(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
