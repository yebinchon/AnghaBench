; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err.c_ERR_error_string_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err.c_ERR_error_string_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"lib(%lu)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"func(%lu)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"reason(%lu)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"error:%08lX:%s:%s:%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"err:%lx:%lx:%lx:%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERR_error_string_n(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %76

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ERR_GET_LIB(i64 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i8* @ERR_lib_error_string(i64 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %28 = load i64, i64* %13, align 8
  %29 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %27, i64 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i64, i64* %4, align 8
  %33 = call i8* @ERR_func_error_string(i64 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @ERR_GET_FUNC(i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %40 = load i64, i64* %14, align 8
  %41 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %39, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i64, i64* %4, align 8
  %45 = call i8* @ERR_reason_error_string(i64 %44)
  store i8* %45, i8** %12, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @ERR_GET_REASON(i64 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %52 = load i64, i64* %15, align 8
  %53 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %51, i64 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8* %54, i8** %12, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %56, i64 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %58, i8* %59, i8* %60, i8* %61)
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = load i64, i64* %6, align 8
  %66 = sub i64 %65, 1
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %55
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %71, i64 %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %18, %68, %55
  ret void
}

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i8* @ERR_lib_error_string(i64) #1

declare dso_local i32 @BIO_snprintf(i8*, i64, i8*, i64, ...) #1

declare dso_local i8* @ERR_func_error_string(i64) #1

declare dso_local i64 @ERR_GET_FUNC(i64) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
