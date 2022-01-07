; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_enable_time_stamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_enable_time_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32, i32 }

@FPM_TS_INT_SHIFT = common dso_local global i32 0, align 4
@FPM_TS_CTL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_enable_time_stamp(%struct.fman_fpm_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fman_fpm_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sub nsw i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @do_div(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FPM_TS_INT_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %4, align 8
  %38 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %37, i32 0, i32 1
  %39 = call i32 @iowrite32be(i32 %36, i32* %38)
  %40 = load i32, i32* @FPM_TS_CTL_EN, align 4
  %41 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %4, align 8
  %42 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %41, i32 0, i32 0
  %43 = call i32 @iowrite32be(i32 %40, i32* %42)
  ret void
}

declare dso_local i64 @do_div(i32, i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
