; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_android.c_android_pno_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_android.c_android_pno_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i802_bss = type { i32, %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wpa_driver_scan_params = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8, i32 }
%struct.ifreq = type { i8*, i32, i32, %struct.ifreq*, i32 }

@WEXT_PNO_MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@WEXT_PNOSETUP_HEADER_SIZE = common dso_local global i32 0, align 4
@WEXT_PNOSETUP_HEADER = common dso_local global i32 0, align 4
@WEXT_PNO_TLV_PREFIX = common dso_local global i8 0, align 1
@WEXT_PNO_TLV_VERSION = common dso_local global i8 0, align 1
@WEXT_PNO_TLV_SUBVERSION = common dso_local global i8 0, align 1
@WEXT_PNO_TLV_RESERVED = common dso_local global i8 0, align 1
@WEXT_PNO_AMOUNT = common dso_local global i32 0, align 4
@WEXT_PNO_SSID_HEADER_SIZE = common dso_local global i32 0, align 4
@MAX_SSID_LEN = common dso_local global i32 0, align 4
@WEXT_PNO_NONSSID_SECTIONS_SIZE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"For PNO Scan\00", align 1
@WEXT_PNO_SSID_SECTION = common dso_local global i8 0, align 1
@WEXT_PNO_SCAN_INTERVAL_SECTION = common dso_local global i8 0, align 1
@WEXT_PNO_SCAN_INTERVAL_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@WEXT_PNO_SCAN_INTERVAL = common dso_local global i32 0, align 4
@WEXT_PNO_REPEAT_SECTION = common dso_local global i8 0, align 1
@WEXT_PNO_REPEAT_LENGTH = common dso_local global i64 0, align 8
@WEXT_PNO_REPEAT = common dso_local global i32 0, align 4
@WEXT_PNO_MAX_REPEAT_SECTION = common dso_local global i8 0, align 1
@WEXT_PNO_MAX_REPEAT_LENGTH = common dso_local global i64 0, align 8
@WEXT_PNO_MAX_REPEAT = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ioctl[SIOCSIWPRIV] (pnosetup): %d\00", align 1
@drv_errors = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"PNOFORCE 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @android_pno_start(%struct.i802_bss* %0, %struct.wpa_driver_scan_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i802_bss*, align 8
  %5 = alloca %struct.wpa_driver_scan_params*, align 8
  %6 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %7 = alloca %struct.ifreq, align 8
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.i802_bss* %0, %struct.i802_bss** %4, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %5, align 8
  %15 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %16 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %15, i32 0, i32 1
  %17 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %16, align 8
  store %struct.wpa_driver_nl80211_data* %17, %struct.wpa_driver_nl80211_data** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @WEXT_PNO_MAX_COMMAND_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @WEXT_PNOSETUP_HEADER_SIZE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @WEXT_PNOSETUP_HEADER, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @os_memcpy(i8* %21, i32 %23, i32 %24)
  %26 = load i8, i8* @WEXT_PNO_TLV_PREFIX, align 1
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %21, i64 %29
  store i8 %26, i8* %30, align 1
  %31 = load i8, i8* @WEXT_PNO_TLV_VERSION, align 1
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %21, i64 %34
  store i8 %31, i8* %35, align 1
  %36 = load i8, i8* @WEXT_PNO_TLV_SUBVERSION, align 1
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %21, i64 %39
  store i8 %36, i8* %40, align 1
  %41 = load i8, i8* @WEXT_PNO_TLV_RESERVED, align 1
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %21, i64 %44
  store i8 %41, i8* %45, align 1
  br label %46

46:                                               ; preds = %71, %2
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @WEXT_PNO_AMOUNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %54 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br label %57

57:                                               ; preds = %50, %46
  %58 = phi i1 [ false, %46 ], [ %56, %50 ]
  br i1 %58, label %59, label %141

59:                                               ; preds = %57
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @WEXT_PNO_SSID_HEADER_SIZE, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @MAX_SSID_LEN, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @WEXT_PNO_NONSSID_SECTIONS_SIZE, align 4
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = trunc i64 %19 to i32
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %141

