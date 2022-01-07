; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_num_of_riscs_per_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_num_of_riscs_per_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32 }

@FPM_PORT_FM_CTL_PORTID_SHIFT = common dso_local global i32 0, align 4
@FPM_PRT_FM_CTL2 = common dso_local global i32 0, align 4
@FPM_PRT_FM_CTL1 = common dso_local global i32 0, align 4
@FPM_PRC_ORA_FM_CTL_SEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_set_num_of_riscs_per_port(%struct.fman_fpm_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @FPM_PRT_FM_CTL2, align 4
  %17 = load i32, i32* @FPM_PRT_FM_CTL1, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @FPM_PRC_ORA_FM_CTL_SEL_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %5, align 8
  %29 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %28, i32 0, i32 0
  %30 = call i32 @iowrite32be(i32 %27, i32* %29)
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
