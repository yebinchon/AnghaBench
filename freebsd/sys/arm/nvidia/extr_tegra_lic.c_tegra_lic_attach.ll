; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_lic.c_tegra_lic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_lic.c_tegra_lic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_lic_sc = type { i32**, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot read parent node property\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannott find parent controller\0A\00", align 1
@lic_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannott allocate resources\0A\00", align 1
@LIC_CPU_IER_CLR = common dso_local global i32 0, align 4
@LIC_CPU_IEP_CLASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot register PIC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_lic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_lic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_lic_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tegra_lic_sc* @device_get_softc(i32 %9)
  store %struct.tegra_lic_sc* %10, %struct.tegra_lic_sc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_lic_sc, %struct.tegra_lic_sc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @OF_getencprop(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %84

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @OF_device_from_xref(i32 %24)
  %26 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_lic_sc, %struct.tegra_lic_sc* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_lic_sc, %struct.tegra_lic_sc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %84

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @lic_spec, align 4
  %38 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_lic_sc, %struct.tegra_lic_sc* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = call i64 @bus_alloc_resources(i32 %36, i32 %37, i32** %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %84

46:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @lic_spec, align 4
  %50 = call i32 @nitems(i32 %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %54 = getelementptr inbounds %struct.tegra_lic_sc, %struct.tegra_lic_sc* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %71

62:                                               ; preds = %52
  %63 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @LIC_CPU_IER_CLR, align 4
  %66 = call i32 @WR4(%struct.tegra_lic_sc* %63, i32 %64, i32 %65, i32 -1)
  %67 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @LIC_CPU_IEP_CLASS, align 4
  %70 = call i32 @WR4(%struct.tegra_lic_sc* %67, i32 %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %62, %61
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @OF_xref_from_node(i32 %76)
  %78 = call i32* @intr_pic_register(i32 %75, i32 %77)
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %84

83:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %92

84:                                               ; preds = %80, %43, %32, %20
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @lic_spec, align 4
  %87 = load %struct.tegra_lic_sc*, %struct.tegra_lic_sc** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_lic_sc, %struct.tegra_lic_sc* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = call i32 @bus_release_resources(i32 %85, i32 %86, i32** %89)
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %84, %83
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.tegra_lic_sc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32**) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @WR4(%struct.tegra_lic_sc*, i32, i32, i32) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
