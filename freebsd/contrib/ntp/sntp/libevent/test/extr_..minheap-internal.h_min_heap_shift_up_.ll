; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_..minheap-internal.h_min_heap_shift_up_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_..minheap-internal.h_min_heap_shift_up_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.event** }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_heap_shift_up_(%struct.TYPE_5__* %0, i32 %1, %struct.event* %2) #0 {
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

11:                                               ; preds = %27, %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.event**, %struct.event*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.event*, %struct.event** %17, i64 %19
  %21 = load %struct.event*, %struct.event** %20, align 8
  %22 = load %struct.event*, %struct.event** %6, align 8
  %23 = call i64 @min_heap_elem_greater(%struct.event* %21, %struct.event* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %14, %11
  %26 = phi i1 [ false, %11 ], [ %24, %14 ]
  br i1 %26, label %27, label %48

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.event**, %struct.event*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.event*, %struct.event** %31, i64 %33
  %35 = load %struct.event*, %struct.event** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.event**, %struct.event*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.event*, %struct.event** %38, i64 %40
  store %struct.event* %35, %struct.event** %41, align 8
  %42 = getelementptr inbounds %struct.event, %struct.event* %35, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %28, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub i32 %45, 1
  %47 = udiv i32 %46, 2
  store i32 %47, i32* %7, align 4
  br label %11

48:                                               ; preds = %25
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
