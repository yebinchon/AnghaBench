; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_list_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_list_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, i64, %struct.ap_info*, %struct.TYPE_2__* }
%struct.ap_info = type { %struct.ap_info*, i32, i32, %struct.ap_info* }
%struct.TYPE_2__ = type { i32 }
%struct.os_reltime = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"OLBC not detected anymore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_list_timer(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca %struct.os_reltime, align 4
  %4 = alloca %struct.ap_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %9 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %8, i32 0, i32 2
  %10 = load %struct.ap_info*, %struct.ap_info** %9, align 8
  %11 = icmp ne %struct.ap_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %105

13:                                               ; preds = %1
  %14 = call i32 @os_get_reltime(%struct.os_reltime* %3)
  br label %15

15:                                               ; preds = %36, %13
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %17 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %16, i32 0, i32 2
  %18 = load %struct.ap_info*, %struct.ap_info** %17, align 8
  %19 = icmp ne %struct.ap_info* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %22 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %21, i32 0, i32 2
  %23 = load %struct.ap_info*, %struct.ap_info** %22, align 8
  %24 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %23, i32 0, i32 3
  %25 = load %struct.ap_info*, %struct.ap_info** %24, align 8
  store %struct.ap_info* %25, %struct.ap_info** %4, align 8
  %26 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %27 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %26, i32 0, i32 2
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %29 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @os_reltime_expired(%struct.os_reltime* %3, i32* %27, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  br label %40

36:                                               ; preds = %20
  %37 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %38 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %39 = call i32 @ap_free_ap(%struct.hostapd_iface* %37, %struct.ap_info* %38)
  br label %15

40:                                               ; preds = %35, %15
  %41 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %42 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %47 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %99

50:                                               ; preds = %45, %40
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %51 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %52 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %51, i32 0, i32 2
  %53 = load %struct.ap_info*, %struct.ap_info** %52, align 8
  store %struct.ap_info* %53, %struct.ap_info** %4, align 8
  br label %54

54:                                               ; preds = %79, %50
  %55 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %56 = icmp ne %struct.ap_info* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ true, %57 ], [ %62, %60 ]
  br label %65

65:                                               ; preds = %63, %54
  %66 = phi i1 [ false, %54 ], [ %64, %63 ]
  br i1 %66, label %67, label %83

67:                                               ; preds = %65
  %68 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %69 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %70 = call i64 @ap_list_beacon_olbc(%struct.hostapd_iface* %68, %struct.ap_info* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %75 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %81 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %80, i32 0, i32 0
  %82 = load %struct.ap_info*, %struct.ap_info** %81, align 8
  store %struct.ap_info* %82, %struct.ap_info** %4, align 8
  br label %54

83:                                               ; preds = %65
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %88 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %95 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %86, %83
  br label %99

99:                                               ; preds = %98, %45
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %104 = call i32 @ieee802_11_update_beacons(%struct.hostapd_iface* %103)
  br label %105

105:                                              ; preds = %12, %102, %99
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_expired(%struct.os_reltime*, i32*, i32) #1

declare dso_local i32 @ap_free_ap(%struct.hostapd_iface*, %struct.ap_info*) #1

declare dso_local i64 @ap_list_beacon_olbc(%struct.hostapd_iface*, %struct.ap_info*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee802_11_update_beacons(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
