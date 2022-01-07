; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32 }

@RCTRL_RTSE = common dso_local global i32 0, align 4
@DTSEC_TCTRL_TTSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_set_ts(%struct.dtsec_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.dtsec_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %9 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %8, i32 0, i32 1
  %10 = call i32 @ioread32be(i32* %9)
  %11 = load i32, i32* @RCTRL_RTSE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %14 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %13, i32 0, i32 1
  %15 = call i32 @iowrite32be(i32 %12, i32* %14)
  %16 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %17 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %16, i32 0, i32 0
  %18 = call i32 @ioread32be(i32* %17)
  %19 = load i32, i32* @DTSEC_TCTRL_TTSE, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %22 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %21, i32 0, i32 0
  %23 = call i32 @iowrite32be(i32 %20, i32* %22)
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %26 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %25, i32 0, i32 1
  %27 = call i32 @ioread32be(i32* %26)
  %28 = load i32, i32* @RCTRL_RTSE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %32 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %31, i32 0, i32 1
  %33 = call i32 @iowrite32be(i32 %30, i32* %32)
  %34 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %35 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %34, i32 0, i32 0
  %36 = call i32 @ioread32be(i32* %35)
  %37 = load i32, i32* @DTSEC_TCTRL_TTSE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %41 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %40, i32 0, i32 0
  %42 = call i32 @iowrite32be(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %24, %7
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
