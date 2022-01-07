; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_set_neighbor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_set_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.wpa_ssid_value = type { i32 }
%struct.wpabuf = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_RRM_CAPS_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CTRL: SET_NEIGHBOR: Neighbor report is not enabled\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"CTRL: SET_NEIGHBOR: Bad BSSID\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ssid=\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"CTRL: SET_NEIGHBOR: Bad or missing SSID\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nr=\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"CTRL: SET_NEIGHBOR: Missing Neighbor Report element\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"CTRL: SET_NEIGHBOR: Bad Neighbor Report element\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lci=\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"CTRL: SET_NEIGHBOR: Bad LCI subelement\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"civic=\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"CTRL: SET_NEIGHBOR: Bad civic subelement\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @hostapd_ctrl_iface_set_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_set_neighbor(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_ssid_value, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WLAN_RRM_CAPS_NEIGHBOR_REPORT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @hwaddr_aton(i8* %34, i32* %19)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_ERROR, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @os_strstr(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  %48 = call i64 @ssid_parse(i8* %47, %struct.wpa_ssid_value* %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

53:                                               ; preds = %45
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 34
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 34, i32 32
  %63 = trunc i32 %62 to i8
  %64 = call i8* @os_strchr(i8* %55, i8 signext %63)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

68:                                               ; preds = %53
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* @os_strstr(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @MSG_ERROR, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

76:                                               ; preds = %68
  %77 = load i8*, i8** %13, align 8
  %78 = call i8* @os_strchr(i8* %77, i8 signext 32)
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  store i8 0, i8* %82, align 1
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = call %struct.wpabuf* @wpabuf_parse_bin(i8* %86)
  store %struct.wpabuf* %87, %struct.wpabuf** %9, align 8
  %88 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %89 = icmp ne %struct.wpabuf* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @MSG_ERROR, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

93:                                               ; preds = %84
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %163

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = call i8* @os_strstr(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %99, i8** %13, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load i8*, i8** %13, align 8
  %104 = call i8* @os_strchr(i8* %103, i8 signext 32)
  store i8* %104, i8** %5, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  store i8 0, i8* %108, align 1
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = call %struct.wpabuf* @wpabuf_parse_bin(i8* %112)
  store %struct.wpabuf* %113, %struct.wpabuf** %10, align 8
  %114 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %115 = icmp ne %struct.wpabuf* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* @MSG_ERROR, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %119 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %120 = call i32 @wpabuf_free(%struct.wpabuf* %119)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %97
  %123 = load i8*, i8** %5, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %163

126:                                              ; preds = %122
  %127 = load i8*, i8** %5, align 8
  %128 = call i8* @os_strstr(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %128, i8** %13, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load i8*, i8** %13, align 8
  %133 = call i8* @os_strchr(i8* %132, i8 signext 32)
  store i8* %133, i8** %5, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %5, align 8
  store i8 0, i8* %137, align 1
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 6
  %142 = call %struct.wpabuf* @wpabuf_parse_bin(i8* %141)
  store %struct.wpabuf* %142, %struct.wpabuf** %11, align 8
  %143 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %144 = icmp ne %struct.wpabuf* %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* @MSG_ERROR, align 4
  %147 = call i32 @wpa_printf(i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %148 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %149 = call i32 @wpabuf_free(%struct.wpabuf* %148)
  %150 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %151 = call i32 @wpabuf_free(%struct.wpabuf* %150)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %126
  %154 = load i8*, i8** %5, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  br label %163

157:                                              ; preds = %153
  %158 = load i8*, i8** %5, align 8
  %159 = call i8* @os_strstr(i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 1, i32* %12, align 4
  br label %162

162:                                              ; preds = %161, %157
  br label %163

163:                                              ; preds = %162, %156, %125, %96
  %164 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %165 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %166 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %167 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @hostapd_neighbor_set(%struct.hostapd_data* %164, i32* %19, %struct.wpa_ssid_value* %6, %struct.wpabuf* %165, %struct.wpabuf* %166, %struct.wpabuf* %167, i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %171 = call i32 @wpabuf_free(%struct.wpabuf* %170)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %173 = call i32 @wpabuf_free(%struct.wpabuf* %172)
  %174 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %175 = call i32 @wpabuf_free(%struct.wpabuf* %174)
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %177

177:                                              ; preds = %163, %145, %116, %90, %73, %67, %50, %37, %30
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i8* @os_strstr(i8*, i8*) #2

declare dso_local i64 @ssid_parse(i8*, %struct.wpa_ssid_value*) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local %struct.wpabuf* @wpabuf_parse_bin(i8*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @hostapd_neighbor_set(%struct.hostapd_data*, i32*, %struct.wpa_ssid_value*, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
