; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_pin_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_pin_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32 (i32, i32*, %struct.wps_device_data*)* }
%struct.wps_device_data = type opaque
%struct.wps_device_data.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar*, i32*, %struct.wps_device_data.0*)* @wps_cb_pin_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_cb_pin_needed(%struct.wps_registrar* %0, i32* %1, %struct.wps_device_data.0* %2) #0 {
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wps_device_data.0*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.wps_device_data.0* %2, %struct.wps_device_data.0** %6, align 8
  %7 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %8 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %7, i32 0, i32 1
  %9 = load i32 (i32, i32*, %struct.wps_device_data*)*, i32 (i32, i32*, %struct.wps_device_data*)** %8, align 8
  %10 = icmp eq i32 (i32, i32*, %struct.wps_device_data*)* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %23

12:                                               ; preds = %3
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 1
  %15 = load i32 (i32, i32*, %struct.wps_device_data*)*, i32 (i32, i32*, %struct.wps_device_data*)** %14, align 8
  %16 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %17 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.wps_device_data.0*, %struct.wps_device_data.0** %6, align 8
  %21 = bitcast %struct.wps_device_data.0* %20 to %struct.wps_device_data*
  %22 = call i32 %15(i32 %18, i32* %19, %struct.wps_device_data* %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
