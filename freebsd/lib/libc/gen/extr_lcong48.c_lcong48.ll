; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_lcong48.c_lcong48.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_lcong48.c_lcong48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_rand48_seed = common dso_local global i16* null, align 8
@_rand48_mult = common dso_local global i16* null, align 8
@_rand48_add = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lcong48(i16* %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = getelementptr inbounds i16, i16* %3, i64 0
  %5 = load i16, i16* %4, align 2
  %6 = load i16*, i16** @_rand48_seed, align 8
  %7 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %5, i16* %7, align 2
  %8 = load i16*, i16** %2, align 8
  %9 = getelementptr inbounds i16, i16* %8, i64 1
  %10 = load i16, i16* %9, align 2
  %11 = load i16*, i16** @_rand48_seed, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %10, i16* %12, align 2
  %13 = load i16*, i16** %2, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 2
  %15 = load i16, i16* %14, align 2
  %16 = load i16*, i16** @_rand48_seed, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 2
  store i16 %15, i16* %17, align 2
  %18 = load i16*, i16** %2, align 8
  %19 = getelementptr inbounds i16, i16* %18, i64 3
  %20 = load i16, i16* %19, align 2
  %21 = load i16*, i16** @_rand48_mult, align 8
  %22 = getelementptr inbounds i16, i16* %21, i64 0
  store i16 %20, i16* %22, align 2
  %23 = load i16*, i16** %2, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 4
  %25 = load i16, i16* %24, align 2
  %26 = load i16*, i16** @_rand48_mult, align 8
  %27 = getelementptr inbounds i16, i16* %26, i64 1
  store i16 %25, i16* %27, align 2
  %28 = load i16*, i16** %2, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 5
  %30 = load i16, i16* %29, align 2
  %31 = load i16*, i16** @_rand48_mult, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 2
  store i16 %30, i16* %32, align 2
  %33 = load i16*, i16** %2, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 6
  %35 = load i16, i16* %34, align 2
  store i16 %35, i16* @_rand48_add, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
