; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_get_port_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_get_port_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32, i32, i32, i32 }

@LIBUSB20_ERROR_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_dev_get_port_path(%struct.libusb20_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb20_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %9 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @LIBUSB20_ERROR_OVERFLOW, align 4
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %12
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %19 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %24 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  store i32 2, i32* %4, align 4
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %30 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @LIBUSB20_ERROR_OVERFLOW, align 4
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %28
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %39 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %42 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32* %37, i32 %40, i32 %43)
  %45 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %46 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %36, %34, %17, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
