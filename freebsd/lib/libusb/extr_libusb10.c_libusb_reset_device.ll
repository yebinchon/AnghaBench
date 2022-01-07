; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_reset_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_reset_device(%struct.libusb20_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  %6 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %7 = call %struct.TYPE_4__* @libusb_get_device(%struct.libusb20_device* %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = call i32 @libusb10_cancel_all_transfer(%struct.TYPE_4__* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @libusb10_remove_pollfd(i32 %17, i32* %19)
  %21 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %22 = call i32 @libusb20_dev_reset(%struct.libusb20_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %29 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %30 = call i32 @libusb20_dev_get_fd(%struct.libusb20_device* %29)
  %31 = load i32, i32* @POLLIN, align 4
  %32 = load i32, i32* @POLLOUT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @POLLRDNORM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @POLLWRNORM, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @libusb10_add_pollfd(i32 %25, i32* %27, %struct.libusb20_device* %28, i32 %30, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %12
  %42 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  br label %44

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_4__* @libusb_get_device(%struct.libusb20_device*) #1

declare dso_local i32 @libusb10_cancel_all_transfer(%struct.TYPE_4__*) #1

declare dso_local i32 @libusb10_remove_pollfd(i32, i32*) #1

declare dso_local i32 @libusb20_dev_reset(%struct.libusb20_device*) #1

declare dso_local i32 @libusb10_add_pollfd(i32, i32*, %struct.libusb20_device*, i32, i32) #1

declare dso_local i32 @libusb20_dev_get_fd(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
