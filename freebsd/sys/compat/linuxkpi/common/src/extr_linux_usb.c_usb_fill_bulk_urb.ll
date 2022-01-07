; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_fill_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_fill_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i8*, i32, i8*, %struct.usb_host_endpoint*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_fill_bulk_urb(%struct.urb* %0, %struct.usb_device* %1, %struct.usb_host_endpoint* %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %16 = load %struct.urb*, %struct.urb** %8, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 5
  store %struct.usb_device* %15, %struct.usb_device** %17, align 8
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %19 = load %struct.urb*, %struct.urb** %8, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 4
  store %struct.usb_host_endpoint* %18, %struct.usb_host_endpoint** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.urb*, %struct.urb** %8, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.urb*, %struct.urb** %8, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.urb*, %struct.urb** %8, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.urb*, %struct.urb** %8, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
