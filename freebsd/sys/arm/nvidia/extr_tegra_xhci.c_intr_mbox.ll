; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_intr_mbox.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_intr_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xhci_softc = type { i32 }

@XUSB_CFG_ARU_SMI_INTR = common dso_local global i32 0, align 4
@ARU_SMI_INTR_FW_HANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"XUSB CPU firmware hang!!! CPUCTL: 0x%08X\0A\00", align 1
@XUSB_FALCON_CPUCTL = common dso_local global i32 0, align 4
@T_XUSB_CFG_ARU_MAILBOX_DATA_OUT = common dso_local global i32 0, align 4
@T_XUSB_CFG_ARU_MAILBOX_OWNER = common dso_local global i32 0, align 4
@ARU_MAILBOX_OWNER_NONE = common dso_local global i32 0, align 4
@T_XUSB_CFG_ARU_MAILBOX_CMD = common dso_local global i32 0, align 4
@ARU_MAILBOX_CMD_DEST_SMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @intr_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_mbox(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.tegra_xhci_softc*
  store %struct.tegra_xhci_softc* %9, %struct.tegra_xhci_softc** %3, align 8
  %10 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %11 = load i32, i32* @XUSB_CFG_ARU_SMI_INTR, align 4
  %12 = call i32 @FPCI_RD4(%struct.tegra_xhci_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %14 = load i32, i32* @XUSB_CFG_ARU_SMI_INTR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @FPCI_WR4(%struct.tegra_xhci_softc* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ARU_SMI_INTR_FW_HANG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %26 = load i32, i32* @XUSB_FALCON_CPUCTL, align 4
  %27 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %25, i32 %26)
  %28 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %31 = load i32, i32* @T_XUSB_CFG_ARU_MAILBOX_DATA_OUT, align 4
  %32 = call i32 @FPCI_RD4(%struct.tegra_xhci_softc* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %33 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ARU_MAILBOX_DATA_OUT_TYPE(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ARU_MAILBOX_DATA_OUT_DATA(i32 %36)
  %38 = call i32 @process_msg(%struct.tegra_xhci_softc* %33, i32 %35, i32 %37, i32* %6, i32* %7)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @mbox_send_ack(%struct.tegra_xhci_softc* %42, i32 %43, i32 %44)
  br label %51

46:                                               ; preds = %29
  %47 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %48 = load i32, i32* @T_XUSB_CFG_ARU_MAILBOX_OWNER, align 4
  %49 = load i32, i32* @ARU_MAILBOX_OWNER_NONE, align 4
  %50 = call i32 @FPCI_WR4(%struct.tegra_xhci_softc* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %53 = load i32, i32* @T_XUSB_CFG_ARU_MAILBOX_CMD, align 4
  %54 = call i32 @FPCI_RD4(%struct.tegra_xhci_softc* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @ARU_MAILBOX_CMD_DEST_SMI, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %60 = load i32, i32* @T_XUSB_CFG_ARU_MAILBOX_CMD, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @FPCI_WR4(%struct.tegra_xhci_softc* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @FPCI_RD4(%struct.tegra_xhci_softc*, i32) #1

declare dso_local i32 @FPCI_WR4(%struct.tegra_xhci_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @CSB_RD4(%struct.tegra_xhci_softc*, i32) #1

declare dso_local i32 @process_msg(%struct.tegra_xhci_softc*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARU_MAILBOX_DATA_OUT_TYPE(i32) #1

declare dso_local i32 @ARU_MAILBOX_DATA_OUT_DATA(i32) #1

declare dso_local i32 @mbox_send_ack(%struct.tegra_xhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
