; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_order_restoration_per_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_order_restoration_per_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32 }

@FPM_PORT_FM_CTL_PORTID_SHIFT = common dso_local global i32 0, align 4
@FPM_PRT_FM_CTL1 = common dso_local global i32 0, align 4
@FPM_PRC_ORA_FM_CTL_SEL_SHIFT = common dso_local global i32 0, align 4
@FPM_PRT_FM_CTL2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_set_order_restoration_per_port(%struct.fman_fpm_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fman_fpm_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FPM_PORT_FM_CTL_PORTID_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* @FPM_PRT_FM_CTL1, align 4
  %20 = load i32, i32* @FPM_PRC_ORA_FM_CTL_SEL_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @FPM_PRT_FM_CTL1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load i32, i32* @FPM_PRT_FM_CTL2, align 4
  %28 = load i32, i32* @FPM_PRC_ORA_FM_CTL_SEL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @FPM_PRT_FM_CTL2, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %26, %18
  br label %57

35:                                               ; preds = %4
  %36 = load i32, i32* @FPM_PRT_FM_CTL2, align 4
  %37 = load i32, i32* @FPM_PRT_FM_CTL1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = srem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* @FPM_PRT_FM_CTL1, align 4
  %46 = load i32, i32* @FPM_PRC_ORA_FM_CTL_SEL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %35
  %51 = load i32, i32* @FPM_PRT_FM_CTL2, align 4
  %52 = load i32, i32* @FPM_PRC_ORA_FM_CTL_SEL_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %5, align 8
  %60 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %59, i32 0, i32 0
  %61 = call i32 @iowrite32be(i32 %58, i32* %60)
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
