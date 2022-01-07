; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_container_id_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_container_id_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_context = type { i32 }
%struct.libusb_bos_dev_capability_descriptor = type { i64, i64, i32*, i32 }
%struct.libusb_container_id_descriptor = type { i64, i32, i32, i32, i64 }

@LIBUSB_BT_CONTAINER_ID = common dso_local global i64 0, align 8
@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_BT_CONTAINER_ID_SIZE = common dso_local global i64 0, align 8
@LIBUSB_ERROR_IO = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_container_id_descriptor(%struct.libusb_context* %0, %struct.libusb_bos_dev_capability_descriptor* %1, %struct.libusb_container_id_descriptor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb_context*, align 8
  %6 = alloca %struct.libusb_bos_dev_capability_descriptor*, align 8
  %7 = alloca %struct.libusb_container_id_descriptor**, align 8
  %8 = alloca %struct.libusb_container_id_descriptor*, align 8
  store %struct.libusb_context* %0, %struct.libusb_context** %5, align 8
  store %struct.libusb_bos_dev_capability_descriptor* %1, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  store %struct.libusb_container_id_descriptor** %2, %struct.libusb_container_id_descriptor*** %7, align 8
  %9 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %10 = icmp eq %struct.libusb_bos_dev_capability_descriptor* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load %struct.libusb_container_id_descriptor**, %struct.libusb_container_id_descriptor*** %7, align 8
  %13 = icmp eq %struct.libusb_container_id_descriptor** %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %16 = getelementptr inbounds %struct.libusb_bos_dev_capability_descriptor, %struct.libusb_bos_dev_capability_descriptor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LIBUSB_BT_CONTAINER_ID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %11, %3
  %21 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %24 = getelementptr inbounds %struct.libusb_bos_dev_capability_descriptor, %struct.libusb_bos_dev_capability_descriptor* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LIBUSB_BT_CONTAINER_ID_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @LIBUSB_ERROR_IO, align 4
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %22
  %31 = call %struct.libusb_container_id_descriptor* @malloc(i32 32)
  store %struct.libusb_container_id_descriptor* %31, %struct.libusb_container_id_descriptor** %8, align 8
  %32 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %33 = icmp eq %struct.libusb_container_id_descriptor* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %30
  %37 = load i64, i64* @LIBUSB_BT_CONTAINER_ID_SIZE, align 8
  %38 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %39 = getelementptr inbounds %struct.libusb_container_id_descriptor, %struct.libusb_container_id_descriptor* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  %40 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %41 = getelementptr inbounds %struct.libusb_bos_dev_capability_descriptor, %struct.libusb_bos_dev_capability_descriptor* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %44 = getelementptr inbounds %struct.libusb_container_id_descriptor, %struct.libusb_container_id_descriptor* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %46 = getelementptr inbounds %struct.libusb_bos_dev_capability_descriptor, %struct.libusb_bos_dev_capability_descriptor* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %49 = getelementptr inbounds %struct.libusb_container_id_descriptor, %struct.libusb_container_id_descriptor* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %51 = getelementptr inbounds %struct.libusb_bos_dev_capability_descriptor, %struct.libusb_bos_dev_capability_descriptor* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.libusb_container_id_descriptor, %struct.libusb_container_id_descriptor* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %58 = getelementptr inbounds %struct.libusb_container_id_descriptor, %struct.libusb_container_id_descriptor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.libusb_bos_dev_capability_descriptor*, %struct.libusb_bos_dev_capability_descriptor** %6, align 8
  %61 = getelementptr inbounds %struct.libusb_bos_dev_capability_descriptor, %struct.libusb_bos_dev_capability_descriptor* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @memcpy(i32 %59, i32* %63, i32 4)
  %65 = load %struct.libusb_container_id_descriptor*, %struct.libusb_container_id_descriptor** %8, align 8
  %66 = load %struct.libusb_container_id_descriptor**, %struct.libusb_container_id_descriptor*** %7, align 8
  store %struct.libusb_container_id_descriptor* %65, %struct.libusb_container_id_descriptor** %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %36, %34, %28, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.libusb_container_id_descriptor* @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
