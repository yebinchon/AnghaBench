; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_..minheap-internal.h_min_heap_erase_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_..minheap-internal.h_min_heap_erase_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.event** }
%struct.event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @min_heap_erase_(%struct.TYPE_7__* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %8 = load %struct.event*, %struct.event** %5, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 -1, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.event**, %struct.event*** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds %struct.event*, %struct.event** %16, i64 %20
  %22 = load %struct.event*, %struct.event** %21, align 8
  store %struct.event* %22, %struct.event** %6, align 8
  %23 = load %struct.event*, %struct.event** %5, align 8
  %24 = getelementptr inbounds %struct.event, %struct.event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %7, align 4
  %29 = load %struct.event*, %struct.event** %5, align 8
  %30 = getelementptr inbounds %struct.event, %struct.event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %13
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.event**, %struct.event*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.event*, %struct.event** %37, i64 %39
  %41 = load %struct.event*, %struct.event** %40, align 8
  %42 = load %struct.event*, %struct.event** %6, align 8
  %43 = call i64 @min_heap_elem_greater(%struct.event* %41, %struct.event* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load %struct.event*, %struct.event** %5, align 8
  %48 = getelementptr inbounds %struct.event, %struct.event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.event*, %struct.event** %6, align 8
  %52 = call i32 @min_heap_shift_up_unconditional_(%struct.TYPE_7__* %46, i32 %50, %struct.event* %51)
  br label %61

53:                                               ; preds = %34, %13
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load %struct.event*, %struct.event** %5, align 8
  %56 = getelementptr inbounds %struct.event, %struct.event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.event*, %struct.event** %6, align 8
  %60 = call i32 @min_heap_shift_down_(%struct.TYPE_7__* %54, i32 %58, %struct.event* %59)
  br label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.event*, %struct.event** %5, align 8
  %63 = getelementptr inbounds %struct.event, %struct.event* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @min_heap_elem_greater(%struct.event*, %struct.event*) #1

declare dso_local i32 @min_heap_shift_up_unconditional_(%struct.TYPE_7__*, i32, %struct.event*) #1

declare dso_local i32 @min_heap_shift_down_(%struct.TYPE_7__*, i32, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
