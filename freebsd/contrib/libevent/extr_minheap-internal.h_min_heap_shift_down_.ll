; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_minheap-internal.h_min_heap_shift_down_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_minheap-internal.h_min_heap_shift_down_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.event** }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_heap_shift_down_(%struct.TYPE_5__* %0, i32 %1, %struct.event* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.event* %2, %struct.event** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = add i32 %8, 1
  %10 = mul i32 2, %9
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ule i32 %12, %15
  br i1 %16, label %17, label %78

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.event**, %struct.event*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.event*, %struct.event** %26, i64 %28
  %30 = load %struct.event*, %struct.event** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.event**, %struct.event*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.event*, %struct.event** %33, i64 %36
  %38 = load %struct.event*, %struct.event** %37, align 8
  %39 = call i64 @min_heap_elem_greater(%struct.event* %30, %struct.event* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %23, %17
  %42 = phi i1 [ true, %17 ], [ %40, %23 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.event*, %struct.event** %6, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.event**, %struct.event*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.event*, %struct.event** %49, i64 %51
  %53 = load %struct.event*, %struct.event** %52, align 8
  %54 = call i64 @min_heap_elem_greater(%struct.event* %46, %struct.event* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  br label %78

57:                                               ; preds = %41
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.event**, %struct.event*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.event*, %struct.event** %61, i64 %63
  %65 = load %struct.event*, %struct.event** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.event**, %struct.event*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.event*, %struct.event** %68, i64 %70
  store %struct.event* %65, %struct.event** %71, align 8
  %72 = getelementptr inbounds %struct.event, %struct.event* %65, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %58, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  %77 = mul i32 2, %76
  store i32 %77, i32* %7, align 4
  br label %11

78:                                               ; preds = %56, %11
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.event*, %struct.event** %6, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.event**, %struct.event*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.event*, %struct.event** %83, i64 %85
  store %struct.event* %80, %struct.event** %86, align 8
  %87 = getelementptr inbounds %struct.event, %struct.event* %80, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %79, i32* %88, align 4
  ret void
}

declare dso_local i64 @min_heap_elem_greater(%struct.event*, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
