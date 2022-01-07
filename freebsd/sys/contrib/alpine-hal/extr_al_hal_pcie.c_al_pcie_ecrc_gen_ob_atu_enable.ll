; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_ecrc_gen_ob_atu_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_ecrc_gen_ob_atu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@AL_PCIE_REV_3_ATU_NUM_OUTBOUND_REGIONS = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_ATU_NUM_OUTBOUND_REGIONS = common dso_local global i32 0, align 4
@AL_PCIE_ATU_DIR_OUTBOUND = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@AL_FALSE = common dso_local global i64 0, align 8
@PCIE_IATU_CR1_FUNC_NUM_MASK = common dso_local global i32 0, align 4
@PCIE_IATU_CR1_FUNC_NUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_pcie_port*, i32)* @al_pcie_ecrc_gen_ob_atu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcie_ecrc_gen_ob_atu_enable(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %12 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %11, i32 0, i32 1
  %13 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %12, align 8
  store %struct.al_pcie_regs* %13, %struct.al_pcie_regs** %5, align 8
  %14 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %15 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AL_PCIE_REV_3_ATU_NUM_OUTBOUND_REGIONS, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @AL_PCIE_REV_1_2_ATU_NUM_OUTBOUND_REGIONS, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %86, %23
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @AL_REG_FIELD_SET(i32 %30, i32 15, i32 0, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AL_PCIE_ATU_DIR_OUTBOUND, align 4
  %35 = call i32 @AL_REG_BIT_VAL_SET(i32 %33, i32 31, i32 %34)
  %36 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %37 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @al_reg_write32(i32* %40, i32 %41)
  %43 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %44 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i32 @al_reg_read32(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @AL_REG_BIT_GET(i32 %49, i32 31)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %29
  %53 = load i64, i64* @AL_TRUE, align 8
  br label %56

54:                                               ; preds = %29
  %55 = load i64, i64* @AL_FALSE, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  store i64 %57, i64* %8, align 8
  %58 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %59 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @al_reg_read32(i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @PCIE_IATU_CR1_FUNC_NUM_MASK, align 4
  %66 = load i32, i32* @PCIE_IATU_CR1_FUNC_NUM_SHIFT, align 4
  %67 = call i32 @AL_REG_FIELD_GET(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @AL_TRUE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %56
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @AL_REG_BIT_SET(i32 %76, i32 8)
  %78 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %79 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @al_reg_write32(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %71, %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %25

89:                                               ; preds = %25
  ret void
}

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @AL_REG_BIT_VAL_SET(i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i64 @AL_REG_BIT_GET(i32, i32) #1

declare dso_local i32 @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i32 @AL_REG_BIT_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
