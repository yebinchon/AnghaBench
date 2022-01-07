; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AL_PCIE_OPERATING_MODE_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"PCIe %d: hot-reset is applicable only for RC mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIe %d: link not started, cannot disable link\0A\00", align 1
@AL_PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@AL_PCI_EXP_LNKCTL_LNK_DIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"PCIe %d: link is already in disable state\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"PCIe %d: link is already in enable state\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"PCIe %d: %s port\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_link_disable(%struct.al_pcie_port* %0, i32 %1) #0 {
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
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %27 = call i32 @al_pcie_is_link_started(%struct.al_pcie_port* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %31 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @al_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %107

36:                                               ; preds = %25
  %37 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %38 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @AL_PCI_EXP_LNKCTL, align 4
  %44 = ashr i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @al_reg_read32(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @AL_PCI_EXP_LNKCTL_LNK_DIS, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %58 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @al_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %107

63:                                               ; preds = %53, %36
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %71 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @al_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %107

76:                                               ; preds = %66, %63
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %79 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %85 = call i32 @al_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %80, i8* %84)
  %86 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %87 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @AL_PCI_EXP_LNKCTL, align 4
  %93 = ashr i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* @AL_PCI_EXP_LNKCTL_LNK_DIS, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %77
  %100 = load i32, i32* @AL_PCI_EXP_LNKCTL_LNK_DIS, align 4
  br label %104

101:                                              ; preds = %77
  %102 = load i32, i32* @AL_PCI_EXP_LNKCTL_LNK_DIS, align 4
  %103 = xor i32 %102, -1
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i32 [ %100, %99 ], [ %103, %101 ]
  %106 = call i32 @al_reg_write32_masked(i64 %95, i32 %96, i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %69, %56, %29, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_pcie_is_link_started(%struct.al_pcie_port*) #1

declare dso_local i32 @al_reg_read32(i64) #1

declare dso_local i32 @al_dbg(i8*, i32, i8*) #1

declare dso_local i32 @al_reg_write32_masked(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
