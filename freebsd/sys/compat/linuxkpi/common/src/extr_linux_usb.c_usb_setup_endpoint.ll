; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_setup_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_setup_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.usb_config = type { i32, %struct.TYPE_4__, i32*, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@UE_XFERTYPE = common dso_local global i64 0, align 8
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@UE_ADDR = common dso_local global i64 0, align 8
@UE_DIR_OUT = common dso_local global i64 0, align 8
@UE_DIR_IN = common dso_local global i64 0, align 8
@usb_linux_isoc_callback = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@usb_linux_non_isoc_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_setup_endpoint(%struct.usb_device* %0, %struct.usb_host_endpoint* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.usb_config], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %12 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UE_XFERTYPE, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %22 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %141

27:                                               ; preds = %3
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %29 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usbd_transfer_unsetup(i32 %30, i32 2)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %141

38:                                               ; preds = %27
  %39 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %40 = call i32 @memset(%struct.usb_config* %39, i32 0, i32 112)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %47 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %46, i32 0, i32 5
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @UE_ADDR, align 8
  %50 = and i64 %48, %49
  %51 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %52 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 16
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @UE_DIR_OUT, align 8
  %55 = load i64, i64* @UE_DIR_IN, align 8
  %56 = or i64 %54, %55
  %57 = and i64 %53, %56
  %58 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %59 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %61 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %60, i32 0, i32 2
  store i32* @usb_linux_isoc_callback, i32** %61, align 16
  %62 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %63 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %62, i32 0, i32 0
  store i32 0, i32* %63, align 16
  %64 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %65 = call i32 @usb_max_isoc_frames(%struct.usb_device* %64)
  %66 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %67 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 16
  %68 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %69 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %72 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %75 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %76 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %75, i64 1
  %77 = call i32 @bcopy(%struct.usb_config* %74, %struct.usb_config* %76, i32 56)
  %78 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %79 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %80 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %79, i32 0, i32 2
  %81 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %82 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %85 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %86 = call i64 @usbd_transfer_setup(%struct.usb_device* %78, i32* %80, i32 %83, %struct.usb_config* %84, i32 2, %struct.usb_host_endpoint* %85, i32* @Giant)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %44
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %141

91:                                               ; preds = %44
  br label %140

92:                                               ; preds = %38
  %93 = load i32, i32* %7, align 4
  %94 = icmp sgt i32 %93, 4194304
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 4194304, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %99 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @UE_ADDR, align 8
  %102 = and i64 %100, %101
  %103 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %104 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 16
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @UE_DIR_OUT, align 8
  %107 = load i64, i64* @UE_DIR_IN, align 8
  %108 = or i64 %106, %107
  %109 = and i64 %105, %108
  %110 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %111 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %113 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %112, i32 0, i32 2
  store i32* @usb_linux_non_isoc_callback, i32** %113, align 16
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %116 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 16
  %117 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %118 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %121 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %124 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 4
  %126 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %127 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %128 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %127, i32 0, i32 2
  %129 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %130 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [2 x %struct.usb_config], [2 x %struct.usb_config]* %8, i64 0, i64 0
  %133 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %134 = call i64 @usbd_transfer_setup(%struct.usb_device* %126, i32* %128, i32 %131, %struct.usb_config* %132, i32 1, %struct.usb_host_endpoint* %133, i32* @Giant)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %96
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %96
  br label %140

140:                                              ; preds = %139, %91
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %136, %88, %37, %26
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @memset(%struct.usb_config*, i32, i32) #1

declare dso_local i32 @usb_max_isoc_frames(%struct.usb_device*) #1

declare dso_local i32 @bcopy(%struct.usb_config*, %struct.usb_config*, i32) #1

declare dso_local i64 @usbd_transfer_setup(%struct.usb_device*, i32*, i32, %struct.usb_config*, i32, %struct.usb_host_endpoint*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
