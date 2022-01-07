; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_drv_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_drv_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_drv_set_key(i8* %0, %struct.hostapd_data* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6, i64 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.hostapd_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store %struct.hostapd_data* %1, %struct.hostapd_data** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %10
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i8*, i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)*, i32 (i8*, i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)** %30, align 8
  %32 = icmp eq i32 (i8*, i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %10
  store i32 0, i32* %11, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i8*, i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)*, i32 (i8*, i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)** %38, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32*, i32** %18, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = load i64, i64* %21, align 8
  %52 = call i32 %39(i8* %40, i32 %43, i32 %44, i32* %45, i32 %46, i32 %47, i32* %48, i64 %49, i32* %50, i64 %51)
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %34, %33
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
