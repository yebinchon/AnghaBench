; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_tegra_ahci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_tegra_ahci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ahci_sc = type { i32*, i32, %struct.ahci_controller }
%struct.ahci_controller = type { i32, i32, i32*, i64, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate FDT resource(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to enable FDT resource(s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to initialize controller)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_ahci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ahci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_ahci_sc*, align 8
  %5 = alloca %struct.ahci_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tegra_ahci_sc* @device_get_softc(i32 %9)
  store %struct.tegra_ahci_sc* %10, %struct.tegra_ahci_sc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %14, i32 0, i32 2
  store %struct.ahci_controller* %15, %struct.ahci_controller** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %19 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %23 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %22, i32 0, i32 0
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i8* @bus_alloc_resource_any(i32 %20, i32 %21, i32* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %28 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %30 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %125

35:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %8, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %7, align 4
  br label %96

49:                                               ; preds = %35
  %50 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @get_fdt_resources(%struct.tegra_ahci_sc* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %96

60:                                               ; preds = %49
  %61 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %62 = call i32 @enable_fdt_resources(%struct.tegra_ahci_sc* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %96

70:                                               ; preds = %60
  %71 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %72 = call i32 @tegra_ahci_ctrl_init(%struct.tegra_ahci_sc* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %82 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %84 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %86 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @tegra_ahci_ctlr_reset(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %96

92:                                               ; preds = %80
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @ahci_attach(i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %125

96:                                               ; preds = %91, %75, %65, %55, %47
  %97 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @SYS_RES_MEMORY, align 4
  %104 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %105 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @bus_release_resource(i32 %102, i32 %103, i32 1, i32* %106)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %110 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @SYS_RES_MEMORY, align 4
  %116 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %117 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %120 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @bus_release_resource(i32 %114, i32 %115, i32 %118, i32* %121)
  br label %123

123:                                              ; preds = %113, %108
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %92, %33
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.tegra_ahci_sc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @get_fdt_resources(%struct.tegra_ahci_sc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @enable_fdt_resources(%struct.tegra_ahci_sc*) #1

declare dso_local i32 @tegra_ahci_ctrl_init(%struct.tegra_ahci_sc*) #1

declare dso_local i32 @tegra_ahci_ctlr_reset(i32) #1

declare dso_local i32 @ahci_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
