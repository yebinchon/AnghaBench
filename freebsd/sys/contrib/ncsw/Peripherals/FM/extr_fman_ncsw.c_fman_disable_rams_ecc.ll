; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_disable_rams_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_disable_rams_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32 }

@FPM_RAM_RAMS_ECC_EN_SRC_SEL = common dso_local global i32 0, align 4
@FPM_RAM_IRAM_ECC_EN = common dso_local global i32 0, align 4
@FPM_RAM_RAMS_ECC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_disable_rams_ecc(%struct.fman_fpm_regs* %0) #0 {
  %2 = alloca %struct.fman_fpm_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %2, align 8
  %4 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %2, align 8
  %5 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %4, i32 0, i32 0
  %6 = call i32 @ioread32be(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @FPM_RAM_RAMS_ECC_EN_SRC_SEL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @FPM_RAM_IRAM_ECC_EN, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %2, align 8
  %17 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %16, i32 0, i32 0
  %18 = call i32 @iowrite32be(i32 %15, i32* %17)
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FPM_RAM_RAMS_ECC_EN, align 4
  %22 = load i32, i32* @FPM_RAM_IRAM_ECC_EN, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %2, align 8
  %27 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %26, i32 0, i32 0
  %28 = call i32 @iowrite32be(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
