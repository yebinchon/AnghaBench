; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_SetIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_SetIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.resource = type { i32 }

@XX_IntrInfo = common dso_local global %struct.TYPE_2__* null, align 8
@XX_INTR_FLAG_PREALLOCATED = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XX_SetIntr(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.resource*
  store %struct.resource* %13, %struct.resource** %9, align 8
  %14 = load %struct.resource*, %struct.resource** %9, align 8
  %15 = call i32 @rman_get_device(%struct.resource* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.resource*, %struct.resource** %9, align 8
  %17 = call i64 @rman_get_start(%struct.resource* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XX_INTR_FLAG_PREALLOCATED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @E_BUSY, align 4
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %26
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32* %36, i32** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @E_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %75

47:                                               ; preds = %3
  %48 = load i32, i32* @INTR_TYPE_NET, align 4
  %49 = load i32, i32* @INTR_MPSAFE, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @XX_IsPortalIntr(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @INTR_EXCL, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.resource*, %struct.resource** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XX_IntrInfo, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @bus_setup_intr(i32 %59, %struct.resource* %60, i32 %61, i32* null, i32* %62, i32 %63, i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %73

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %35, %33
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @rman_get_device(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @XX_IsPortalIntr(i64) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
