; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_get_airtime_policy_update_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_get_airtime_policy_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Airtime policy: Invalid airtime policy update interval %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32*, i32*)* @get_airtime_policy_update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_airtime_policy_update_timeout(%struct.hostapd_iface* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = udiv i32 %21, 1000
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = urem i32 %24, 1000
  %26 = mul i32 %25, 1000
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
