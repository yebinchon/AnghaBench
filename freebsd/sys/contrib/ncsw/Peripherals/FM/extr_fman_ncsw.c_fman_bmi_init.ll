; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_bmi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_bmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_bmi_regs = type { i32, i32, i32, i32 }
%struct.fman_cfg = type { i32, i32, i32, i32 }

@BMI_FIFO_ALIGN = common dso_local global i32 0, align 4
@FMAN_BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@BMI_CFG1_FIFO_SIZE_SHIFT = common dso_local global i32 0, align 4
@BMI_CFG2_TASKS_SHIFT = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_LIST_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STATISTICS_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4
@FMAN_EX_BMI_LIST_RAM_ECC = common dso_local global i32 0, align 4
@FMAN_EX_BMI_PIPELINE_ECC = common dso_local global i32 0, align 4
@FMAN_EX_BMI_STATISTICS_RAM_ECC = common dso_local global i32 0, align 4
@FMAN_EX_BMI_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_bmi_init(%struct.fman_bmi_regs* %0, %struct.fman_cfg* %1) #0 {
  %3 = alloca %struct.fman_bmi_regs*, align 8
  %4 = alloca %struct.fman_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.fman_bmi_regs* %0, %struct.fman_bmi_regs** %3, align 8
  store %struct.fman_cfg* %1, %struct.fman_cfg** %4, align 8
  %6 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %7 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BMI_FIFO_ALIGN, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FMAN_BMI_FIFO_UNITS, align 4
  %16 = sdiv i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @BMI_CFG1_FIFO_SIZE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %3, align 8
  %24 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %23, i32 0, i32 3
  %25 = call i32 @iowrite32be(i32 %22, i32* %24)
  %26 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @BMI_CFG2_TASKS_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %3, align 8
  %34 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %33, i32 0, i32 2
  %35 = call i32 @iowrite32be(i32 %32, i32* %34)
  store i32 0, i32* %5, align 4
  %36 = load i32, i32* @BMI_ERR_INTR_EN_LIST_RAM_ECC, align 4
  %37 = load i32, i32* @BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BMI_ERR_INTR_EN_STATISTICS_RAM_ECC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BMI_ERR_INTR_EN_DISPATCH_RAM_ECC, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %3, align 8
  %44 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %43, i32 0, i32 1
  %45 = call i32 @iowrite32be(i32 %42, i32* %44)
  %46 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %47 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FMAN_EX_BMI_LIST_RAM_ECC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load i32, i32* @BMI_ERR_INTR_EN_LIST_RAM_ECC, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %2
  %57 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FMAN_EX_BMI_PIPELINE_ECC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %69 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FMAN_EX_BMI_STATISTICS_RAM_ECC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @BMI_ERR_INTR_EN_STATISTICS_RAM_ECC, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FMAN_EX_BMI_DISPATCH_RAM_ECC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @BMI_ERR_INTR_EN_DISPATCH_RAM_ECC, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %3, align 8
  %92 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %91, i32 0, i32 0
  %93 = call i32 @iowrite32be(i32 %90, i32* %92)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
