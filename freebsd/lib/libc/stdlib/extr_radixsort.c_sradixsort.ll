; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_sradixsort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_sradixsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETUP = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sradixsort(i32** %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca [256 x i32], align 16
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @SETUP, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @THRESHOLD, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @simplesort(i32** %19, i32 %20, i32 0, i32* %21, i32 %22)
  br label %41

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32** @malloc(i32 %28)
  store i32** %29, i32*** %11, align 8
  %30 = icmp eq i32** %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32**, i32*** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @r_sort_b(i32** %33, i32** %34, i32 %35, i32 0, i32* %36, i32 %37)
  %39 = load i32**, i32*** %11, align 8
  %40 = call i32 @free(i32** %39)
  br label %41

41:                                               ; preds = %32, %18
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @simplesort(i32**, i32, i32, i32*, i32) #1

declare dso_local i32** @malloc(i32) #1

declare dso_local i32 @r_sort_b(i32**, i32**, i32, i32, i32*, i32) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
