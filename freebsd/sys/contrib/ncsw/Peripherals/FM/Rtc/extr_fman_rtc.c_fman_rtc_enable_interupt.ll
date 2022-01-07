; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_enable_interupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_enable_interupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_rtc_enable_interupt(%struct.rtc_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.rtc_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.rtc_regs* %0, %struct.rtc_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %6 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %7 = call i32 @fman_rtc_get_interrupt_mask(%struct.rtc_regs* %6)
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @fman_rtc_set_interrupt_mask(%struct.rtc_regs* %5, i32 %9)
  ret void
}

declare dso_local i32 @fman_rtc_set_interrupt_mask(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_get_interrupt_mask(%struct.rtc_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
