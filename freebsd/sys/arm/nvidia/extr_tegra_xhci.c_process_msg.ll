; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_process_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xhci_softc = type { i32, i32, i32 }

@MBOX_CMD_ACK = common dso_local global i32 0, align 4
@MBOX_CMD_NAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Received unused/unexpected command: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Received unknown command: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xhci_softc*, i32, i32, i32*, i32*)* @process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_msg(%struct.tegra_xhci_softc* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.tegra_xhci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tegra_xhci_softc* %0, %struct.tegra_xhci_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %10, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %95 [
    i32 136, label %16
    i32 141, label %16
    i32 135, label %45
    i32 140, label %45
    i32 132, label %74
    i32 131, label %76
    i32 130, label %76
    i32 133, label %79
    i32 129, label %82
    i32 128, label %82
    i32 139, label %85
    i32 138, label %85
    i32 143, label %88
    i32 144, label %88
    i32 142, label %88
    i32 137, label %88
    i32 134, label %88
  ]

16:                                               ; preds = %5, %5
  %17 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 1000
  %23 = trunc i64 %22 to i32
  %24 = call i32 @clk_set_freq(i32 %19, i32 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_get_freq(i32 %30, i32* %11)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sdiv i32 %32, 1000
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %16
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @MBOX_CMD_ACK, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @MBOX_CMD_NAK, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %101

45:                                               ; preds = %5, %5
  %46 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 1000
  %52 = trunc i64 %51 to i32
  %53 = call i32 @clk_set_freq(i32 %48, i32 %52, i32 0)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %6, align 8
  %58 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_get_freq(i32 %59, i32* %11)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sdiv i32 %61, 1000
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %45
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @MBOX_CMD_ACK, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @MBOX_CMD_NAK, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %101

74:                                               ; preds = %5
  %75 = load i32*, i32** %9, align 8
  store i32 0, i32* %75, align 4
  br label %101

76:                                               ; preds = %5, %5
  %77 = load i32, i32* @MBOX_CMD_NAK, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %101

79:                                               ; preds = %5
  %80 = load i32, i32* @MBOX_CMD_ACK, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %101

82:                                               ; preds = %5, %5
  %83 = load i32, i32* @MBOX_CMD_NAK, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %101

85:                                               ; preds = %5, %5
  %86 = load i32, i32* @MBOX_CMD_NAK, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  br label %101

88:                                               ; preds = %5, %5, %5, %5, %5
  %89 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %6, align 8
  %90 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %9, align 8
  store i32 0, i32* %94, align 4
  br label %101

95:                                               ; preds = %5
  %96 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %6, align 8
  %97 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %88, %85, %82, %79, %76, %74, %71, %42
  ret void
}

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
