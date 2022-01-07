; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_tx_pause_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_tx_pause_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32 }

@MACCFG1_TX_FLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_set_tx_pause_frames(%struct.dtsec_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.dtsec_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %10 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %9, i32 0, i32 1
  %11 = call i32 @ioread32be(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, -65536
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %20 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %19, i32 0, i32 1
  %21 = call i32 @iowrite32be(i32 %18, i32* %20)
  %22 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %23 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %22, i32 0, i32 0
  %24 = call i32 @ioread32be(i32* %23)
  %25 = load i32, i32* @MACCFG1_TX_FLOW, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %28 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %27, i32 0, i32 0
  %29 = call i32 @iowrite32be(i32 %26, i32* %28)
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %32 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %31, i32 0, i32 0
  %33 = call i32 @ioread32be(i32* %32)
  %34 = load i32, i32* @MACCFG1_TX_FLOW, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %38 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %37, i32 0, i32 0
  %39 = call i32 @iowrite32be(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %30, %8
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
