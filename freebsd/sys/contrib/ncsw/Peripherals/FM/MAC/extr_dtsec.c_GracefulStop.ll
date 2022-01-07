; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_GracefulStop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_GracefulStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { %struct.TYPE_4__, %struct.dtsec_regs* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@e_COMM_MODE_RX = common dso_local global i32 0, align 4
@e_COMM_MODE_TX = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtsec_regs*, i32)* @GracefulStop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GracefulStop(%struct.dtsec_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.dtsec_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtsec_regs*, align 8
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %7 = call i32 @ASSERT_COND(%struct.dtsec_regs* %6)
  %8 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %9 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %8, i32 0, i32 1
  %10 = load %struct.dtsec_regs*, %struct.dtsec_regs** %9, align 8
  store %struct.dtsec_regs* %10, %struct.dtsec_regs** %5, align 8
  %11 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %12 = call i32 @ASSERT_COND(%struct.dtsec_regs* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @e_COMM_MODE_RX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %19 = call i32 @fman_dtsec_stop_rx(%struct.dtsec_regs* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @e_COMM_MODE_TX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %27 = call i32 @fman_dtsec_stop_tx(%struct.dtsec_regs* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @E_OK, align 4
  ret i32 %29
}

declare dso_local i32 @ASSERT_COND(%struct.dtsec_regs*) #1

declare dso_local i32 @fman_dtsec_stop_rx(%struct.dtsec_regs*) #1

declare dso_local i32 @fman_dtsec_stop_tx(%struct.dtsec_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
