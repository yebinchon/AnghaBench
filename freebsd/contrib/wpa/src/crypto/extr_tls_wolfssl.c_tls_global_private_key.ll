; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_passwd_cb = common dso_local global i32* null, align 8
@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to load private key\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SSL: Loaded global private key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @tls_global_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_global_private_key(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @os_strdup(i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %55

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** @tls_passwd_cb, align 8
  %29 = call i32 @wolfSSL_CTX_set_default_passwd_cb(i32* %27, i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @wolfSSL_CTX_set_default_passwd_cb_userdata(i32* %30, i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %36 = call i32 @wolfSSL_CTX_use_PrivateKey_file(i32* %33, i8* %34, i32 %35)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %42 = call i32 @wolfSSL_CTX_use_PrivateKey_file(i32* %39, i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %38, %26
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @os_free(i8* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @wolfSSL_CTX_set_default_passwd_cb(i32* %52, i32* null)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %24, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @wolfSSL_CTX_set_default_passwd_cb(i32*, i32*) #1

declare dso_local i32 @wolfSSL_CTX_set_default_passwd_cb_userdata(i32*, i8*) #1

declare dso_local i32 @wolfSSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
