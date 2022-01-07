; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot parse FDT resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot enable FDT resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot register DRM device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.dc_softc* @device_get_softc(i8* %8)
  store %struct.dc_softc* %9, %struct.dc_softc** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %17, i32 0, i32 7
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @ofw_bus_get_node(i8* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %22 = call i32 @LOCK_INIT(%struct.dc_softc* %21)
  store i32 0, i32* %6, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i8* @bus_alloc_resource_any(i8* %23, i32 %24, i32* %6, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @device_printf(i8* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %88

37:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i8* @bus_alloc_resource_any(i8* %38, i32 %39, i32* %6, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %46 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @device_printf(i8* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %88

52:                                               ; preds = %37
  %53 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @get_fdt_resources(%struct.dc_softc* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @device_printf(i8* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %88

61:                                               ; preds = %52
  %62 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %63 = call i32 @enable_fdt_resources(%struct.dc_softc* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @device_printf(i8* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %88

69:                                               ; preds = %61
  %70 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %71 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %70, i32 0, i32 0
  store i32 256, i32* %71, align 8
  %72 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %73 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %72, i32 0, i32 7
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @device_get_parent(i8* %74)
  %76 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %76, i32 0, i32 7
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @TEGRA_DRM_REGISTER_CLIENT(i32 %75, i8* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @device_printf(i8* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %88

85:                                               ; preds = %69
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @bus_generic_attach(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %168

88:                                               ; preds = %82, %66, %58, %49, %34
  %89 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %90 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %89, i32 0, i32 7
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @device_get_parent(i8* %91)
  %93 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %94 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %93, i32 0, i32 7
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32 %92, i8* %95)
  %97 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %98 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %88
  %102 = load i8*, i8** %3, align 8
  %103 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %104 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %107 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_teardown_intr(i8* %102, i32* %105, i32* %108)
  br label %110

110:                                              ; preds = %101, %88
  %111 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %112 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %117 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @clk_release(i32* %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %122 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %127 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @clk_release(i32* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %132 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %137 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @hwreset_release(i32* %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %142 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i8*, i8** %3, align 8
  %147 = load i32, i32* @SYS_RES_IRQ, align 4
  %148 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %149 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @bus_release_resource(i8* %146, i32 %147, i32 0, i32* %150)
  br label %152

152:                                              ; preds = %145, %140
  %153 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %154 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i8*, i8** %3, align 8
  %159 = load i32, i32* @SYS_RES_MEMORY, align 4
  %160 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %161 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @bus_release_resource(i8* %158, i32 %159, i32 0, i32* %162)
  br label %164

164:                                              ; preds = %157, %152
  %165 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %166 = call i32 @LOCK_DESTROY(%struct.dc_softc* %165)
  %167 = load i32, i32* @ENXIO, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %85
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.dc_softc* @device_get_softc(i8*) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local i32 @LOCK_INIT(%struct.dc_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @get_fdt_resources(%struct.dc_softc*, i32) #1

declare dso_local i32 @enable_fdt_resources(%struct.dc_softc*) #1

declare dso_local i32 @TEGRA_DRM_REGISTER_CLIENT(i32, i8*) #1

declare dso_local i32 @device_get_parent(i8*) #1

declare dso_local i32 @bus_generic_attach(i8*) #1

declare dso_local i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32, i8*) #1

declare dso_local i32 @bus_teardown_intr(i8*, i32*, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i8*, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
