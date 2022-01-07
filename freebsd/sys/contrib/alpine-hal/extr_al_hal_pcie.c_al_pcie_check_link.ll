; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_check_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i64 }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PCIE_W_DEBUG_INFO_0_LTSSM_STATE_MASK = common dso_local global i32 0, align 4
@PCIE_W_DEBUG_INFO_0_LTSSM_STATE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"PCIe %d: Port Debug 0: 0x%08x. LTSSM state :0x%x\0A\00", align 1
@AL_PCIE_LTSSM_STATE_L0 = common dso_local global i64 0, align 8
@AL_PCIE_LTSSM_STATE_L0S = common dso_local global i64 0, align 8
@AL_TRUE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, i64*)* @al_pcie_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_check_link(%struct.al_pcie_port* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %10 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.al_pcie_regs*
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %6, align 8
  %13 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %14 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @al_reg_read32(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCIE_W_DEBUG_INFO_0_LTSSM_STATE_MASK, align 4
  %21 = load i32, i32* @PCIE_W_DEBUG_INFO_0_LTSSM_STATE_SHIFT, align 4
  %22 = call i64 @AL_REG_FIELD_GET(i32 %19, i32 %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %24 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @al_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i64 %27)
  %29 = load i64*, i64** %5, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @AL_PCIE_LTSSM_STATE_L0, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @AL_PCIE_LTSSM_STATE_L0S, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @AL_TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @AL_FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i64 @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
