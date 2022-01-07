; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_debug_print_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_debug_print_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wpa_debug_level = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"OpenSSL: %s\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @debug_print_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_cert(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* @wpa_debug_level, align 8
  %10 = load i64, i64* @MSG_DEBUG, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = call i32 (...) @BIO_s_mem()
  %15 = call i32* @BIO_new(i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %54

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @X509_print(i32* %20, i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @BIO_ctrl_pending(i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  %27 = call i8* @os_malloc(i64 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @BIO_free(i32* %31)
  br label %54

33:                                               ; preds = %19
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @BIO_read(i32* %34, i8* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i64, i64* @MSG_DEBUG, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @wpa_printf(i64 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %40, %33
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @os_free(i8* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @BIO_free(i32* %52)
  br label %54

54:                                               ; preds = %49, %30, %18, %12
  ret void
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @X509_print(i32*, i32*) #1

declare dso_local i64 @BIO_ctrl_pending(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i64, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
