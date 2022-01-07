; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_sta_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_sta_add_params = type { i64, i32*, i32, i32, i32 }
%struct.hostap_driver_data = type { i32 }
%struct.prism2_hostapd_param = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PRISM2_HOSTAPD_ADD_STA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_RATE_11M = common dso_local global i32 0, align 4
@WLAN_RATE_1M = common dso_local global i32 0, align 4
@WLAN_RATE_2M = common dso_local global i32 0, align 4
@WLAN_RATE_5M5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hostapd_sta_add_params*)* @hostap_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_sta_add(i8* %0, %struct.hostapd_sta_add_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_sta_add_params*, align 8
  %5 = alloca %struct.hostap_driver_data*, align 8
  %6 = alloca %struct.prism2_hostapd_param, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hostapd_sta_add_params* %1, %struct.hostapd_sta_add_params** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %10, %struct.hostap_driver_data** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %70, %2
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %11
  %18 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 127
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 0)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %32 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 127
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 1)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 127
  %51 = icmp eq i32 %50, 11
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 2)
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %58 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 127
  %64 = icmp eq i32 %63, 22
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 3)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %56
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %11

73:                                               ; preds = %11
  %74 = call i32 @memset(%struct.prism2_hostapd_param* %6, i32 0, i32 20)
  %75 = load i32, i32* @PRISM2_HOSTAPD_ADD_STA, align 4
  %76 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %6, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %80 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32 %78, i32 %81, i32 %82)
  %84 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %85 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %6, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load %struct.hostapd_sta_add_params*, %struct.hostapd_sta_add_params** %4, align 8
  %91 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %6, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %6, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %5, align 8
  %101 = call i32 @hostapd_ioctl(%struct.hostap_driver_data* %100, %struct.prism2_hostapd_param* %6, i32 20)
  ret i32 %101
}

declare dso_local i32 @BIT(...) #1

declare dso_local i32 @memset(%struct.prism2_hostapd_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hostapd_ioctl(%struct.hostap_driver_data*, %struct.prism2_hostapd_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
