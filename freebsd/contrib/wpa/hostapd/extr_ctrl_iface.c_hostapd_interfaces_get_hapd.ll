; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_interfaces_get_hapd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_interfaces_get_hapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hapd_interfaces = type { i64, %struct.hostapd_iface** }
%struct.hostapd_iface = type { i64, %struct.hostapd_data** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_data* (%struct.hapd_interfaces*, i8*)* @hostapd_interfaces_get_hapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_data* @hostapd_interfaces_get_hapd(%struct.hapd_interfaces* %0, i8* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostapd_iface*, align 8
  %9 = alloca %struct.hostapd_data*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %13 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %18 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %17, i32 0, i32 1
  %19 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %19, i64 %20
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %21, align 8
  store %struct.hostapd_iface* %22, %struct.hostapd_iface** %8, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %47, %16
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %31 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %30, i32 0, i32 1
  %32 = load %struct.hostapd_data**, %struct.hostapd_data*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %32, i64 %33
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %34, align 8
  store %struct.hostapd_data* %35, %struct.hostapd_data** %9, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @os_strcmp(i8* %36, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  store %struct.hostapd_data* %45, %struct.hostapd_data** %3, align 8
  br label %55

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %23

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %10

54:                                               ; preds = %10
  store %struct.hostapd_data* null, %struct.hostapd_data** %3, align 8
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  ret %struct.hostapd_data* %56
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
