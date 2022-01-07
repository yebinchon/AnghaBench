; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_process_init_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_process_init_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"usbdrain\00", align 1
@usb_proc_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_process*)* @usb_process_init_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_process_init_sub(%struct.usb_process* %0) #0 {
  %2 = alloca %struct.usb_process*, align 8
  store %struct.usb_process* %0, %struct.usb_process** %2, align 8
  %3 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %4 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %3, i32 0, i32 3
  %5 = call i32 @TAILQ_INIT(i32* %4)
  %6 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %7 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %6, i32 0, i32 2
  %8 = call i32 @cv_init(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %10 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %9, i32 0, i32 1
  %11 = call i32 @cv_init(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %13 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %12, i32 0, i32 0
  store i32* @usb_proc_mtx, i32** %13, align 8
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
