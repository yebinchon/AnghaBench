; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_serverinfoex_srv_add_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_serverinfoex_srv_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_EXT_TLS1_3_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8**, i64*, i32*, i64, i32*, i8*)* @serverinfoex_srv_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverinfoex_srv_add_cb(i32* %0, i32 %1, i32 %2, i8** %3, i64* %4, i32* %5, i64 %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8** %3, i8*** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i64 0, i64* %21, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = load i64, i64* %17, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %53

31:                                               ; preds = %27, %9
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @ssl_get_server_cert_serverinfo(i32* %32, i8** %20, i64* %21)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i8*, i8** %20, align 8
  %37 = load i64, i64* %21, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i8**, i8*** %14, align 8
  %40 = load i64*, i64** %15, align 8
  %41 = call i32 @serverinfo_find_extension(i8* %36, i64 %37, i32 %38, i8** %39, i64* %40)
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %46 = load i32*, i32** %18, align 8
  store i32 %45, i32* %46, align 4
  store i32 -1, i32* %10, align 4
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* %22, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %53

51:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %53

52:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %52, %51, %50, %44, %30
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i64 @ssl_get_server_cert_serverinfo(i32*, i8**, i64*) #1

declare dso_local i32 @serverinfo_find_extension(i8*, i64, i32, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
