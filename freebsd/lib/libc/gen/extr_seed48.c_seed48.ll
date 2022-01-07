; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_seed48.c_seed48.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_seed48.c_seed48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seed48.sseed = internal global [3 x i16] zeroinitializer, align 2
@_rand48_seed = common dso_local global i16* null, align 8
@RAND48_MULT_0 = common dso_local global i32 0, align 4
@_rand48_mult = common dso_local global i32* null, align 8
@RAND48_MULT_1 = common dso_local global i32 0, align 4
@RAND48_MULT_2 = common dso_local global i32 0, align 4
@RAND48_ADD = common dso_local global i32 0, align 4
@_rand48_add = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @seed48(i16* %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** @_rand48_seed, align 8
  %4 = getelementptr inbounds i16, i16* %3, i64 0
  %5 = load i16, i16* %4, align 2
  store i16 %5, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @seed48.sseed, i64 0, i64 0), align 2
  %6 = load i16*, i16** @_rand48_seed, align 8
  %7 = getelementptr inbounds i16, i16* %6, i64 1
  %8 = load i16, i16* %7, align 2
  store i16 %8, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @seed48.sseed, i64 0, i64 1), align 2
  %9 = load i16*, i16** @_rand48_seed, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 2
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @seed48.sseed, i64 0, i64 2), align 2
  %12 = load i16*, i16** %2, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 0
  %14 = load i16, i16* %13, align 2
  %15 = load i16*, i16** @_rand48_seed, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 0
  store i16 %14, i16* %16, align 2
  %17 = load i16*, i16** %2, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 1
  %19 = load i16, i16* %18, align 2
  %20 = load i16*, i16** @_rand48_seed, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 1
  store i16 %19, i16* %21, align 2
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 2
  %24 = load i16, i16* %23, align 2
  %25 = load i16*, i16** @_rand48_seed, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 2
  store i16 %24, i16* %26, align 2
  %27 = load i32, i32* @RAND48_MULT_0, align 4
  %28 = load i32*, i32** @_rand48_mult, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @RAND48_MULT_1, align 4
  %31 = load i32*, i32** @_rand48_mult, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @RAND48_MULT_2, align 4
  %34 = load i32*, i32** @_rand48_mult, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @RAND48_ADD, align 4
  store i32 %36, i32* @_rand48_add, align 4
  ret i16* getelementptr inbounds ([3 x i16], [3 x i16]* @seed48.sseed, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
