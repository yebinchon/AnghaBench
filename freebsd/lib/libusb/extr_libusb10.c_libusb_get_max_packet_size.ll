; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_max_packet_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_max_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_config_descriptor = type { i32, %struct.libusb_interface* }
%struct.libusb_interface = type { i32, %struct.libusb_interface_descriptor* }
%struct.libusb_interface_descriptor = type { i32, %struct.libusb_endpoint_descriptor* }
%struct.libusb_endpoint_descriptor = type { i64, i32 }

@LIBUSB_ERROR_NO_DEVICE = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_max_packet_size(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.libusb_config_descriptor*, align 8
  %7 = alloca %struct.libusb_interface*, align 8
  %8 = alloca %struct.libusb_interface_descriptor*, align 8
  %9 = alloca %struct.libusb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @LIBUSB_ERROR_NO_DEVICE, align 4
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @libusb_get_active_config_descriptor(i32* %19, %struct.libusb_config_descriptor** %6)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %3, align 4
  br label %92

25:                                               ; preds = %18
  %26 = load i32, i32* @LIBUSB_ERROR_NOT_FOUND, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %84, %25
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %6, align 8
  %30 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %6, align 8
  %35 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %34, i32 0, i32 1
  %36 = load %struct.libusb_interface*, %struct.libusb_interface** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.libusb_interface, %struct.libusb_interface* %36, i64 %38
  store %struct.libusb_interface* %39, %struct.libusb_interface** %7, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %80, %33
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.libusb_interface*, %struct.libusb_interface** %7, align 8
  %43 = getelementptr inbounds %struct.libusb_interface, %struct.libusb_interface* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load %struct.libusb_interface*, %struct.libusb_interface** %7, align 8
  %48 = getelementptr inbounds %struct.libusb_interface, %struct.libusb_interface* %47, i32 0, i32 1
  %49 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %49, i64 %51
  store %struct.libusb_interface_descriptor* %52, %struct.libusb_interface_descriptor** %8, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %76, %46
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %8, align 8
  %61 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %60, i32 0, i32 1
  %62 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %62, i64 %64
  store %struct.libusb_endpoint_descriptor* %65, %struct.libusb_endpoint_descriptor** %9, align 8
  %66 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %9, align 8
  %67 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %9, align 8
  %73 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %13, align 4
  br label %88

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %53

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %40

83:                                               ; preds = %40
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %27

87:                                               ; preds = %27
  br label %88

88:                                               ; preds = %87, %71
  %89 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %6, align 8
  %90 = call i32 @libusb_free_config_descriptor(%struct.libusb_config_descriptor* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %23, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @libusb_get_active_config_descriptor(i32*, %struct.libusb_config_descriptor**) #1

declare dso_local i32 @libusb_free_config_descriptor(%struct.libusb_config_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
