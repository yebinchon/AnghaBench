; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_minheap-internal.h_min_heap_adjust_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_minheap-internal.h_min_heap_adjust_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @min_heap_adjust_(%struct.TYPE_8__* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %7 = load %struct.event*, %struct.event** %5, align 8
  %8 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 -1, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.event*, %struct.event** %5, align 8
  %15 = call i32 @min_heap_push_(%struct.TYPE_8__* %13, %struct.event* %14)
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.event*, %struct.event** %5, align 8
  %18 = getelementptr inbounds %struct.event, %struct.event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %6, align 4
  %23 = load %struct.event*, %struct.event** %5, align 8
  %24 = getelementptr inbounds %struct.event, %struct.event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %16
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.event*, %struct.event** %5, align 8
  %37 = call i64 @min_heap_elem_greater(i32 %35, %struct.event* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load %struct.event*, %struct.event** %5, align 8
  %42 = getelementptr inbounds %struct.event, %struct.event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.event*, %struct.event** %5, align 8
  %46 = call i32 @min_heap_shift_up_unconditional_(%struct.TYPE_8__* %40, i32 %44, %struct.event* %45)
  br label %55

47:                                               ; preds = %28, %16
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load %struct.event*, %struct.event** %5, align 8
  %50 = getelementptr inbounds %struct.event, %struct.event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.event*, %struct.event** %5, align 8
  %54 = call i32 @min_heap_shift_down_(%struct.TYPE_8__* %48, i32 %52, %struct.event* %53)
  br label %55

55:                                               ; preds = %47, %39
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @min_heap_push_(%struct.TYPE_8__*, %struct.event*) #1

declare dso_local i64 @min_heap_elem_greater(i32, %struct.event*) #1

declare dso_local i32 @min_heap_shift_up_unconditional_(%struct.TYPE_8__*, i32, %struct.event*) #1

declare dso_local i32 @min_heap_shift_down_(%struct.TYPE_8__*, i32, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
