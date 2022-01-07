; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_alloc_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_alloc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_config = type { i32 }
%struct.libusb20_device = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.libusb20_device*, i32**, i32*, i32)* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca %struct.libusb20_config*, align 8
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.libusb20_config* null, %struct.libusb20_config** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %13 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.libusb20_config* null, %struct.libusb20_config** %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %20 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %25 = call i32 @libusb20_dev_open(%struct.libusb20_device* %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.libusb20_config* null, %struct.libusb20_config** %3, align 8
  br label %56

29:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %33 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.libusb20_device*, i32**, i32*, i32)*, i32 (%struct.libusb20_device*, i32**, i32*, i32)** %35, align 8
  %37 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 %36(%struct.libusb20_device* %37, i32** %7, i32* %8, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %48

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = call %struct.libusb20_config* @libusb20_parse_config_desc(i32* %44)
  store %struct.libusb20_config* %45, %struct.libusb20_config** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @free(i32* %46)
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %53 = call i32 @libusb20_dev_close(%struct.libusb20_device* %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  store %struct.libusb20_config* %55, %struct.libusb20_config** %3, align 8
  br label %56

56:                                               ; preds = %54, %28, %17
  %57 = load %struct.libusb20_config*, %struct.libusb20_config** %3, align 8
  ret %struct.libusb20_config* %57
}

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local %struct.libusb20_config* @libusb20_parse_config_desc(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @libusb20_dev_close(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
