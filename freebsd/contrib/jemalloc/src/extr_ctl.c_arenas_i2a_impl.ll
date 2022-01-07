; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arenas_i2a_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arenas_i2a_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ctl_arenas = common dso_local global %struct.TYPE_2__* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @arenas_i2a_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arenas_i2a_impl(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  switch i64 %8, label %11 [
    i64 129, label %9
    i64 128, label %10
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %58

10:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %58

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctl_arenas, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %57

21:                                               ; preds = %14, %11
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctl_arenas, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @UINT_MAX, align 4
  store i32 %31, i32* %7, align 4
  br label %56

32:                                               ; preds = %24, %21
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctl_arenas, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctl_arenas, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br label %49

49:                                               ; preds = %47, %32
  %50 = phi i1 [ true, %32 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  %55 = add i32 %54, 2
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %30
  br label %57

57:                                               ; preds = %56, %20
  br label %58

58:                                               ; preds = %57, %10, %9
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
