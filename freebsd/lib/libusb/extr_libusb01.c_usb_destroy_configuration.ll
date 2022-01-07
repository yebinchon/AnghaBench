; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_destroy_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_destroy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_config_descriptor*, %struct.TYPE_2__ }
%struct.usb_config_descriptor = type { %struct.usb_config_descriptor* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_destroy_configuration(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 0
  %7 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %8 = icmp eq %struct.usb_config_descriptor* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %21, i64 %22
  store %struct.usb_config_descriptor* %23, %struct.usb_config_descriptor** %4, align 8
  %24 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %25 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %24, i32 0, i32 0
  %26 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %25, align 8
  %27 = icmp ne %struct.usb_config_descriptor* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %30 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %29, i32 0, i32 0
  %31 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %30, align 8
  %32 = call i32 @free(%struct.usb_config_descriptor* %31)
  %33 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %34 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %33, i32 0, i32 0
  store %struct.usb_config_descriptor* null, %struct.usb_config_descriptor** %34, align 8
  br label %35

35:                                               ; preds = %28, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 0
  %42 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %41, align 8
  %43 = call i32 @free(%struct.usb_config_descriptor* %42)
  %44 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  store %struct.usb_config_descriptor* null, %struct.usb_config_descriptor** %45, align 8
  br label %46

46:                                               ; preds = %39, %9
  ret void
}

declare dso_local i32 @free(%struct.usb_config_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
