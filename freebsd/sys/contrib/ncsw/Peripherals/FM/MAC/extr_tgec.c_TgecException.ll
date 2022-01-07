; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_TgecException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_TgecException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32)*, %struct.tgec_regs* }
%struct.tgec_regs = type { i32 }

@TGEC_IMASK_MDIO_SCAN_EVENT = common dso_local global i32 0, align 4
@TGEC_IMASK_MDIO_CMD_CMPL = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_MDIO_SCAN_EVENTMDIO = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_MDIO_CMD_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @TgecException to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TgecException(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tgec_regs*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.tgec_regs*, %struct.tgec_regs** %9, align 8
  store %struct.tgec_regs* %10, %struct.tgec_regs** %5, align 8
  %11 = load %struct.tgec_regs*, %struct.tgec_regs** %5, align 8
  %12 = load i32, i32* @TGEC_IMASK_MDIO_SCAN_EVENT, align 4
  %13 = load i32, i32* @TGEC_IMASK_MDIO_CMD_CMPL, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @fman_tgec_get_event(%struct.tgec_regs* %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.tgec_regs*, %struct.tgec_regs** %5, align 8
  %17 = call i32 @fman_tgec_get_interrupt_mask(%struct.tgec_regs* %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.tgec_regs*, %struct.tgec_regs** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fman_tgec_ack_event(%struct.tgec_regs* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TGEC_IMASK_MDIO_SCAN_EVENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @e_FM_MAC_EX_10G_MDIO_SCAN_EVENTMDIO, align 4
  %35 = call i32 %30(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TGEC_IMASK_MDIO_CMD_CMPL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @e_FM_MAC_EX_10G_MDIO_CMD_CMPL, align 4
  %49 = call i32 %44(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @fman_tgec_get_event(%struct.tgec_regs*, i32) #1

declare dso_local i32 @fman_tgec_get_interrupt_mask(%struct.tgec_regs*) #1

declare dso_local i32 @fman_tgec_ack_event(%struct.tgec_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
