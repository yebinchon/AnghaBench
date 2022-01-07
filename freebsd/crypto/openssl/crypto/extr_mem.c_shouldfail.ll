; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem.c_shouldfail.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem.c_shouldfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md_fail_percent = common dso_local global i32 0, align 4
@md_tracefd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%c C%ld %%%d R%d\0A\00", align 1
@md_count = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"shouldfail write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @shouldfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shouldfail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  %5 = alloca [30 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = call i32 (...) @random()
  %8 = srem i32 %7, 100
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @md_fail_percent, align 4
  %11 = icmp slt i32 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i64, i64* @md_tracefd, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %0
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 45, i32 43
  %21 = trunc i32 %20 to i8
  %22 = load i64, i64* @md_count, align 8
  %23 = load i32, i32* @md_fail_percent, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @BIO_snprintf(i8* %16, i32 80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 signext %21, i64 %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i64, i64* @md_tracefd, align 8
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @write(i64 %28, i8* %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = getelementptr inbounds [30 x i8*], [30 x i8*]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [30 x i8*], [30 x i8*]* %5, i64 0, i64 0
  %42 = call i32 @OSSL_NELEM(i8** %41)
  %43 = call i32 @backtrace(i8** %40, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = getelementptr inbounds [30 x i8*], [30 x i8*]* %5, i64 0, i64 0
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* @md_tracefd, align 8
  %47 = call i32 @backtrace_symbols_fd(i8** %44, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %39, %36
  br label %49

49:                                               ; preds = %48, %0
  %50 = load i64, i64* @md_count, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* @md_count, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* @md_count, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (...) @parseit()
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @random(...) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8 signext, i64, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @backtrace(i8**, i32) #1

declare dso_local i32 @OSSL_NELEM(i8**) #1

declare dso_local i32 @backtrace_symbols_fd(i8**, i32, i64) #1

declare dso_local i32 @parseit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
