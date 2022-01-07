; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_controller_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_controller_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_get_controller_event(%struct.fman_fpm_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.fman_fpm_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %7 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call i32 @ioread32be(i32* %10)
  %12 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %13 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @ioread32be(i32* %16)
  %18 = and i32 %11, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %21 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @iowrite32be(i32 %19, i32* %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
