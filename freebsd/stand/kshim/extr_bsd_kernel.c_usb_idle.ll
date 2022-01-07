; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@usb_proc_level = common dso_local global i32 0, align 4
@Giant = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@usb_pci_root = common dso_local global i32 0, align 4
@USB_PROC_MAX = common dso_local global i32 0, align 4
@usb_process = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @usb_proc_level, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Giant, i32 0, i32 0), align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @usb_pci_root, align 4
  %7 = call i32 @device_run_interrupts(i32 %6)
  br label %8

8:                                                ; preds = %25, %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Giant, i32 0, i32 0), align 4
  br label %9

9:                                                ; preds = %14, %8
  %10 = load i32, i32* @usb_proc_level, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @usb_proc_level, align 4
  %12 = load i32, i32* @USB_PROC_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i64, i64* @usb_process, align 8
  %16 = load i32, i32* @usb_proc_level, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i32 @usb_do_process(i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load i32, i32* %1, align 4
  store i32 %23, i32* @usb_proc_level, align 4
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Giant, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %8, label %28

28:                                               ; preds = %25
  ret void
}

declare dso_local i32 @device_run_interrupts(i32) #1

declare dso_local i32 @usb_do_process(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
