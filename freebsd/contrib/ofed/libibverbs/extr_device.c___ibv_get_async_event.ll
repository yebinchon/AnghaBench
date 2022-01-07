; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_get_async_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_get_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ibv_async_event*)* }
%struct.ibv_async_event = type opaque
%struct.ibv_async_event.0 = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8* }
%struct.ibv_kern_async_event = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_get_async_event(%struct.ibv_context* %0, %struct.ibv_async_event.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_async_event.0*, align 8
  %6 = alloca %struct.ibv_kern_async_event, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_async_event.0* %1, %struct.ibv_async_event.0** %5, align 8
  %7 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %8 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @read(i32 %9, %struct.ibv_kern_async_event* %6, i32 8)
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ibv_kern_async_event, %struct.ibv_kern_async_event* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %18 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %20 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %54 [
    i32 138, label %22
    i32 134, label %30
    i32 132, label %30
    i32 135, label %30
    i32 139, label %30
    i32 131, label %30
    i32 137, label %30
    i32 136, label %30
    i32 133, label %30
    i32 130, label %38
    i32 129, label %38
    i32 128, label %46
  ]

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ibv_kern_async_event, %struct.ibv_kern_async_event* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %28 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i8* %26, i8** %29, align 8
  br label %60

30:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %31 = getelementptr inbounds %struct.ibv_kern_async_event, %struct.ibv_kern_async_event* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  br label %60

38:                                               ; preds = %14, %14
  %39 = getelementptr inbounds %struct.ibv_kern_async_event, %struct.ibv_kern_async_event* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %44 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  br label %60

46:                                               ; preds = %14
  %47 = getelementptr inbounds %struct.ibv_kern_async_event, %struct.ibv_kern_async_event* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %52 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  br label %60

54:                                               ; preds = %14
  %55 = getelementptr inbounds %struct.ibv_kern_async_event, %struct.ibv_kern_async_event* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %58 = getelementptr inbounds %struct.ibv_async_event.0, %struct.ibv_async_event.0* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %46, %38, %30, %22
  %61 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %62 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ibv_async_event*)*, i32 (%struct.ibv_async_event*)** %63, align 8
  %65 = icmp ne i32 (%struct.ibv_async_event*)* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %68 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.ibv_async_event*)*, i32 (%struct.ibv_async_event*)** %69, align 8
  %71 = load %struct.ibv_async_event.0*, %struct.ibv_async_event.0** %5, align 8
  %72 = bitcast %struct.ibv_async_event.0* %71 to %struct.ibv_async_event*
  %73 = call i32 %70(%struct.ibv_async_event* %72)
  br label %74

74:                                               ; preds = %66, %60
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @read(i32, %struct.ibv_kern_async_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
