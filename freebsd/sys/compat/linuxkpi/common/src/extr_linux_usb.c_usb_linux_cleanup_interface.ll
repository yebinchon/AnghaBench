; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_cleanup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_cleanup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__, %struct.usb_host_endpoint* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_host_endpoint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_interface*)* @usb_linux_cleanup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_linux_cleanup_interface(%struct.usb_device* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  store %struct.usb_host_interface* %12, %struct.usb_host_interface** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i64 %19
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %6, align 8
  br label %21

21:                                               ; preds = %48, %2
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %24 = icmp ne %struct.usb_host_interface* %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 1
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %27, align 8
  store %struct.usb_host_endpoint* %28, %struct.usb_host_endpoint** %7, align 8
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 1
  %31 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %30, align 8
  %32 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %33 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %31, i64 %36
  store %struct.usb_host_endpoint* %37, %struct.usb_host_endpoint** %8, align 8
  br label %38

38:                                               ; preds = %42, %25
  %39 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %40 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %41 = icmp ne %struct.usb_host_endpoint* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %45 = call i32 @usb_setup_endpoint(%struct.usb_device* %43, %struct.usb_host_endpoint* %44, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %47 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %46, i32 1
  store %struct.usb_host_endpoint* %47, %struct.usb_host_endpoint** %7, align 8
  br label %38

48:                                               ; preds = %38
  %49 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %50 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %49, i32 1
  store %struct.usb_host_interface* %50, %struct.usb_host_interface** %5, align 8
  br label %21

51:                                               ; preds = %21
  ret void
}

declare dso_local i32 @usb_setup_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
