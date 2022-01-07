; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_ulong.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_ulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_ulong(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* @errno, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strtoul(i8* %10, i8** %7, i32 0)
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ULONG_MAX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @ERANGE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* @errno, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %24, %16, %2
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @opt_number_error(i8* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %42

38:                                               ; preds = %31, %28
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @opt_number_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
