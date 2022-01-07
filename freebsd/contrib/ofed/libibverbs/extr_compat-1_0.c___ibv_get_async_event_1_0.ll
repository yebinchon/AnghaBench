; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_get_async_event_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_get_async_event_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context_1_0 = type { i32 }
%struct.ibv_async_event = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_get_async_event_1_0(%struct.ibv_context_1_0* %0, %struct.ibv_async_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_context_1_0*, align 8
  %5 = alloca %struct.ibv_async_event*, align 8
  %6 = alloca i32, align 4
  store %struct.ibv_context_1_0* %0, %struct.ibv_context_1_0** %4, align 8
  store %struct.ibv_async_event* %1, %struct.ibv_async_event** %5, align 8
  %7 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %4, align 8
  %8 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %11 = call i32 @ibv_get_async_event(i32 %9, %struct.ibv_async_event* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %18 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %50 [
    i32 137, label %20
    i32 133, label %30
    i32 131, label %30
    i32 134, label %30
    i32 138, label %30
    i32 130, label %30
    i32 136, label %30
    i32 135, label %30
    i32 132, label %30
    i32 129, label %40
    i32 128, label %40
  ]

20:                                               ; preds = %16
  %21 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %22 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %28 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %29, align 8
  br label %51

30:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %31 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %32 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %38 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %39, align 8
  br label %51

40:                                               ; preds = %16, %16
  %41 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %42 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.ibv_async_event*, %struct.ibv_async_event** %5, align 8
  %48 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %49, align 8
  br label %51

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %40, %30, %20
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ibv_get_async_event(i32, %struct.ibv_async_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
