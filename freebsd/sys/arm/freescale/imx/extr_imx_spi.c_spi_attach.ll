; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32, i32, i32, i32*, i32, i32*, i32*, i32, i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Enable debug, higher values = more info\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@spi_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"could not setup interrupt handler\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"cannot configure gpio for chip select %u\0A\00", align 1
@ECSPI_CTLREG = common dso_local global i32 0, align 4
@CTLREG_CMODES_MASTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@bus_generic_attach = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.spi_softc* @device_get_softc(i32 %9)
  store %struct.spi_softc* %10, %struct.spi_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = call i32 (...) @imx_ccm_ecspi_hz()
  %15 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %16 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %17, i32 0, i32 7
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %18, i32 %20, i32* null, i32 %21)
  %23 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_get_sysctl_ctx(i32 %25)
  %27 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_get_sysctl_tree(i32 %29)
  %31 = call i32 @SYSCTL_CHILDREN(i32 %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %34 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %34, i32 0, i32 0
  %36 = call i32 @SYSCTL_ADD_INT(i32 %26, i32 %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33, i32* %35, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %37 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %8, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %1
  %51 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %52 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %56 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @spi_detach(i32 %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %177

60:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %61 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SYS_RES_IRQ, align 4
  %65 = load i32, i32* @RF_ACTIVE, align 4
  %66 = call i8* @bus_alloc_resource_any(i32 %63, i32 %64, i32* %8, i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %69 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %76 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @device_detach(i32 %81)
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %177

84:                                               ; preds = %60
  %85 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @INTR_TYPE_MISC, align 4
  %92 = load i32, i32* @INTR_MPSAFE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @spi_intr, align 4
  %95 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %96 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %97 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %96, i32 0, i32 4
  %98 = call i32 @bus_setup_intr(i32 %87, i32* %90, i32 %93, i32* null, i32 %94, %struct.spi_softc* %95, i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %84
  %102 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %107 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @device_detach(i32 %108)
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %2, align 4
  br label %177

111:                                              ; preds = %84
  %112 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %113 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ofw_bus_get_node(i32 %114)
  store i32 %115, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %161, %111
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %119 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @nitems(i32* %120)
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %116
  %124 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %125 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %130 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @gpio_pin_get_by_ofw_propidx(i32 %126, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %123
  %139 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %140 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %147 = call i32 @gpio_pin_setflags(i32 %145, i32 %146)
  br label %160

148:                                              ; preds = %123
  %149 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %150 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %151, 2
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %155 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %159, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %116

164:                                              ; preds = %116
  %165 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %166 = load i32, i32* @ECSPI_CTLREG, align 4
  %167 = load i32, i32* @CTLREG_CMODES_MASTER, align 4
  %168 = call i32 @WR4(%struct.spi_softc* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @device_add_child(i32 %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  %171 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %172 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i64, i64* @bus_generic_attach, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @config_intrhook_oneshot(i32 %174, i32 %175)
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %164, %101, %74, %50
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @imx_ccm_ecspi_hz(...) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @spi_detach(i32) #1

declare dso_local i32 @device_detach(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.spi_softc*, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @gpio_pin_get_by_ofw_propidx(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @gpio_pin_setflags(i32, i32) #1

declare dso_local i32 @WR4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
