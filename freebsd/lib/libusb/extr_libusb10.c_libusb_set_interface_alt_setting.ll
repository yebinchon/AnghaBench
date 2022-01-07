; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_set_interface_alt_setting.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_set_interface_alt_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_set_interface_alt_setting(%struct.libusb20_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb20_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %11 = call %struct.TYPE_4__* @libusb_get_device(%struct.libusb20_device* %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %15, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 31
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CTX_LOCK(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CTX_UNLOCK(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = call i32 @libusb10_cancel_all_transfer(%struct.TYPE_4__* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @libusb10_remove_pollfd(i32 %52, i32* %54)
  %56 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @libusb20_dev_set_alt_index(%struct.libusb20_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %66 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %67 = call i32 @libusb20_dev_get_fd(%struct.libusb20_device* %66)
  %68 = load i32, i32* @POLLIN, align 4
  %69 = load i32, i32* @POLLOUT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @POLLRDNORM, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @POLLWRNORM, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @libusb10_add_pollfd(i32 %62, i32* %64, %struct.libusb20_device* %65, i32 %67, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %47
  %79 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  br label %81

80:                                               ; preds = %47
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %45, %22, %14
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_4__* @libusb_get_device(%struct.libusb20_device*) #1

declare dso_local i32 @CTX_LOCK(i32) #1

declare dso_local i32 @CTX_UNLOCK(i32) #1

declare dso_local i32 @libusb10_cancel_all_transfer(%struct.TYPE_4__*) #1

declare dso_local i32 @libusb10_remove_pollfd(i32, i32*) #1

declare dso_local i32 @libusb20_dev_set_alt_index(%struct.libusb20_device*, i32, i32) #1

declare dso_local i32 @libusb10_add_pollfd(i32, i32*, %struct.libusb20_device*, i32, i32) #1

declare dso_local i32 @libusb20_dev_get_fd(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
