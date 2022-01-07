; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_BmiErrEvent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_BmiErrEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32)*, %struct.fman_bmi_regs* }
%struct.fman_bmi_regs = type { i32 }

@BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC = common dso_local global i32 0, align 4
@e_FM_EX_BMI_STORAGE_PROFILE_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_LIST_RAM_ECC = common dso_local global i32 0, align 4
@e_FM_EX_BMI_LIST_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STATISTICS_RAM_ECC = common dso_local global i32 0, align 4
@e_FM_EX_BMI_STATISTICS_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4
@e_FM_EX_BMI_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @BmiErrEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BmiErrEvent(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_bmi_regs*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %6, align 8
  store %struct.fman_bmi_regs* %7, %struct.fman_bmi_regs** %4, align 8
  %8 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %4, align 8
  %9 = call i32 @fman_get_bmi_err_event(%struct.fman_bmi_regs* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @e_FM_EX_BMI_STORAGE_PROFILE_ECC, align 4
  %22 = call i32 %17(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @BMI_ERR_INTR_EN_LIST_RAM_ECC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @e_FM_EX_BMI_LIST_RAM_ECC, align 4
  %36 = call i32 %31(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @BMI_ERR_INTR_EN_STATISTICS_RAM_ECC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @e_FM_EX_BMI_STATISTICS_RAM_ECC, align 4
  %50 = call i32 %45(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @BMI_ERR_INTR_EN_DISPATCH_RAM_ECC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @e_FM_EX_BMI_DISPATCH_RAM_ECC, align 4
  %64 = call i32 %59(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @fman_get_bmi_err_event(%struct.fman_bmi_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
