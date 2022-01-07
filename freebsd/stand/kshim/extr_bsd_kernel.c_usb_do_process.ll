; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_do_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_do_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i32 }
%struct.usb_proc_msg = type { %struct.TYPE_2__, i32 (%struct.usb_proc_msg*)* }
%struct.TYPE_2__ = type { i32* }

@usb_proc_mtx = common dso_local global i32 0, align 4
@pm_qentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_process*)* @usb_do_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_do_process(%struct.usb_process* %0) #0 {
  %2 = alloca %struct.usb_process*, align 8
  %3 = alloca %struct.usb_proc_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_process* %0, %struct.usb_process** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mtx_lock(i32* @usb_proc_mtx)
  br label %6

6:                                                ; preds = %32, %1
  %7 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %8 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %7, i32 0, i32 0
  %9 = call %struct.usb_proc_msg* @TAILQ_FIRST(i32* %8)
  store %struct.usb_proc_msg* %9, %struct.usb_proc_msg** %3, align 8
  %10 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %3, align 8
  %11 = icmp ne %struct.usb_proc_msg* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  store i32 1, i32* %4, align 4
  %13 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %3, align 8
  %14 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %13, i32 0, i32 1
  %15 = load i32 (%struct.usb_proc_msg*)*, i32 (%struct.usb_proc_msg*)** %14, align 8
  %16 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %3, align 8
  %17 = call i32 %15(%struct.usb_proc_msg* %16)
  %18 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %3, align 8
  %19 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %20 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %19, i32 0, i32 0
  %21 = call %struct.usb_proc_msg* @TAILQ_FIRST(i32* %20)
  %22 = icmp eq %struct.usb_proc_msg* %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %12
  %24 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %25 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %24, i32 0, i32 0
  %26 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %3, align 8
  %27 = load i32, i32* @pm_qentry, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.usb_proc_msg* %26, i32 %27)
  %29 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %3, align 8
  %30 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %12
  br label %6

33:                                               ; preds = %6
  %34 = call i32 @mtx_unlock(i32* @usb_proc_mtx)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.usb_proc_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.usb_proc_msg*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
