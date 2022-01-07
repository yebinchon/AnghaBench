; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_device_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_device_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.wps_registrar_device* }
%struct.wps_registrar_device = type { i32, i32, %struct.wps_registrar_device* }
%struct.wps_device_data = type { i32 }

@WPS_UUID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_device_store(%struct.wps_registrar* %0, %struct.wps_device_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_registrar*, align 8
  %6 = alloca %struct.wps_device_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_registrar_device*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %5, align 8
  store %struct.wps_device_data* %1, %struct.wps_device_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %10 = load %struct.wps_device_data*, %struct.wps_device_data** %6, align 8
  %11 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wps_registrar_device* @wps_device_get(%struct.wps_registrar* %9, i32 %12)
  store %struct.wps_registrar_device* %13, %struct.wps_registrar_device** %8, align 8
  %14 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %15 = icmp eq %struct.wps_registrar_device* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = call %struct.wps_registrar_device* @os_zalloc(i32 16)
  store %struct.wps_registrar_device* %17, %struct.wps_registrar_device** %8, align 8
  %18 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %19 = icmp eq %struct.wps_registrar_device* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %41

21:                                               ; preds = %16
  %22 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %23 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %22, i32 0, i32 0
  %24 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %23, align 8
  %25 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %26 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %25, i32 0, i32 2
  store %struct.wps_registrar_device* %24, %struct.wps_registrar_device** %26, align 8
  %27 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %28 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %29 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %28, i32 0, i32 0
  store %struct.wps_registrar_device* %27, %struct.wps_registrar_device** %29, align 8
  br label %30

30:                                               ; preds = %21, %3
  %31 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %32 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %31, i32 0, i32 1
  %33 = load %struct.wps_device_data*, %struct.wps_device_data** %6, align 8
  %34 = call i32 @wps_device_clone_data(i32* %32, %struct.wps_device_data* %33)
  %35 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %36 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @WPS_UUID_LEN, align 4
  %40 = call i32 @os_memcpy(i32 %37, i32* %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.wps_registrar_device* @wps_device_get(%struct.wps_registrar*, i32) #1

declare dso_local %struct.wps_registrar_device* @os_zalloc(i32) #1

declare dso_local i32 @wps_device_clone_data(i32*, %struct.wps_device_data*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
