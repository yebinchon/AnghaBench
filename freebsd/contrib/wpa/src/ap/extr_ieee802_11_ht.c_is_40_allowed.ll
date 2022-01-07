; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_is_40_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_is_40_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"40 MHz affected channel range: [%d,%d] MHz\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Neighboring BSS: freq=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32)* @is_40_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_40_allowed(%struct.hostapd_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 5, %11
  %13 = add nsw i32 2407, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %24 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %29 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @hostapd_hw_get_freq(i32 %27, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 20
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 20
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = sdiv i32 %49, 2
  %51 = sub nsw i32 %50, 25
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %55, 25
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %46
  store i32 1, i32* %3, align 4
  br label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @MSG_ERROR, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @MSG_ERROR, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %64, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @hostapd_hw_get_freq(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
