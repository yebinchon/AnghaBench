; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err_prn.c_ERR_print_errors_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err_prn.c_ERR_print_errors_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"%lu:%s:%s:%d:%s\0A\00", align 1
@ERR_TXT_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i8*, i64, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.anon, align 8
  store i32 (i8*, i64, i8*)* %0, i32 (i8*, i64, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = bitcast %union.anon* %12 to i64*
  store i64 0, i64* %13, align 8
  %14 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  %15 = bitcast %union.anon* %12 to i32*
  store i32 %14, i32* %15, align 8
  br label %16

16:                                               ; preds = %47, %2
  %17 = call i64 @ERR_get_error_line_data(i8** %8, i32* %10, i8** %9, i32* %11)
  store i64 %17, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %22 = call i32 @ERR_error_string_n(i64 %20, i8* %21, i32 256)
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %24 = bitcast %union.anon* %12 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ERR_TXT_STRING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i8*, i8** %9, align 8
  br label %36

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = call i32 @BIO_snprintf(i8* %23, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %25, i8* %26, i8* %27, i32 %28, i8* %37)
  %39 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %3, align 8
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %42 = call i64 @strlen(i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 %39(i8* %40, i64 %42, i8* %43)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %48

47:                                               ; preds = %36
  br label %16

48:                                               ; preds = %46, %16
  ret void
}

declare dso_local i32 @CRYPTO_THREAD_get_current_id(...) #1

declare dso_local i64 @ERR_get_error_line_data(i8**, i32*, i8**, i32*) #1

declare dso_local i32 @ERR_error_string_n(i64, i8*, i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i64, i8*, i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
