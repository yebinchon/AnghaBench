; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_ss_endpoint_companion_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_get_ss_endpoint_companion_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_context = type { i32 }
%struct.libusb_endpoint_descriptor = type { i32, i32 }
%struct.libusb_ss_endpoint_companion_descriptor = type { i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_ss_endpoint_companion_descriptor(%struct.libusb_context* %0, %struct.libusb_endpoint_descriptor* %1, %struct.libusb_ss_endpoint_companion_descriptor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb_context*, align 8
  %6 = alloca %struct.libusb_endpoint_descriptor*, align 8
  %7 = alloca %struct.libusb_ss_endpoint_companion_descriptor**, align 8
  store %struct.libusb_context* %0, %struct.libusb_context** %5, align 8
  store %struct.libusb_endpoint_descriptor* %1, %struct.libusb_endpoint_descriptor** %6, align 8
  store %struct.libusb_ss_endpoint_companion_descriptor** %2, %struct.libusb_ss_endpoint_companion_descriptor*** %7, align 8
  %8 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %6, align 8
  %9 = icmp eq %struct.libusb_endpoint_descriptor* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %11, i32* %4, align 4
  br label %21

12:                                               ; preds = %3
  %13 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %6, align 8
  %14 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.libusb_ss_endpoint_companion_descriptor**, %struct.libusb_ss_endpoint_companion_descriptor*** %7, align 8
  %20 = call i32 @libusb_parse_ss_endpoint_comp(i32 %15, i32 %18, %struct.libusb_ss_endpoint_companion_descriptor** %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %12, %10
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @libusb_parse_ss_endpoint_comp(i32, i32, %struct.libusb_ss_endpoint_companion_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
