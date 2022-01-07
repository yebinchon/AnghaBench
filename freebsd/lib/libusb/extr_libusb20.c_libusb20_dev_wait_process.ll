; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_wait_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_wait_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32, i32 }
%struct.pollfd = type { i32, i64, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb20_dev_wait_process(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.pollfd], align 16
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %7 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %13 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %5, i64 0, i64 0
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 16
  %17 = load i32, i32* @POLLIN, align 4
  %18 = load i32, i32* @POLLOUT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @POLLRDNORM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POLLWRNORM, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %5, i64 0, i64 0
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 16
  %26 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %5, i64 0, i64 0
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %5, i64 0, i64 0
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @poll(%struct.pollfd* %28, i32 1, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %11
  br label %34

34:                                               ; preds = %33, %10
  ret void
}

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
