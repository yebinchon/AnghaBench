; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_device_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_device_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.libusb20_device* }
%struct.libusb20_device = type { i32 }
%struct.libusb_device_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_device_descriptor(%struct.TYPE_3__* %0, %struct.libusb_device_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.libusb_device_descriptor*, align 8
  %6 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  %7 = alloca %struct.libusb20_device*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.libusb_device_descriptor* %1, %struct.libusb_device_descriptor** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %12 = icmp eq %struct.libusb_device_descriptor* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %14, i32* %3, align 4
  br label %91

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %17, align 8
  store %struct.libusb20_device* %18, %struct.libusb20_device** %7, align 8
  %19 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %20 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %19)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %20, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %21 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %22 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %25 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %24, i32 0, i32 13
  store i32 %23, i32* %25, align 4
  %26 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %27 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %32 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %37 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %40 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %42 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %47 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %50 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %52 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %55 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %57 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %60 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %62 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %65 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %67 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %70 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %72 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %75 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %77 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %80 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %82 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %85 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %6, align 8
  %87 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %5, align 8
  %90 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %15, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
