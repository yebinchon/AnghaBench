; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_benchzstd.c_BMK_benchMem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_benchzstd.c_BMK_benchMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BMK_benchMem(i8* %0, i64 %1, i64* %2, i32 %3, i32 %4, i32* %5, i8* %6, i64 %7, i32 %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i8* %9, i8** %20, align 8
  %22 = call i32 (...) @BMK_initAdvancedParams()
  store i32 %22, i32* %21, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32*, i32** %16, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = load i64, i64* %18, align 8
  %31 = load i32, i32* %19, align 4
  %32 = load i8*, i8** %20, align 8
  %33 = call i32 @BMK_benchMemAdvanced(i8* %23, i64 %24, i32* null, i32 0, i64* %25, i32 %26, i32 %27, i32* %28, i8* %29, i64 %30, i32 %31, i8* %32, i32* %21)
  ret i32 %33
}

declare dso_local i32 @BMK_initAdvancedParams(...) #1

declare dso_local i32 @BMK_benchMemAdvanced(i8*, i64, i32*, i32, i64*, i32, i32, i32*, i8*, i64, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
