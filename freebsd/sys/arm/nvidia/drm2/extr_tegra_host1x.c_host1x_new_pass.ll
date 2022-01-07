; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_new_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_new_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_softc = type { i32, %struct.TYPE_2__, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.host1x_softc*, i32 }

@bus_current_pass = common dso_local global i64 0, align 8
@BUS_PASS_DEFAULT = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot allocate interrupt.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"host1x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot get fuse reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot get i2c clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot enable clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Cannot clear reset\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@host1x_gen_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Cannot setup gen interrupt.\0A\00", align 1
@host1x_syncpt_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Cannot setup syncpt interrupt.\0A\00", align 1
@host1x_irq_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @host1x_new_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_new_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.host1x_softc* @device_get_softc(i32 %7)
  store %struct.host1x_softc* %8, %struct.host1x_softc** %3, align 8
  %9 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %10 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @bus_current_pass, align 8
  %15 = load i64, i64* @BUS_PASS_DEFAULT, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @bus_generic_new_pass(i32 %18)
  br label %172

20:                                               ; preds = %13
  %21 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %22 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @ofw_bus_get_node(i32 %23)
  store i64 %24, i64* %6, align 8
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SYS_RES_IRQ, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i8* @bus_alloc_resource_any(i32 %25, i32 %26, i32* %5, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %31 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %33 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %4, align 4
  br label %169

40:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i32* %5, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %47 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %46, i32 0, i32 5
  store i32* %45, i32** %47, align 8
  %48 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %49 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %4, align 4
  br label %169

56:                                               ; preds = %40
  %57 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %58 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %61 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %60, i32 0, i32 7
  %62 = call i32 @hwreset_get_by_ofw_name(i32 %59, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %2, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %169

68:                                               ; preds = %56
  %69 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %70 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %73 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %72, i32 0, i32 8
  %74 = call i32 @clk_get_by_ofw_index(i32 %71, i32 0, i32 0, i32* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %169

81:                                               ; preds = %68
  %82 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %83 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @clk_enable(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %169

92:                                               ; preds = %81
  %93 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %94 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hwreset_deassert(i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %101 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %169

104:                                              ; preds = %92
  %105 = load i32, i32* %2, align 4
  %106 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %107 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @INTR_TYPE_MISC, align 4
  %110 = load i32, i32* @INTR_MPSAFE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @host1x_gen_intr, align 4
  %113 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %114 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %115 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %114, i32 0, i32 4
  %116 = call i32 @bus_setup_intr(i32 %105, i32* %108, i32 %111, i32* null, i32 %112, %struct.host1x_softc* %113, i32* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i32, i32* %2, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %169

122:                                              ; preds = %104
  %123 = load i32, i32* %2, align 4
  %124 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %125 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @INTR_TYPE_MISC, align 4
  %128 = load i32, i32* @INTR_MPSAFE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @host1x_syncpt_intr, align 4
  %131 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %132 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %133 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %132, i32 0, i32 2
  %134 = call i32 @bus_setup_intr(i32 %123, i32* %126, i32 %129, i32* null, i32 %130, %struct.host1x_softc* %131, i32* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %122
  %138 = load i32, i32* %2, align 4
  %139 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %169

140:                                              ; preds = %122
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @simplebus_init(i32 %141, i32 0)
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @OF_child(i64 %143)
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %152, %140
  %146 = load i64, i64* %6, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %2, align 4
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @simplebus_add_device(i32 %149, i64 %150, i32 0, i32* null, i32 -1, i32* null)
  br label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %6, align 8
  %154 = call i64 @OF_peer(i64 %153)
  store i64 %154, i64* %6, align 8
  br label %145

155:                                              ; preds = %145
  %156 = load i32, i32* @host1x_irq_hook, align 4
  %157 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %158 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  %160 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %161 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %162 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store %struct.host1x_softc* %160, %struct.host1x_softc** %163, align 8
  %164 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %165 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %164, i32 0, i32 1
  %166 = call i32 @config_intrhook_establish(%struct.TYPE_2__* %165)
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @bus_generic_new_pass(i32 %167)
  br label %172

169:                                              ; preds = %137, %119, %99, %88, %77, %65, %52, %36
  %170 = load i32, i32* %2, align 4
  %171 = call i32 @device_detach(i32 %170)
  br label %172

172:                                              ; preds = %169, %155, %17
  ret void
}

declare dso_local %struct.host1x_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_new_pass(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.host1x_softc*, i32*) #1

declare dso_local i32 @simplebus_init(i32, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @simplebus_add_device(i32, i64, i32, i32*, i32, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @device_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
