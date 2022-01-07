; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_strerror.c_NTstrerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_strerror.c_NTstrerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@WSABASEERR = common dso_local global i64 0, align 8
@_sys_nerr = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @NTstrerror(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @WSABASEERR, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @WSABASEERR, align 8
  %18 = add nsw i64 %17, 1015
  %19 = icmp sle i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = call i8* @GetWSAErrorMessage(i64 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %3, align 8
  br label %40

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %15, %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @_sys_nerr, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @FormatError(i64 %35)
  store i8* %36, i8** %3, align 8
  br label %40

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @strerror(i64 %38)
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %37, %32, %25
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i8* @GetWSAErrorMessage(i64) #1

declare dso_local i8* @FormatError(i64) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
