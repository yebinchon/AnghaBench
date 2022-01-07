; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_ddc_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_ddc_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i32 }

@DDC_CTRL = common dso_local global i32 0, align 4
@CTRL_DDC_FIFO_DIR = common dso_local global i32 0, align 4
@CTRL_DDC_FIFO_DIR_READ = common dso_local global i32 0, align 4
@SLAVE_ADDR_SHIFT = common dso_local global i32 0, align 4
@SLAVE_ADDR_SEG_SHIFT = common dso_local global i32 0, align 4
@EDDC_ADDR = common dso_local global i32 0, align 4
@SLAVE_ADDR_EDDC_SHIFT = common dso_local global i32 0, align 4
@SLAVE_ADDR_OFFSET_SHIFT = common dso_local global i32 0, align 4
@DDC_SLAVE_ADDR = common dso_local global i32 0, align 4
@DDC_FIFO_CTRL = common dso_local global i32 0, align 4
@FIFO_CTRL_CLEAR = common dso_local global i32 0, align 4
@DDC_BYTE_COUNTER = common dso_local global i32 0, align 4
@DDC_COMMAND = common dso_local global i32 0, align 4
@COMMAND_EOREAD = common dso_local global i32 0, align 4
@CTRL_DDC_ACMD_START = common dso_local global i32 0, align 4
@DDC_RETRY = common dso_local global i32 0, align 4
@DDC_DELAY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DDC_INT_STATUS = common dso_local global i32 0, align 4
@INT_STATUS_XFER_DONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10hdmi_softc*, i32, i32, i32, i32)* @a10hdmi_ddc_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmi_ddc_xfer(%struct.a10hdmi_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.a10hdmi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.a10hdmi_softc* %0, %struct.a10hdmi_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %15 = load i32, i32* @DDC_CTRL, align 4
  %16 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @CTRL_DDC_FIFO_DIR, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @CTRL_DDC_FIFO_DIR_READ, align 4
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %25 = load i32, i32* @DDC_CTRL, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SLAVE_ADDR_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SLAVE_ADDR_SEG_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load i32, i32* @EDDC_ADDR, align 4
  %36 = load i32, i32* @SLAVE_ADDR_EDDC_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @SLAVE_ADDR_OFFSET_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %38, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %44 = load i32, i32* @DDC_SLAVE_ADDR, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %48 = load i32, i32* @DDC_FIFO_CTRL, align 4
  %49 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @FIFO_CTRL_CLEAR, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %54 = load i32, i32* @DDC_FIFO_CTRL, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %58 = load i32, i32* @DDC_BYTE_COUNTER, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %62 = load i32, i32* @DDC_COMMAND, align 4
  %63 = load i32, i32* @COMMAND_EOREAD, align 4
  %64 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %66 = load i32, i32* @DDC_CTRL, align 4
  %67 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @CTRL_DDC_ACMD_START, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %72 = load i32, i32* @DDC_CTRL, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @DDC_RETRY, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %89, %5
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %13, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %82 = load i32, i32* @DDC_CTRL, align 4
  %83 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @CTRL_DDC_ACMD_START, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @DDC_DELAY, align 4
  %91 = call i32 @DELAY(i32 %90)
  br label %76

92:                                               ; preds = %88, %76
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %96, i32* %6, align 4
  br label %108

97:                                               ; preds = %92
  %98 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %7, align 8
  %99 = load i32, i32* @DDC_INT_STATUS, align 4
  %100 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @INT_STATUS_XFER_DONE, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @EIO, align 4
  store i32 %106, i32* %6, align 4
  br label %108

107:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %105, %95
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @HDMI_READ(%struct.a10hdmi_softc*, i32) #1

declare dso_local i32 @HDMI_WRITE(%struct.a10hdmi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
