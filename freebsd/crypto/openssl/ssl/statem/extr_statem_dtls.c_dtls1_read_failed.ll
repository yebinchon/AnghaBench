; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_read_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_read_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DTLS1_READ_FAILED = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@BIO_FLAGS_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_read_failed(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %11 = load i32, i32* @SSL_F_DTLS1_READ_FAILED, align 4
  %12 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %13 = call i32 @SSLfatal(i32* %9, i32 %10, i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @dtls1_is_timer_expired(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @ossl_statem_in_error(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @SSL_in_init(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @SSL_get_rbio(i32* %29)
  %31 = load i32, i32* @BIO_FLAGS_READ, align 4
  %32 = call i32 @BIO_set_flags(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @dtls1_handle_timeout(i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %28, %22, %8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @dtls1_is_timer_expired(i32*) #1

declare dso_local i64 @ossl_statem_in_error(i32*) #1

declare dso_local i32 @SSL_in_init(i32*) #1

declare dso_local i32 @BIO_set_flags(i32, i32) #1

declare dso_local i32 @SSL_get_rbio(i32*) #1

declare dso_local i32 @dtls1_handle_timeout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
