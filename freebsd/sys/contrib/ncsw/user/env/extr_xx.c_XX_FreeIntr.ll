; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_FreeIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_FreeIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@XX_IntrInfo = common dso_local global %struct.TYPE_2__* null, align 8
@XX_INTR_FLAG_PREALLOCATED = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XX_FreeIntr(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.resource*
  store %struct.resource* %7, %struct.resource** %5, align 8
  %8 = load %struct.resource*, %struct.resource** %5, align 8
  %9 = call i32 @rman_get_device(%struct.resource* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = call i64 @rman_get_start(%struct.resource* %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XX_INTR_FLAG_PREALLOCATED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @E_INVALID_STATE, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @E_OK, align 4
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_teardown_intr(i32 %40, %struct.resource* %41, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %29, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @rman_get_device(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
