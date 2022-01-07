; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"i.MX EPIT timer\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"epit\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_UNMAPPED = common dso_local global i32 0, align 4
@imx6_epit_ioaddr = common dso_local global i64* null, align 8
@imx51_epit_ioaddr = common dso_local global i64* null, align 8
@imx53_epit_ioaddr = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @epit_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epit_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ofw_bus_status_okay(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %107

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_unit(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @compat_data, align 4
  %19 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %28, i32* %2, align 4
  br label %107

29:                                               ; preds = %14
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ofw_bus_get_name(i32 %30)
  %32 = call i32* @strstr(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %107

36:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* @RF_UNMAPPED, align 4
  %40 = call %struct.resource* @bus_alloc_resource_any(i32 %37, i32 %38, i32* %7, i32 %39)
  store %struct.resource* %40, %struct.resource** %4, align 8
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = icmp eq %struct.resource* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %107

45:                                               ; preds = %36
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = call i64 @rman_get_start(%struct.resource* %46)
  store i64 %47, i64* %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load %struct.resource*, %struct.resource** %4, align 8
  %51 = call i32 @bus_free_resource(i32 %48, i32 %49, %struct.resource* %50)
  %52 = call i32 (...) @imx_soc_family()
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %107

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i64*, i64** @imx6_epit_ioaddr, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %107

69:                                               ; preds = %59
  br label %103

70:                                               ; preds = %45
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %107

75:                                               ; preds = %70
  %76 = call i32 (...) @imx_soc_type()
  switch i32 %76, label %99 [
    i32 129, label %77
    i32 128, label %88
  ]

77:                                               ; preds = %75
  %78 = load i64, i64* %5, align 8
  %79 = load i64*, i64** @imx51_epit_ioaddr, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %78, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %107

87:                                               ; preds = %77
  br label %101

88:                                               ; preds = %75
  %89 = load i64, i64* %5, align 8
  %90 = load i64*, i64** @imx53_epit_ioaddr, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %107

98:                                               ; preds = %88
  br label %101

99:                                               ; preds = %75
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  br label %107

101:                                              ; preds = %98, %87
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %69
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @device_set_desc(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %101, %99, %96, %85, %73, %67, %57, %43, %34, %25, %12
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_free_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @imx_soc_family(...) #1

declare dso_local i32 @imx_soc_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