71:                                               ; preds = %59
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %74 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 4
  %89 = call i32 @wpa_hexdump_ascii(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %80, i8 signext %88)
  %90 = load i8, i8* @WEXT_PNO_SSID_SECTION, align 1
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %21, i64 %93
  store i8 %90, i8* %94, align 1
  %95 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %96 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %21, i64 %105
  store i8 %102, i8* %106, align 1
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %21, i64 %108
  %110 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %111 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %119 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 4
  %126 = sext i8 %125 to i32
  %127 = call i32 @os_memcpy(i8* %109, i32 %117, i32 %126)
  %128 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %129 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 4
  %136 = sext i8 %135 to i32
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %46

141:                                              ; preds = %70, %57
  %142 = load i8, i8* @WEXT_PNO_SCAN_INTERVAL_SECTION, align 1
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %21, i64 %145
  store i8 %142, i8* %146, align 1
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %21, i64 %148
  %150 = load i64, i64* @WEXT_PNO_SCAN_INTERVAL_LENGTH, align 8
  %151 = add nsw i64 %150, 1
  %152 = load i32, i32* @WEXT_PNO_SCAN_INTERVAL, align 4
  %153 = call i32 @os_snprintf(i8* %149, i64 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load i64, i64* @WEXT_PNO_SCAN_INTERVAL_LENGTH, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  %159 = load i8, i8* @WEXT_PNO_REPEAT_SECTION, align 1
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %21, i64 %162
  store i8 %159, i8* %163, align 1
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %21, i64 %165
  %167 = load i64, i64* @WEXT_PNO_REPEAT_LENGTH, align 8
  %168 = add nsw i64 %167, 1
  %169 = load i32, i32* @WEXT_PNO_REPEAT, align 4
  %170 = call i32 @os_snprintf(i8* %166, i64 %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load i64, i64* @WEXT_PNO_REPEAT_LENGTH, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %11, align 4
  %176 = load i8, i8* @WEXT_PNO_MAX_REPEAT_SECTION, align 1
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %21, i64 %179
  store i8 %176, i8* %180, align 1
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %21, i64 %182
  %184 = load i64, i64* @WEXT_PNO_MAX_REPEAT_LENGTH, align 8
  %185 = add nsw i64 %184, 1
  %186 = load i32, i32* @WEXT_PNO_MAX_REPEAT, align 4
  %187 = call i32 @os_snprintf(i8* %183, i64 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load i64, i64* @WEXT_PNO_MAX_REPEAT_LENGTH, align 8
  %189 = add nsw i64 %188, 1
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %11, align 4
  %194 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 32)
  %195 = call i32 @memset(%struct.ifreq* %8, i32 0, i32 32)
  %196 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %199 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @IFNAMSIZ, align 4
  %202 = call i32 @os_strlcpy(i32 %197, i32 %200, i32 %201)
  %203 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  store i8* %21, i8** %203, align 8
  %204 = load i32, i32* %11, align 4
  %205 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  store i32 %204, i32* %205, align 8
  %206 = load i32, i32* %11, align 4
  %207 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 2
  store i32 %206, i32* %207, align 4
  %208 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 3
  store %struct.ifreq* %8, %struct.ifreq** %208, align 8
  %209 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %210 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i64, i64* @SIOCDEVPRIVATE, align 8
  %215 = add nsw i64 %214, 1
  %216 = call i32 @ioctl(i32 %213, i64 %215, %struct.ifreq* %7)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %141
  %220 = load i32, i32* @MSG_ERROR, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @wpa_printf(i32 %220, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %221)
  %223 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %224 = call i32 @wpa_driver_send_hang_msg(%struct.wpa_driver_nl80211_data* %223)
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %229

226:                                              ; preds = %141
  store i64 0, i64* @drv_errors, align 8
  %227 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %228 = call i32 @android_priv_cmd(%struct.i802_bss* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %228, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %229

229:                                              ; preds = %226, %219
  %230 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i8*, i32, i32) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i8 signext) #2

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32) #2

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #2

declare dso_local i32 @os_strlcpy(i32, i32, i32) #2

declare dso_local i32 @ioctl(i32, i64, %struct.ifreq*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32) #2

declare dso_local i32 @wpa_driver_send_hang_msg(%struct.wpa_driver_nl80211_data*) #2

declare dso_local i32 @android_priv_cmd(%struct.i802_bss*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
