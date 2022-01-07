; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_check_chans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_check_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @hostapd_check_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_check_chans(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %4 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %5 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %12 = call i64 @hostapd_is_usable_chans(%struct.hostapd_iface* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 128, i32* %2, align 4
  br label %22

15:                                               ; preds = %10
  store i32 129, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %18 = call i32 @acs_init(%struct.hostapd_iface* %17)
  switch i32 %18, label %21 [
    i32 130, label %19
    i32 128, label %20
    i32 129, label %20
  ]

19:                                               ; preds = %16
  store i32 130, i32* %2, align 4
  br label %22

20:                                               ; preds = %16, %16
  br label %21

21:                                               ; preds = %16, %20
  store i32 129, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19, %15, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @hostapd_is_usable_chans(%struct.hostapd_iface*) #1

declare dso_local i32 @acs_init(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
