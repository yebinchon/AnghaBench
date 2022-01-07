; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_init.c_OPENSSL_init_ssl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_init.c_OPENSSL_init_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_init_ssl.stoperrset = internal global i32 0, align 4
@stopped = common dso_local global i64 0, align 8
@SSL_F_OPENSSL_INIT_SSL = common dso_local global i32 0, align 4
@ERR_R_INIT_FAIL = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_LOAD_CONFIG = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@ssl_base = common dso_local global i32 0, align 4
@ossl_init_ssl_base = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4
@ssl_strings = common dso_local global i32 0, align 4
@ossl_init_no_load_ssl_strings = common dso_local global i32 0, align 4
@ossl_init_load_ssl_strings = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_init_ssl(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i64, i64* @stopped, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* @OPENSSL_init_ssl.stoperrset, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  store i32 1, i32* @OPENSSL_init_ssl.stoperrset, align 4
  %12 = load i32, i32* @SSL_F_OPENSSL_INIT_SSL, align 4
  %13 = load i32, i32* @ERR_R_INIT_FAIL, align 4
  %14 = call i32 @SSLerr(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %8
  store i32 0, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load i32, i32* @OPENSSL_INIT_ADD_ALL_CIPHERS, align 4
  %18 = load i32, i32* @OPENSSL_INIT_ADD_ALL_DIGESTS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @OPENSSL_INIT_NO_LOAD_CONFIG, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @OPENSSL_init_crypto(i32 %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %30
  %37 = load i32, i32* @ossl_init_ssl_base, align 4
  %38 = call i32 @RUN_ONCE(i32* @ssl_base, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %63

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @OPENSSL_INIT_NO_LOAD_SSL_STRINGS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @ossl_init_no_load_ssl_strings, align 4
  %48 = load i32, i32* @ossl_init_load_ssl_strings, align 4
  %49 = call i32 @RUN_ONCE_ALT(i32* @ssl_strings, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @OPENSSL_INIT_LOAD_SSL_STRINGS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @ossl_init_load_ssl_strings, align 4
  %59 = call i32 @RUN_ONCE(i32* @ssl_strings, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %57, %52
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %51, %40, %35, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @RUN_ONCE_ALT(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
