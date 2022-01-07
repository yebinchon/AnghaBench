; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_ieee802_11_set_radius_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_ieee802_11_set_radius_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.sta_info = type { i8*, i8*, i32, %struct.TYPE_4__, i64, %struct.hostapd_sta_wpa_psk_short*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hostapd_sta_wpa_psk_short = type { i32 }
%struct.vlan_description = type { i64*, i32, i64 }

@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid VLAN %d%s received from RADIUS server\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"VLAN ID %d\00", align 1
@PSK_RADIUS_IGNORED = common dso_local global i64 0, align 8
@HOSTAPD_ACL_ACCEPT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i32, i64, i64, %struct.vlan_description*, %struct.hostapd_sta_wpa_psk_short**, i8**, i8**)* @ieee802_11_set_radius_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_11_set_radius_info(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2, i64 %3, i64 %4, %struct.vlan_description* %5, %struct.hostapd_sta_wpa_psk_short** %6, i8** %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostapd_data*, align 8
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vlan_description*, align 8
  %17 = alloca %struct.hostapd_sta_wpa_psk_short**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %11, align 8
  store %struct.sta_info* %1, %struct.sta_info** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.vlan_description* %5, %struct.vlan_description** %16, align 8
  store %struct.hostapd_sta_wpa_psk_short** %6, %struct.hostapd_sta_wpa_psk_short*** %17, align 8
  store i8** %7, i8*** %18, align 8
  store i8** %8, i8*** %19, align 8
  %20 = load %struct.vlan_description*, %struct.vlan_description** %16, align 8
  %21 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %9
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vlan_description*, %struct.vlan_description** %16, align 8
  %31 = call i32 @hostapd_vlan_valid(i32 %29, %struct.vlan_description* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %24
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %39 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %40 = load %struct.vlan_description*, %struct.vlan_description** %16, align 8
  %41 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load %struct.vlan_description*, %struct.vlan_description** %16, align 8
  %45 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, i64, ...) @hostapd_logger(%struct.hostapd_data* %34, i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %43, i8* %51)
  store i32 -1, i32* %10, align 4
  br label %158

53:                                               ; preds = %24, %9
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %56 = load %struct.vlan_description*, %struct.vlan_description** %16, align 8
  %57 = call i64 @ap_sta_set_vlan(%struct.hostapd_data* %54, %struct.sta_info* %55, %struct.vlan_description* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 -1, i32* %10, align 4
  br label %158

60:                                               ; preds = %53
  %61 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %71 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %72 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, i64, ...) @hostapd_logger(%struct.hostapd_data* %66, i32 %69, i32 %70, i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %65, %60
  %77 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 5
  %79 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %78, align 8
  %80 = call i32 @hostapd_free_psk_list(%struct.hostapd_sta_wpa_psk_short* %79)
  %81 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %82 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PSK_RADIUS_IGNORED, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load %struct.hostapd_sta_wpa_psk_short**, %struct.hostapd_sta_wpa_psk_short*** %17, align 8
  %90 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %89, align 8
  %91 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 5
  store %struct.hostapd_sta_wpa_psk_short* %90, %struct.hostapd_sta_wpa_psk_short** %92, align 8
  %93 = load %struct.hostapd_sta_wpa_psk_short**, %struct.hostapd_sta_wpa_psk_short*** %17, align 8
  store %struct.hostapd_sta_wpa_psk_short* null, %struct.hostapd_sta_wpa_psk_short** %93, align 8
  br label %97

94:                                               ; preds = %76
  %95 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 5
  store %struct.hostapd_sta_wpa_psk_short* null, %struct.hostapd_sta_wpa_psk_short** %96, align 8
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @os_free(i8* %100)
  %102 = load i8**, i8*** %18, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %105 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i8**, i8*** %18, align 8
  store i8* null, i8** %106, align 8
  %107 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @os_free(i8* %109)
  %111 = load i8**, i8*** %19, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8**, i8*** %19, align 8
  store i8* null, i8** %115, align 8
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %117 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %97
  %123 = load i64, i64* %15, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i64, i64* %15, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 4
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %122, %97
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @HOSTAPD_ACL_ACCEPT_TIMEOUT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %135 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %137 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %136, i32 0, i32 3
  %138 = call i32 @os_get_reltime(%struct.TYPE_4__* %137)
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %141 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %139
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %148 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i32 @ap_sta_session_timeout(%struct.hostapd_data* %147, %struct.sta_info* %148, i64 %149)
  br label %157

151:                                              ; preds = %129
  %152 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %153 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = load %struct.hostapd_data*, %struct.hostapd_data** %11, align 8
  %155 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %156 = call i32 @ap_sta_no_session_timeout(%struct.hostapd_data* %154, %struct.sta_info* %155)
  br label %157

157:                                              ; preds = %151, %133
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %157, %59, %33
  %159 = load i32, i32* %10, align 4
  ret i32 %159
}

declare dso_local i32 @hostapd_vlan_valid(i32, %struct.vlan_description*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i64, ...) #1

declare dso_local i64 @ap_sta_set_vlan(%struct.hostapd_data*, %struct.sta_info*, %struct.vlan_description*) #1

declare dso_local i32 @hostapd_free_psk_list(%struct.hostapd_sta_wpa_psk_short*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_get_reltime(%struct.TYPE_4__*) #1

declare dso_local i32 @ap_sta_session_timeout(%struct.hostapd_data*, %struct.sta_info*, i64) #1

declare dso_local i32 @ap_sta_no_session_timeout(%struct.hostapd_data*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
