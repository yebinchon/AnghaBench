; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_long(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* @errno, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strtol(i8* %10, i8** %8, i32 0)
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @LONG_MAX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @LONG_MIN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @errno, align 4
  %30 = load i32, i32* @ERANGE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %24
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @errno, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %28, %16, %2
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @opt_number_error(i8* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %35, %32
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @opt_number_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
