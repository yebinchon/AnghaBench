; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_retrain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_retrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AL_PCIE_OPERATING_MODE_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"PCIe %d: link-retrain is applicable only for RC mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIe %d: link not started, cannot link-retrain\0A\00", align 1
@AL_PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@AL_PCI_EXP_LNKCTL_LNK_RTRN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_link_retrain(%struct.al_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca %struct.al_pcie_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  %6 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %7 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %6, i32 0, i32 1
  %8 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  store %struct.al_pcie_regs* %8, %struct.al_pcie_regs** %4, align 8
  %9 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %10 = call i32 @al_pcie_operating_mode_get(%struct.al_pcie_port* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AL_PCIE_OPERATING_MODE_RC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %16 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @al_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %23 = call i32 @al_pcie_is_link_started(%struct.al_pcie_port* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %27 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @al_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %21
  %33 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %4, align 8
  %34 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @AL_PCI_EXP_LNKCTL, align 4
  %40 = ashr i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load i32, i32* @AL_PCI_EXP_LNKCTL_LNK_RTRN, align 4
  %44 = load i32, i32* @AL_PCI_EXP_LNKCTL_LNK_RTRN, align 4
  %45 = call i32 @al_reg_write32_masked(i64 %42, i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %32, %25, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_pcie_is_link_started(%struct.al_pcie_port*) #1

declare dso_local i32 @al_reg_write32_masked(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
