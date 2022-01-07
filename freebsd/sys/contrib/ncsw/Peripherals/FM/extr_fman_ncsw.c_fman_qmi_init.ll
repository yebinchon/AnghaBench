; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_qmi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_qmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_qmi_regs = type { i32, i32, i32, i32, i32 }
%struct.fman_cfg = type { i32, i32, i32 }

@QMI_ERR_INTR_EN_DOUBLE_ECC = common dso_local global i32 0, align 4
@QMI_ERR_INTR_EN_DEQ_FROM_DEF = common dso_local global i32 0, align 4
@FMAN_EX_QMI_DEQ_FROM_UNKNOWN_PORTID = common dso_local global i32 0, align 4
@FMAN_EX_QMI_DOUBLE_ECC = common dso_local global i32 0, align 4
@QMI_TAPC_TAP = common dso_local global i32 0, align 4
@QMI_INTR_EN_SINGLE_ECC = common dso_local global i32 0, align 4
@FMAN_EX_QMI_SINGLE_ECC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_qmi_init(%struct.fman_qmi_regs* %0, %struct.fman_cfg* %1) #0 {
  %3 = alloca %struct.fman_qmi_regs*, align 8
  %4 = alloca %struct.fman_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fman_qmi_regs* %0, %struct.fman_qmi_regs** %3, align 8
  store %struct.fman_cfg* %1, %struct.fman_cfg** %4, align 8
  %8 = load i32, i32* @QMI_ERR_INTR_EN_DOUBLE_ECC, align 4
  %9 = load i32, i32* @QMI_ERR_INTR_EN_DEQ_FROM_DEF, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.fman_qmi_regs*, %struct.fman_qmi_regs** %3, align 8
  %12 = getelementptr inbounds %struct.fman_qmi_regs, %struct.fman_qmi_regs* %11, i32 0, i32 4
  %13 = call i32 @iowrite32be(i32 %10, i32* %12)
  store i32 0, i32* %5, align 4
  %14 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FMAN_EX_QMI_DEQ_FROM_UNKNOWN_PORTID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @QMI_ERR_INTR_EN_DEQ_FROM_DEF, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FMAN_EX_QMI_DOUBLE_ECC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @QMI_ERR_INTR_EN_DOUBLE_ECC, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.fman_qmi_regs*, %struct.fman_qmi_regs** %3, align 8
  %38 = getelementptr inbounds %struct.fman_qmi_regs, %struct.fman_qmi_regs* %37, i32 0, i32 3
  %39 = call i32 @iowrite32be(i32 %36, i32* %38)
  %40 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %35
  %45 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = srem i32 %52, 64
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %58, 64
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, 64
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %57
  %69 = load i32, i32* @QMI_TAPC_TAP, align 4
  %70 = load i32, i32* %5, align 4
  %71 = shl i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.fman_qmi_regs*, %struct.fman_qmi_regs** %3, align 8
  %74 = getelementptr inbounds %struct.fman_qmi_regs, %struct.fman_qmi_regs* %73, i32 0, i32 2
  %75 = call i32 @iowrite32be(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %68, %35
  store i32 0, i32* %5, align 4
  %77 = load i32, i32* @QMI_INTR_EN_SINGLE_ECC, align 4
  %78 = load %struct.fman_qmi_regs*, %struct.fman_qmi_regs** %3, align 8
  %79 = getelementptr inbounds %struct.fman_qmi_regs, %struct.fman_qmi_regs* %78, i32 0, i32 1
  %80 = call i32 @iowrite32be(i32 %77, i32* %79)
  %81 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FMAN_EX_QMI_SINGLE_ECC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* @QMI_INTR_EN_SINGLE_ECC, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %76
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.fman_qmi_regs*, %struct.fman_qmi_regs** %3, align 8
  %94 = getelementptr inbounds %struct.fman_qmi_regs, %struct.fman_qmi_regs* %93, i32 0, i32 0
  %95 = call i32 @iowrite32be(i32 %92, i32* %94)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
