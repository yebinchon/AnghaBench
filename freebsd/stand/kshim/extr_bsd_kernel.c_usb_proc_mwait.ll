; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_proc_mwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_usb_proc_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i32 }
%struct.usb_proc_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@pm_qentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_proc_mwait(%struct.usb_process* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.usb_process*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_proc_msg*, align 8
  %8 = alloca %struct.usb_proc_msg*, align 8
  store %struct.usb_process* %0, %struct.usb_process** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.usb_proc_msg*
  store %struct.usb_proc_msg* %10, %struct.usb_proc_msg** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.usb_proc_msg*
  store %struct.usb_proc_msg* %12, %struct.usb_proc_msg** %8, align 8
  %13 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %14 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %20 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %19, i32 0, i32 0
  %21 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %22 = load i32, i32* @pm_qentry, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* %20, %struct.usb_proc_msg* %21, i32 %22)
  %24 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %25 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %18, %3
  %28 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %29 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %35 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %34, i32 0, i32 0
  %36 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %37 = load i32, i32* @pm_qentry, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* %35, %struct.usb_proc_msg* %36, i32 %37)
  %39 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %40 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.usb_proc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
