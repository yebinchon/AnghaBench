; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@DC_EVENT_NL = common dso_local global i32 0, align 4
@DC_EVENT_EOL = common dso_local global i32 0, align 4
@DC_EVENT_NEW_DATA = common dso_local global i32 0, align 4
@DC_EVENT_NF = common dso_local global i32 0, align 4
@DC_EVENT_NFIELD = common dso_local global i32 0, align 4
@DC_EVENT_EOF = common dso_local global i32 0, align 4
@DC_EVENT_EOFIELD = common dso_local global i32 0, align 4
@DC_EVENT_NEW_CHAN = common dso_local global i32 0, align 4
@DC_EVENT_NEW_ADDR = common dso_local global i32 0, align 4
@DI_PORT = common dso_local global i32 0, align 4
@DC_WRITE_CH_CONF_5 = common dso_local global i32 0, align 4
@DC_WRITE_CH_ADDR_5 = common dso_local global i32 0, align 4
@DC_GEN = common dso_local global i32 0, align 4
@DC_GEN_SYNC_PRIORITY = common dso_local global i32 0, align 4
@DC_GEN_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32)* @ipu_dc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_dc_init(%struct.ipu_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 2, i32* %5, align 4
  br label %11

10:                                               ; preds = %2
  store i32 5, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %13 = load i32, i32* @DC_EVENT_NL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %12, i32 %13, i32 %14, i32 3)
  %16 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %17 = load i32, i32* @DC_EVENT_EOL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %16, i32 %17, i32 %19, i32 2)
  %21 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %22 = load i32, i32* @DC_EVENT_NEW_DATA, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 2
  %25 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %21, i32 %22, i32 %24, i32 1)
  %26 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %27 = load i32, i32* @DC_EVENT_NF, align 4
  %28 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %26, i32 %27, i32 0, i32 0)
  %29 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %30 = load i32, i32* @DC_EVENT_NFIELD, align 4
  %31 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %29, i32 %30, i32 0, i32 0)
  %32 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %33 = load i32, i32* @DC_EVENT_EOF, align 4
  %34 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %32, i32 %33, i32 0, i32 0)
  %35 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %36 = load i32, i32* @DC_EVENT_EOFIELD, align 4
  %37 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %35, i32 %36, i32 0, i32 0)
  %38 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %39 = load i32, i32* @DC_EVENT_NEW_CHAN, align 4
  %40 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %38, i32 %39, i32 0, i32 0)
  %41 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %42 = load i32, i32* @DC_EVENT_NEW_ADDR, align 4
  %43 = call i32 @ipu_dc_link_event(%struct.ipu_softc* %41, i32 %42, i32 0, i32 0)
  %44 = call i32 @WRITE_CH_CONF_PROG_W_SIZE(i32 2)
  %45 = load i32, i32* @DI_PORT, align 4
  %46 = call i32 @WRITE_CH_CONF_PROG_DISP_ID(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @DI_PORT, align 4
  %49 = call i32 @WRITE_CH_CONF_PROG_DI_ID(i32 %48)
  %50 = or i32 %47, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %52 = load i32, i32* @DC_WRITE_CH_CONF_5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @IPU_WRITE4(%struct.ipu_softc* %51, i32 %52, i32 %53)
  %55 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %56 = load i32, i32* @DC_WRITE_CH_ADDR_5, align 4
  %57 = call i32 @IPU_WRITE4(%struct.ipu_softc* %55, i32 %56, i32 0)
  %58 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %59 = load i32, i32* @DC_GEN, align 4
  %60 = load i32, i32* @DC_GEN_SYNC_PRIORITY, align 4
  %61 = load i32, i32* @DC_GEN_SYNC, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @IPU_WRITE4(%struct.ipu_softc* %58, i32 %59, i32 %62)
  ret void
}

declare dso_local i32 @ipu_dc_link_event(%struct.ipu_softc*, i32, i32, i32) #1

declare dso_local i32 @WRITE_CH_CONF_PROG_W_SIZE(i32) #1

declare dso_local i32 @WRITE_CH_CONF_PROG_DISP_ID(i32) #1

declare dso_local i32 @WRITE_CH_CONF_PROG_DI_ID(i32) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
