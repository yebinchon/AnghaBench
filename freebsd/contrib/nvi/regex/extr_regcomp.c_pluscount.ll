; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_pluscount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_pluscount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64 }
%struct.re_guts = type { i32*, i32 }

@OEND = common dso_local global i32 0, align 4
@BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parse*, %struct.re_guts*)* @pluscount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pluscount(%struct.parse* %0, %struct.re_guts* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.parse*, align 8
  %5 = alloca %struct.re_guts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %4, align 8
  store %struct.re_guts* %1, %struct.re_guts** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.parse*, %struct.parse** %4, align 8
  %11 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.re_guts*, %struct.re_guts** %5, align 8
  %17 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %38, %15
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %37 [
    i32 129, label %25
    i32 128, label %28
  ]

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %8, align 8
  br label %37

28:                                               ; preds = %20
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %20, %34, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @OEND, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %20, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @BAD, align 4
  %47 = load %struct.re_guts*, %struct.re_guts** %5, align 8
  %48 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
