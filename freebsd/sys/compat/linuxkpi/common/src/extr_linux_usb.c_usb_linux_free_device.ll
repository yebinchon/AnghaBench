; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_free_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_endpoint*, %struct.usb_host_endpoint, %struct.usb_host_endpoint* }
%struct.usb_host_endpoint = type { i32 }

@M_USBDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_linux_free_device(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_host_endpoint*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  store %struct.usb_host_endpoint* %8, %struct.usb_host_endpoint** %3, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 2
  %11 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  store %struct.usb_host_endpoint* %11, %struct.usb_host_endpoint** %4, align 8
  br label %12

12:                                               ; preds = %16, %1
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %15 = icmp ne %struct.usb_host_endpoint* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %19 = call i32 @usb_setup_endpoint(%struct.usb_device* %17, %struct.usb_host_endpoint* %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %20, i32 1
  store %struct.usb_host_endpoint* %21, %struct.usb_host_endpoint** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 1
  %26 = call i32 @usb_setup_endpoint(%struct.usb_device* %23, %struct.usb_host_endpoint* %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %28, align 8
  %30 = load i32, i32* @M_USBDEV, align 4
  %31 = call i32 @free(%struct.usb_host_endpoint* %29, i32 %30)
  ret void
}

declare dso_local i32 @usb_setup_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*, i32) #1

declare dso_local i32 @free(%struct.usb_host_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
