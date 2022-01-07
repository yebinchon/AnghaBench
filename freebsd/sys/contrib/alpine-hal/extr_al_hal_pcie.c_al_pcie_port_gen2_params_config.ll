; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_gen2_params_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_gen2_params_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.al_pcie_gen2_params = type { i64, i64, i64 }

@.str = private unnamed_addr constant [86 x i8] c"PCIe %d: Gen2 params config: Tx Swing %s, interrupt on link Eq %s, set Deemphasis %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT = common dso_local global i32 0, align 4
@PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT = common dso_local global i32 0, align 4
@PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, %struct.al_pcie_gen2_params*)* @al_pcie_port_gen2_params_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_port_gen2_params_config(%struct.al_pcie_port* %0, %struct.al_pcie_gen2_params* %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca %struct.al_pcie_gen2_params*, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store %struct.al_pcie_gen2_params* %1, %struct.al_pcie_gen2_params** %4, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 1
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %5, align 8
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.al_pcie_gen2_params*, %struct.al_pcie_gen2_params** %4, align 8
  %14 = getelementptr inbounds %struct.al_pcie_gen2_params, %struct.al_pcie_gen2_params* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.al_pcie_gen2_params*, %struct.al_pcie_gen2_params** %4, align 8
  %20 = getelementptr inbounds %struct.al_pcie_gen2_params, %struct.al_pcie_gen2_params* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %25 = load %struct.al_pcie_gen2_params*, %struct.al_pcie_gen2_params** %4, align 8
  %26 = getelementptr inbounds %struct.al_pcie_gen2_params, %struct.al_pcie_gen2_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %31 = call i32 @al_dbg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %18, i8* %24, i8* %30)
  %32 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %33 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @al_reg_read32(i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.al_pcie_gen2_params*, %struct.al_pcie_gen2_params** %4, align 8
  %38 = getelementptr inbounds %struct.al_pcie_gen2_params, %struct.al_pcie_gen2_params* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT, align 4
  %44 = call i32 @AL_REG_BIT_SET(i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT, align 4
  %48 = call i32 @AL_REG_BIT_CLEAR(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.al_pcie_gen2_params*, %struct.al_pcie_gen2_params** %4, align 8
  %51 = getelementptr inbounds %struct.al_pcie_gen2_params, %struct.al_pcie_gen2_params* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT, align 4
  %57 = call i32 @AL_REG_BIT_SET(i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT, align 4
  %61 = call i32 @AL_REG_BIT_CLEAR(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.al_pcie_gen2_params*, %struct.al_pcie_gen2_params** %4, align 8
  %64 = getelementptr inbounds %struct.al_pcie_gen2_params, %struct.al_pcie_gen2_params* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT, align 4
  %70 = call i32 @AL_REG_BIT_SET(i32 %68, i32 %69)
  br label %75

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT, align 4
  %74 = call i32 @AL_REG_BIT_CLEAR(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %77 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @al_reg_write32(i32* %79, i32 %80)
  ret i32 0
}

declare dso_local i32 @al_dbg(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_BIT_SET(i32, i32) #1

declare dso_local i32 @AL_REG_BIT_CLEAR(i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
