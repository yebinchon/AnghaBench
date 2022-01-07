; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_decapsulate_radius.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_decapsulate_radius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32, %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { i32, %struct.TYPE_2__*, %struct.radius_msg* }
%struct.TYPE_2__ = type { %struct.wpabuf*, i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.radius_msg = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not extract EAP-Message from RADIUS message\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"too short EAP packet received from authentication server\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"EAP-Request-%s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"EAP Response-%s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"EAP Success\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EAP Failure\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unknown EAP code\00", align 1
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"decapsulated EAP packet (code=%d id=%d len=%d) from RADIUS server: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*)* @ieee802_1x_decapsulate_radius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_decapsulate_radius(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  store i32 -1, i32* %7, align 4
  %11 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 1
  %13 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %12, align 8
  store %struct.eapol_state_machine* %13, %struct.eapol_state_machine** %10, align 8
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %15 = icmp eq %struct.eapol_state_machine* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %18 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %17, i32 0, i32 2
  %19 = load %struct.radius_msg*, %struct.radius_msg** %18, align 8
  %20 = icmp eq %struct.radius_msg* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16, %2
  %22 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %23 = icmp ne %struct.eapol_state_machine* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %27 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  br label %30

30:                                               ; preds = %24, %21
  br label %152

31:                                               ; preds = %16
  %32 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %33 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %32, i32 0, i32 2
  %34 = load %struct.radius_msg*, %struct.radius_msg** %33, align 8
  store %struct.radius_msg* %34, %struct.radius_msg** %9, align 8
  %35 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %36 = call %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg* %35)
  store %struct.wpabuf* %36, %struct.wpabuf** %5, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %38 = icmp eq %struct.wpabuf* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %45 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %46 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %40, i32 %43, i32 %44, i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %49 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %47, i8** %51, align 8
  br label %152

52:                                               ; preds = %31
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %54 = call i32 @wpabuf_len(%struct.wpabuf* %53)
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 12
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %63 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %64 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %58, i32 %61, i32 %62, i32 %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %66 = call i32 @wpabuf_free(%struct.wpabuf* %65)
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %69 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i8* %67, i8** %71, align 8
  br label %152

72:                                               ; preds = %52
  %73 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %74 = call i32 @wpabuf_len(%struct.wpabuf* %73)
  %75 = sext i32 %74 to i64
  %76 = icmp ugt i64 %75, 12
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %79 = call i32* @wpabuf_head_u8(%struct.wpabuf* %78)
  %80 = getelementptr inbounds i32, i32* %79, i64 12
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %84 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %83)
  store %struct.eap_hdr* %84, %struct.eap_hdr** %6, align 8
  %85 = load %struct.eap_hdr*, %struct.eap_hdr** %6, align 8
  %86 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %113 [
    i32 130, label %88
    i32 129, label %101
    i32 128, label %107
    i32 131, label %110
  ]

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %94 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %88
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @eap_server_get_name(i32 0, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @os_snprintf(i8* %96, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99)
  br label %116

101:                                              ; preds = %82
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @eap_server_get_name(i32 0, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @os_snprintf(i8* %102, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  br label %116

107:                                              ; preds = %82
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %109 = call i32 @os_strlcpy(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 64)
  br label %116

110:                                              ; preds = %82
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %112 = call i32 @os_strlcpy(i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 64)
  br label %116

113:                                              ; preds = %82
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %115 = call i32 @os_strlcpy(i8* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 64)
  br label %116

116:                                              ; preds = %113, %110, %107, %101, %95
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 63
  store i8 0, i8* %117, align 1
  %118 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %119 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %120 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %123 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %124 = load %struct.eap_hdr*, %struct.eap_hdr** %6, align 8
  %125 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.eap_hdr*, %struct.eap_hdr** %6, align 8
  %128 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.eap_hdr*, %struct.eap_hdr** %6, align 8
  %131 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @be_to_host16(i32 %132)
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %135 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %118, i32 %121, i32 %122, i32 %123, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i32 %126, i32 %129, i32 %133, i8* %134)
  %136 = load i8*, i8** @TRUE, align 8
  %137 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %138 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i8* %136, i8** %140, align 8
  %141 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %142 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load %struct.wpabuf*, %struct.wpabuf** %144, align 8
  %146 = call i32 @wpabuf_free(%struct.wpabuf* %145)
  %147 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %148 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %149 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store %struct.wpabuf* %147, %struct.wpabuf** %151, align 8
  br label %152

152:                                              ; preds = %116, %57, %39, %30
  ret void
}

declare dso_local %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @eap_server_get_name(i32, i32) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @be_to_host16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
