; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_ocsp_debug_print_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_ocsp_debug_print_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wpa_debug_level = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"OpenSSL: OCSP Response\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ocsp_debug_print_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocsp_debug_print_resp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i64, i64* @wpa_debug_level, align 8
  %8 = load i64, i64* @MSG_DEBUG, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = call i32 (...) @BIO_s_mem()
  %13 = call i32* @BIO_new(i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %51

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @OCSP_RESPONSE_print(i32* %18, i32* %19, i32 0)
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @BIO_ctrl_pending(i32* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  %25 = call i8* @os_malloc(i64 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @BIO_free(i32* %29)
  br label %51

31:                                               ; preds = %17
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @BIO_read(i32* %32, i8* %33, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i64, i64* @MSG_DEBUG, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @wpa_printf(i64 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %38, %31
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @os_free(i8* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @BIO_free(i32* %49)
  br label %51

51:                                               ; preds = %46, %28, %16, %10
  ret void
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @OCSP_RESPONSE_print(i32*, i32*, i32) #1

declare dso_local i64 @BIO_ctrl_pending(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i64, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
