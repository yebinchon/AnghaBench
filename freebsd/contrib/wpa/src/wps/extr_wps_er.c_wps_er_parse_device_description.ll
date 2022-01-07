; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_parse_device_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_parse_device_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wpabuf = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"WPS ER: Device info\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"WPS ER: WFADevice:1 device not found - trying to parse invalid data\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"friendlyName\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"WPS ER: friendlyName='%s'\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"WPS ER: manufacturer='%s'\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"manufacturerURL\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"WPS ER: manufacturerURL='%s'\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"modelDescription\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"WPS ER: modelDescription='%s'\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"modelName\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"WPS ER: modelName='%s'\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"modelNumber\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"WPS ER: modelNumber='%s'\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"modelURL\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"WPS ER: modelURL='%s'\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"WPS ER: serialNumber='%s'\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"UDN\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"WPS ER: UDN='%s'\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"uuid:\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"WPS ER: Invalid UUID in UDN\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"UPC\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"WPS ER: UPC='%s'\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"SCPDURL\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"WPS ER: SCPDURL='%s'\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"controlURL\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"WPS ER: controlURL='%s'\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"eventSubURL\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"WPS ER: eventSubURL='%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_parse_device_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_parse_device_description(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %9 = call i8* @wpabuf_head(%struct.wpabuf* %8)
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* @MSG_MSGDUMP, align 4
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = call i8* @wpabuf_head(%struct.wpabuf* %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = call i32 @wpabuf_len(%struct.wpabuf* %13)
  %15 = call i32 @wpa_hexdump_ascii(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @wps_er_find_wfadevice(i8* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %25

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @xml_get_first_item(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %29 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %28, i32 0, i32 14
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %32 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %31, i32 0, i32 14
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @xml_get_first_item(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %38 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %41 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %40, i32 0, i32 13
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @xml_get_first_item(i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %47 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %46, i32 0, i32 12
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %50 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %49, i32 0, i32 12
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @xml_get_first_item(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %55 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %56 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %55, i32 0, i32 11
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %59 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %58, i32 0, i32 11
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i8* @xml_get_first_item(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %64 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %65 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %68 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %67, i32 0, i32 10
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @xml_get_first_item(i8* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %73 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %74 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %73, i32 0, i32 9
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %77 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %76, i32 0, i32 9
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @xml_get_first_item(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %82 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %83 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %86 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %85, i32 0, i32 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @xml_get_first_item(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %91 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %92 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %95 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %94, i32 0, i32 7
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i8* @xml_get_first_item(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %100 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %101 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  %102 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %103 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %102, i32 0, i32 6
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %132

106:                                              ; preds = %25
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %109 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %110)
  %112 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %113 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @os_strstr(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  store i8* %115, i8** %7, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %106
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 5
  store i8* %120, i8** %7, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %123 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @uuid_str2bin(i8* %121, i32 %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %118
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %131, %25
  %133 = load i8*, i8** %6, align 8
  %134 = call i8* @xml_get_first_item(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %135 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %136 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %139 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %140)
  %142 = load i8*, i8** %6, align 8
  %143 = call i8* @xml_get_first_item(i8* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %144 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %145 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @http_link_update(i8* %143, i32 %146)
  %148 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %149 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %152 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %153)
  %155 = load i8*, i8** %6, align 8
  %156 = call i8* @xml_get_first_item(i8* %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %157 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %158 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @http_link_update(i8* %156, i32 %159)
  %161 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %162 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %165 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %166)
  %168 = load i8*, i8** %6, align 8
  %169 = call i8* @xml_get_first_item(i8* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %170 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %171 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @http_link_update(i8* %169, i32 %172)
  %174 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %175 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %178 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i8* %179)
  ret void
}

declare dso_local i8* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i8* @wps_er_find_wfadevice(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_get_first_item(i8*, i8*) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i64 @uuid_str2bin(i8*, i32) #1

declare dso_local i8* @http_link_update(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
