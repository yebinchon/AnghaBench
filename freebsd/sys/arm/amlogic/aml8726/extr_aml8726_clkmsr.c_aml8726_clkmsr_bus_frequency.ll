; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_clkmsr.c_aml8726_clkmsr_bus_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_clkmsr.c_aml8726_clkmsr_bus_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, %struct.resource** }
%struct.aml8726_clkmsr_softc = type { i32, i32, %struct.aml8726_clkmsr_softc** }

@aml8726_soc_hw_rev = common dso_local global i64 0, align 8
@AML_SOC_HW_REV_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"aml8726_soc_hw_rev isn't initialized\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"clkmsr\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"amlogic,aml8726-clkmsr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/soc\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@AML_CLKMSR_CLK81 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aml8726_clkmsr_bus_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.resource, align 8
  %3 = alloca %struct.aml8726_clkmsr_softc, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i64, i64* @aml8726_soc_hw_rev, align 8
  %11 = load i64, i64* @AML_SOC_HW_REV_UNKNOWN, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @OF_finddevice(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @fdt_is_compatible_strict(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %33

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %0
  %24 = call i32 @OF_finddevice(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %76

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @fdt_find_compatible(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %29, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %76

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @OF_parent(i32 %34)
  %36 = call i64 @fdt_get_range(i32 %35, i32 0, i64* %5, i64* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @fdt_regsize(i32 %39, i64* %7, i64* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %33
  store i32 0, i32* %1, align 4
  br label %76

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = call i32 @memset(%struct.resource* %2, i32 0, i32 16)
  %48 = load i32, i32* @fdtbus_bs_tag, align 4
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0
  %55 = call i64 @bus_space_map(i32 %51, i64 %52, i64 %53, i32 0, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %76

58:                                               ; preds = %43
  %59 = bitcast %struct.aml8726_clkmsr_softc* %3 to %struct.resource*
  %60 = call i32 @memset(%struct.resource* %59, i32 0, i32 16)
  %61 = bitcast %struct.resource* %2 to %struct.aml8726_clkmsr_softc*
  %62 = getelementptr inbounds %struct.aml8726_clkmsr_softc, %struct.aml8726_clkmsr_softc* %3, i32 0, i32 2
  %63 = load %struct.aml8726_clkmsr_softc**, %struct.aml8726_clkmsr_softc*** %62, align 8
  %64 = getelementptr inbounds %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %63, i64 0
  store %struct.aml8726_clkmsr_softc* %61, %struct.aml8726_clkmsr_softc** %64, align 8
  %65 = bitcast %struct.aml8726_clkmsr_softc* %3 to %struct.resource*
  %66 = load i32, i32* @AML_CLKMSR_CLK81, align 4
  %67 = call i32 @aml8726_clkmsr_clock_frequency(%struct.resource* %65, i32 %66)
  %68 = mul nsw i32 %67, 1000000
  store i32 %68, i32* %9, align 4
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @bus_space_unmap(i32 %70, i32 %72, i64 %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %58, %57, %42, %31, %26
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @fdt_is_compatible_strict(i32, i8*) #1

declare dso_local i32 @fdt_find_compatible(i32, i8*, i32) #1

declare dso_local i64 @fdt_get_range(i32, i32, i64*, i64*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i64 @fdt_regsize(i32, i64*, i64*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i64 @bus_space_map(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @aml8726_clkmsr_clock_frequency(%struct.resource*, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
