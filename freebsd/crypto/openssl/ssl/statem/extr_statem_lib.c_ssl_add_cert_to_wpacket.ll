; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl_add_cert_to_wpacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl_add_cert_to_wpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_ADD_CERT_TO_WPACKET = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @ssl_add_cert_to_wpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_add_cert_to_wpacket(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @i2d_X509(i32* %12, i8** null)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %19 = load i32, i32* @SSL_F_SSL_ADD_CERT_TO_WPACKET, align 4
  %20 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %21 = call i32 @SSLfatal(i32* %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @WPACKET_sub_allocate_bytes_u24(i32* %23, i32 %24, i8** %11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @i2d_X509(i32* %28, i8** %11)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %22
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %35 = load i32, i32* @SSL_F_SSL_ADD_CERT_TO_WPACKET, align 4
  %36 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %37 = call i32 @SSLfatal(i32* %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %52

38:                                               ; preds = %27
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @SSL_IS_TLS13(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @tls_construct_extensions(i32* %43, i32* %44, i32 %45, i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %52

51:                                               ; preds = %42, %38
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50, %32, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @i2d_X509(i32*, i8**) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u24(i32*, i32, i8**) #1

declare dso_local i64 @SSL_IS_TLS13(i32*) #1

declare dso_local i32 @tls_construct_extensions(i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
