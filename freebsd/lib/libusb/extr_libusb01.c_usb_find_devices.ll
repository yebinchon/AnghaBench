; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_find_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_find_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.libusb20_device = type { %struct.usb_device* }
%struct.usb_device = type { %struct.libusb20_device*, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@usb_backend = common dso_local global i32* null, align 8
@usb_global_bus = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"/dev/ugen%u.%u\00", align 1
@USB_MAXCONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_find_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  br label %7

7:                                                ; preds = %28, %0
  %8 = load i32*, i32** @usb_backend, align 8
  %9 = call %struct.libusb20_device* @libusb20_be_device_foreach(i32* %8, %struct.libusb20_device* null)
  store %struct.libusb20_device* %9, %struct.libusb20_device** %2, align 8
  %10 = icmp ne %struct.libusb20_device* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %13 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %12, i32 0, i32 0
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %3, align 8
  %15 = load i32*, i32** @usb_backend, align 8
  %16 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %17 = call i32 @libusb20_be_dequeue_device(i32* %15, %struct.libusb20_device* %16)
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %19 = call i32 @libusb20_dev_free(%struct.libusb20_device* %18)
  %20 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %21 = icmp ne %struct.usb_device* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @usb_global_bus, i32 0, i32 0), align 4
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = call i32 @LIST_DEL(i32 %23, %struct.usb_device* %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = call i32 @free(%struct.usb_device* %26)
  br label %28

28:                                               ; preds = %22, %11
  br label %7

29:                                               ; preds = %7
  %30 = load i32*, i32** @usb_backend, align 8
  %31 = call i32 @libusb20_be_free(i32* %30)
  %32 = call i32* (...) @libusb20_be_alloc_default()
  store i32* %32, i32** @usb_backend, align 8
  %33 = load i32*, i32** @usb_backend, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %1, align 4
  br label %182

36:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  store %struct.libusb20_device* null, %struct.libusb20_device** %2, align 8
  br label %37

37:                                               ; preds = %175, %36
  %38 = load i32*, i32** @usb_backend, align 8
  %39 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %40 = call %struct.libusb20_device* @libusb20_be_device_foreach(i32* %38, %struct.libusb20_device* %39)
  store %struct.libusb20_device* %40, %struct.libusb20_device** %2, align 8
  %41 = icmp ne %struct.libusb20_device* %40, null
  br i1 %41, label %42, label %179

42:                                               ; preds = %37
  %43 = call %struct.usb_device* @malloc(i32 96)
  store %struct.usb_device* %43, %struct.usb_device** %3, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %45 = icmp eq %struct.usb_device* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %179

47:                                               ; preds = %42
  %48 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %49 = call i32 @memset(%struct.usb_device* %48, i32 0, i32 96)
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 4
  store %struct.TYPE_4__* @usb_global_bus, %struct.TYPE_4__** %51, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %56 = call i32 @libusb20_dev_get_bus_number(%struct.libusb20_device* %55)
  %57 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %58 = call i32 @libusb20_dev_get_address(%struct.libusb20_device* %57)
  %59 = call i32 @snprintf(i32 %54, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %58)
  %60 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %61 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %60)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %61, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 64, i32* %64, align 8
  %65 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %66 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 13
  store i32 %67, i32* %70, align 4
  %71 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %72 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %75 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 12
  store i32 %73, i32* %76, align 8
  %77 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %78 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 11
  store i32 %79, i32* %82, align 4
  %83 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %84 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 10
  store i32 %85, i32* %88, align 8
  %89 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %90 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 9
  store i32 %91, i32* %94, align 4
  %95 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %96 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 8
  store i32 %97, i32* %100, align 8
  %101 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %102 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 7
  store i32 %103, i32* %106, align 4
  %107 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %108 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 6
  store i32 %109, i32* %112, align 8
  %113 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %114 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  store i32 %115, i32* %118, align 4
  %119 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %120 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %123 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 8
  %125 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %126 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %129 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  %131 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %132 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  %137 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %4, align 8
  %138 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  %143 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %144 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @USB_MAXCONFIG, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %47
  %150 = load i64, i64* @USB_MAXCONFIG, align 8
  %151 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %152 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i64 %150, i64* %153, align 8
  br label %154

154:                                              ; preds = %149, %47
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  %157 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %158 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  %159 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %160 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %161 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %160, i32 0, i32 0
  store %struct.libusb20_device* %159, %struct.libusb20_device** %161, align 8
  %162 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %163 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %164 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %163, i32 0, i32 0
  store %struct.usb_device* %162, %struct.usb_device** %164, align 8
  %165 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %166 = call i32 @libusb20_dev_open(%struct.libusb20_device* %165, i32 0)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %154
  %170 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %171 = bitcast %struct.libusb20_device* %170 to i8*
  %172 = call i32 @usb_fetch_and_parse_descriptors(i8* %171)
  %173 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %174 = call i32 @libusb20_dev_close(%struct.libusb20_device* %173)
  br label %175

175:                                              ; preds = %169, %154
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @usb_global_bus, i32 0, i32 0), align 4
  %177 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %178 = call i32 @LIST_ADD(i32 %176, %struct.usb_device* %177)
  br label %37

179:                                              ; preds = %46, %37
  %180 = load i32, i32* %5, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %182

182:                                              ; preds = %179, %35
  %183 = load i32, i32* %1, align 4
  ret i32 %183
}

declare dso_local %struct.libusb20_device* @libusb20_be_device_foreach(i32*, %struct.libusb20_device*) #1

declare dso_local i32 @libusb20_be_dequeue_device(i32*, %struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @LIST_DEL(i32, %struct.usb_device*) #1

declare dso_local i32 @free(%struct.usb_device*) #1

declare dso_local i32 @libusb20_be_free(i32*) #1

declare dso_local i32* @libusb20_be_alloc_default(...) #1

declare dso_local %struct.usb_device* @malloc(i32) #1

declare dso_local i32 @memset(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @libusb20_dev_get_bus_number(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_get_address(%struct.libusb20_device*) #1

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @usb_fetch_and_parse_descriptors(i8*) #1

declare dso_local i32 @libusb20_dev_close(%struct.libusb20_device*) #1

declare dso_local i32 @LIST_ADD(i32, %struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
