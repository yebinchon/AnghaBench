; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_new_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_new_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32 (i32, i32*, i32*, i32*, i64)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_cb_new_psk(%struct.wps_registrar* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_registrar*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %13 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %12, i32 0, i32 0
  %14 = load i32 (i32, i32*, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i32*, i64)** %13, align 8
  %15 = icmp eq i32 (i32, i32*, i32*, i32*, i64)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %29

17:                                               ; preds = %5
  %18 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %19 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i32*, i64)** %19, align 8
  %21 = load %struct.wps_registrar*, %struct.wps_registrar** %7, align 8
  %22 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 %20(i32 %23, i32* %24, i32* %25, i32* %26, i64 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %17, %16
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
