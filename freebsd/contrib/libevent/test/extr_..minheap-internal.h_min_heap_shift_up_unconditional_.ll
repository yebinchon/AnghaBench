; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_..minheap-internal.h_min_heap_shift_up_unconditional_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_..minheap-internal.h_min_heap_shift_up_unconditional_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.event** }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_heap_shift_up_unconditional_(%struct.TYPE_5__* %0, i32 %1, %struct.event* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.event* %2, %struct.event** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sub i32 %8, 1
  %10 = udiv i32 %9, 2
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.event**, %struct.event*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.event*, %struct.event** %15, i64 %17
  %19 = load %struct.event*, %struct.event** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.event**, %struct.event*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.event*, %struct.event** %22, i64 %24
  store %struct.event* %19, %struct.event** %25, align 8
  %26 = getelementptr inbounds %struct.event, %struct.event* %19, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %12, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 1
  %31 = udiv i32 %30, 2
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.event**, %struct.event*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.event*, %struct.event** %38, i64 %40
  %42 = load %struct.event*, %struct.event** %41, align 8
  %43 = load %struct.event*, %struct.event** %6, align 8
  %44 = call i64 @min_heap_elem_greater(%struct.event* %42, %struct.event* %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %35, %32
  %47 = phi i1 [ false, %32 ], [ %45, %35 ]
  br i1 %47, label %11, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.event*, %struct.event** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.event**, %struct.event*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.event*, %struct.event** %53, i64 %55
  store %struct.event* %50, %struct.event** %56, align 8
  %57 = getelementptr inbounds %struct.event, %struct.event* %50, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %49, i32* %58, align 4
  ret void
}

declare dso_local i64 @min_heap_elem_greater(%struct.event*, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
