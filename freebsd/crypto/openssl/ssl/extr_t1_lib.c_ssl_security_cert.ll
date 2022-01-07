; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_ssl_security_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_ssl_security_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_SECOP_PEER = common dso_local global i32 0, align 4
@SSL_SECOP_EE_KEY = common dso_local global i32 0, align 4
@SSL_R_EE_KEY_TOO_SMALL = common dso_local global i32 0, align 4
@SSL_SECOP_CA_KEY = common dso_local global i32 0, align 4
@SSL_R_CA_KEY_TOO_SMALL = common dso_local global i32 0, align 4
@SSL_SECOP_CA_MD = common dso_local global i32 0, align 4
@SSL_R_CA_MD_TOO_WEAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_security_cert(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @SSL_SECOP_PEER, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @SSL_SECOP_EE_KEY, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ssl_security_cert_key(i32* %20, i32* %21, i32* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @SSL_R_EE_KEY_TOO_SMALL, align 4
  store i32 %29, i32* %6, align 4
  br label %55

30:                                               ; preds = %19
  br label %43

31:                                               ; preds = %16
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @SSL_SECOP_CA_KEY, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ssl_security_cert_key(i32* %32, i32* %33, i32* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @SSL_R_CA_KEY_TOO_SMALL, align 4
  store i32 %41, i32* %6, align 4
  br label %55

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @SSL_SECOP_CA_MD, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ssl_security_cert_sig(i32* %44, i32* %45, i32* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @SSL_R_CA_MD_TOO_WEAK, align 4
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %52, %40, %28
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @ssl_security_cert_key(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ssl_security_cert_sig(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
