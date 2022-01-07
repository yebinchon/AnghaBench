; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_muram_err_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_muram_err_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32, i32 }

@FPM_RAM_IRAM_ECC = common dso_local global i32 0, align 4
@FPM_MURAM_ECC_ERR_EX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_get_muram_err_event(%struct.fman_fpm_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_fpm_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %3, align 8
  %6 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %7 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %6, i32 0, i32 0
  %8 = call i32 @ioread32be(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %10 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %9, i32 0, i32 1
  %11 = call i32 @ioread32be(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FPM_RAM_IRAM_ECC, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %17 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %16, i32 0, i32 0
  %18 = call i32 @iowrite32be(i32 %15, i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FPM_MURAM_ECC_ERR_EX_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
