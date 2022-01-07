; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_validate_cert_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_validate_cert_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ErrorOnNul = common dso_local global i32 0, align 4
@SERF_ERROR_SSL_CERT_FAILED = common dso_local global i64 0, align 8
@NID_commonName = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @validate_cert_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validate_cert_hostname(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @ErrorOnNul, align 4
  %12 = call i64 @get_subject_alt_names(i32* null, i32* %10, i32 %11, i32* null)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @X509_get_subject_name(i32* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @SERF_ERROR_SSL_CERT_FAILED, align 8
  store i64 %23, i64* %3, align 8
  br label %42

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @NID_commonName, align 4
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %28 = call i32 @X509_NAME_get_text_by_NID(i32* %25, i32 %26, i8* %27, i32 1024)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @SERF_ERROR_SSL_CERT_FAILED, align 8
  store i64 %37, i64* %3, align 8
  br label %42

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %36, %22, %15
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @get_subject_alt_names(i32*, i32*, i32, i32*) #1

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_get_text_by_NID(i32*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
