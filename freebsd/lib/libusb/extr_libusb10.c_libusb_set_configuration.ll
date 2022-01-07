; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_set_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.libusb_device = type { i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_set_configuration(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_config*, align 8
  %7 = alloca %struct.libusb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %12 = call %struct.libusb_device* @libusb_get_device(%struct.libusb20_device* %11)
  store %struct.libusb_device* %12, %struct.libusb_device** %7, align 8
  %13 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %14 = icmp eq %struct.libusb_device* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 255, i32* %9, align 4
  br label %52

21:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 255
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device* %26, i32 %27)
  store %struct.libusb20_config* %28, %struct.libusb20_config** %6, align 8
  %29 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  %30 = icmp eq %struct.libusb20_config* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %25
  %34 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  %35 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  %42 = call i32 @free(%struct.libusb20_config* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %53

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %51, i32* %3, align 4
  br label %88

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52, %45
  %54 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %55 = call i32 @libusb10_cancel_all_transfer(%struct.libusb_device* %54)
  %56 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %57 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %60 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %59, i32 0, i32 0
  %61 = call i32 @libusb10_remove_pollfd(i32 %58, i32* %60)
  %62 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @libusb20_dev_set_config_index(%struct.libusb20_device* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %66 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %69 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %68, i32 0, i32 0
  %70 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %71 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %72 = call i32 @libusb20_dev_get_fd(%struct.libusb20_device* %71)
  %73 = load i32, i32* @POLLIN, align 4
  %74 = load i32, i32* @POLLOUT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @POLLRDNORM, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @POLLWRNORM, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @libusb10_add_pollfd(i32 %67, i32* %69, %struct.libusb20_device* %70, i32 %72, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %53
  %84 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  br label %86

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %50, %31, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.libusb_device* @libusb_get_device(%struct.libusb20_device*) #1

declare dso_local %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device*, i32) #1

declare dso_local i32 @free(%struct.libusb20_config*) #1

declare dso_local i32 @libusb10_cancel_all_transfer(%struct.libusb_device*) #1

declare dso_local i32 @libusb10_remove_pollfd(i32, i32*) #1

declare dso_local i32 @libusb20_dev_set_config_index(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb10_add_pollfd(i32, i32*, %struct.libusb20_device*, i32, i32) #1

declare dso_local i32 @libusb20_dev_get_fd(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
