; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_unlink_bsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_unlink_bsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i8* }
%struct.urb = type { i32 }

@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, %struct.urb*, i64)* @usb_unlink_bsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_unlink_bsd(%struct.usb_xfer* %0, %struct.urb* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %8 = icmp eq %struct.usb_xfer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %36

10:                                               ; preds = %3
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %12 = call i32 @usbd_transfer_pending(%struct.usb_xfer* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %36

15:                                               ; preds = %10
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = bitcast %struct.urb* %19 to i8*
  %21 = icmp eq i8* %18, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call i32 @mtx_unlock(i32* @Giant)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %28 = call i32 @usbd_transfer_drain(%struct.usb_xfer* %27)
  %29 = call i32 @mtx_lock(i32* @Giant)
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %32 = call i32 @usbd_transfer_stop(%struct.usb_xfer* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %35 = call i32 @usbd_transfer_start(%struct.usb_xfer* %34)
  br label %36

36:                                               ; preds = %9, %14, %33, %15
  ret void
}

declare dso_local i32 @usbd_transfer_pending(%struct.usb_xfer*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usbd_transfer_drain(%struct.usb_xfer*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_stop(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_start(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
