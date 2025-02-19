; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_isinsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_isinsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_guts = type { i32, i32, i64* }

@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.re_guts*, i32)* @isinsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isinsets(%struct.re_guts* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.re_guts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.re_guts* %0, %struct.re_guts** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %11 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CHAR_BIT, align 4
  %14 = sub nsw i32 %13, 1
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* @CHAR_BIT, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %21 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %22 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %6, align 8
  br label %24

24:                                               ; preds = %37, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i64*, i64** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %47

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %41 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64* %45, i64** %6, align 8
  br label %24

46:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
