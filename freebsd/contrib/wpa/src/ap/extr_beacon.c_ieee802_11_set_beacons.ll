; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_beacon.c_ieee802_11_set_beacons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_beacon.c_ieee802_11_set_beacons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_11_set_beacons(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %11
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %23 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i64 @ieee802_11_set_beacon(%struct.TYPE_2__* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %21, %11
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %5

35:                                               ; preds = %5
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @ieee802_11_set_beacon(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
