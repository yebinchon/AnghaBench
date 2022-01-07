; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_config_descriptor_by_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_config_descriptor_by_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.libusb20_device* }
%struct.libusb20_device = type { i32 }
%struct.libusb_config_descriptor = type { i64 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_config_descriptor_by_value(%struct.TYPE_4__* %0, i64 %1, %struct.libusb_config_descriptor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.libusb_config_descriptor**, align 8
  %8 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  %9 = alloca %struct.libusb20_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.libusb_config_descriptor** %2, %struct.libusb_config_descriptor*** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  %16 = icmp eq %struct.libusb_config_descriptor** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.libusb20_device*, %struct.libusb20_device** %21, align 8
  store %struct.libusb20_device* %22, %struct.libusb20_device** %9, align 8
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %9, align 8
  %24 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %23)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %24, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %52, %19
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %28 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  %35 = call i32 @libusb_get_config_descriptor(%struct.TYPE_4__* %32, i32 %33, %struct.libusb_config_descriptor** %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %31
  %41 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  %42 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %41, align 8
  %43 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %58

48:                                               ; preds = %40
  %49 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  %50 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %49, align 8
  %51 = call i32 @libusb_free_config_descriptor(%struct.libusb_config_descriptor* %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load %struct.libusb_config_descriptor**, %struct.libusb_config_descriptor*** %7, align 8
  store %struct.libusb_config_descriptor* null, %struct.libusb_config_descriptor** %56, align 8
  %57 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %47, %38, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

declare dso_local i32 @libusb_get_config_descriptor(%struct.TYPE_4__*, i32, %struct.libusb_config_descriptor**) #1

declare dso_local i32 @libusb_free_config_descriptor(%struct.libusb_config_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
