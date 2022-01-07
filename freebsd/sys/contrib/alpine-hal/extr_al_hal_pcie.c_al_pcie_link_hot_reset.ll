; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_hot_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_hot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@AL_PCIE_OPERATING_MODE_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"PCIe %d: hot-reset is applicable only for RC mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"PCIe %d: link not started, cannot trigger hot-reset\0A\00", align 1
@PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"PCIe %d: link is already in hot-reset state\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"PCIe %d: link is already in non-hot-reset state\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"PCIe %d: %s hot-reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_link_hot_reset(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 1
  %12 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %11, align 8
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %6, align 8
  %13 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %14 = call i32 @al_pcie_operating_mode_get(%struct.al_pcie_port* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @AL_PCIE_OPERATING_MODE_RC, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %20 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @al_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %27 = call i32 @al_pcie_is_link_started(%struct.al_pcie_port* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %31 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @al_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %100

36:                                               ; preds = %25
  %37 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %38 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @al_reg_read32(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %55 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @al_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %100

60:                                               ; preds = %50, %36
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %68 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @al_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %100

73:                                               ; preds = %63, %60
  %74 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %75 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)
  %81 = call i32 @al_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %76, i8* %80)
  %82 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %83 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %73
  %93 = load i32, i32* @PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT, align 4
  br label %97

94:                                               ; preds = %73
  %95 = load i32, i32* @PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT, align 4
  %96 = xor i32 %95, -1
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %94 ]
  %99 = call i32 @al_reg_write32_masked(i32 %88, i32 %89, i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %66, %53, %29, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_pcie_is_link_started(%struct.al_pcie_port*) #1

declare dso_local i32 @al_reg_read32(i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i8*) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
