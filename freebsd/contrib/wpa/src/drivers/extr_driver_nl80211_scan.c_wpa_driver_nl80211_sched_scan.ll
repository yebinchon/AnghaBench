; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_sched_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_scan_params = type { i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i802_bss = type { %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, %struct.nl80211_bss_select_rssi_adjust* }
%struct.nl80211_bss_select_rssi_adjust = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.nl_msg = type { i32 }
%struct.nlattr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nl80211: sched_scan request\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"nl80211: Invalid number of sched scan plans: %u\00", align 1
@NL80211_CMD_START_SCHED_SCAN = common dso_local global i32 0, align 4
@NL80211_ATTR_SCHED_SCAN_INTERVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_SCHED_SCAN_MATCH = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"nl80211: Sched scan filter SSID %s\00", align 1
@NL80211_ATTR_SCHED_SCAN_MATCH_SSID = common dso_local global i32 0, align 4
@NL80211_SCHED_SCAN_MATCH_ATTR_RSSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"nl80211: Sched scan RSSI filter %d dBm\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"nl80211: Relative RSSI: %d\00", align 1
@NL80211_ATTR_SCHED_SCAN_RELATIVE_RSSI = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_ATTR_SCHED_SCAN_RSSI_ADJUST = common dso_local global i32 0, align 4
@NL80211_ATTR_SCHED_SCAN_DELAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"nl80211: Sched scan start failed: ret=%d (%s)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"nl80211: Sched scan requested (ret=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_driver_nl80211_sched_scan(i8* %0, %struct.wpa_driver_scan_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_driver_scan_params*, align 8
  %6 = alloca %struct.i802_bss*, align 8
  %7 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nl_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.nl80211_bss_select_rssi_adjust, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.i802_bss*
  store %struct.i802_bss* %17, %struct.i802_bss** %6, align 8
  %18 = load %struct.i802_bss*, %struct.i802_bss** %6, align 8
  %19 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %18, i32 0, i32 0
  %20 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %19, align 8
  store %struct.wpa_driver_nl80211_data* %20, %struct.wpa_driver_nl80211_data** %7, align 8
  store i32 -1, i32* %8, align 4
  %21 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %22 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %35 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30, %2
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %42 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %3, align 4
  br label %298

46:                                               ; preds = %30
  %47 = load %struct.i802_bss*, %struct.i802_bss** %6, align 8
  %48 = load i32, i32* @NL80211_CMD_START_SCHED_SCAN, align 4
  %49 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %50 = call %struct.nl_msg* @nl80211_scan_common(%struct.i802_bss* %47, i32 %48, %struct.wpa_driver_scan_params* %49)
  store %struct.nl_msg* %50, %struct.nl_msg** %9, align 8
  %51 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %52 = icmp ne %struct.nl_msg* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %294

54:                                               ; preds = %46
  %55 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %56 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %62 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %63 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %64 = call i64 @nl80211_sched_scan_add_scan_plans(%struct.wpa_driver_nl80211_data* %61, %struct.nl_msg* %62, %struct.wpa_driver_scan_params* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %294

67:                                               ; preds = %60
  br label %82

68:                                               ; preds = %54
  %69 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %70 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_INTERVAL, align 4
  %71 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %72 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %71, i32 0, i32 7
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 1000
  %78 = call i64 @nla_put_u32(%struct.nl_msg* %69, i32 %70, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %294

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %84 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %93 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %91, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %99 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %212

102:                                              ; preds = %97, %87
  %103 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %104 = load i64, i64* @NL80211_ATTR_SCHED_SCAN_MATCH, align 8
  %105 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %103, i64 %104)
  store %struct.nlattr* %105, %struct.nlattr** %11, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %107 = icmp eq %struct.nlattr* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %294

109:                                              ; preds = %102
  store i64 0, i64* %10, align 8
  br label %110

110:                                              ; preds = %177, %109
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %113 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %180

116:                                              ; preds = %110
  %117 = load i32, i32* @MSG_MSGDUMP, align 4
  %118 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %119 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.nl80211_bss_select_rssi_adjust*, %struct.nl80211_bss_select_rssi_adjust** %123, align 8
  %125 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %126 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @wpa_ssid_txt(%struct.nl80211_bss_select_rssi_adjust* %124, i32 %131)
  %133 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 1
  %137 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %134, i64 %136)
  store %struct.nlattr* %137, %struct.nlattr** %12, align 8
  %138 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %139 = icmp eq %struct.nlattr* %138, null
  br i1 %139, label %172, label %140

140:                                              ; preds = %116
  %141 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %142 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_MATCH_SSID, align 4
  %143 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %144 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %151 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load %struct.nl80211_bss_select_rssi_adjust*, %struct.nl80211_bss_select_rssi_adjust** %155, align 8
  %157 = call i64 @nla_put(%struct.nl_msg* %141, i32 %142, i32 %149, %struct.nl80211_bss_select_rssi_adjust* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %140
  %160 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %161 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %166 = load i32, i32* @NL80211_SCHED_SCAN_MATCH_ATTR_RSSI, align 4
  %167 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %168 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @nla_put_u32(%struct.nl_msg* %165, i32 %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164, %140, %116
  br label %294

173:                                              ; preds = %164, %159
  %174 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %175 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %176 = call i32 @nla_nest_end(%struct.nl_msg* %174, %struct.nlattr* %175)
  br label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %10, align 8
  br label %110

180:                                              ; preds = %110
  %181 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %182 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %208

185:                                              ; preds = %180
  %186 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %187 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %186, i64 0)
  store %struct.nlattr* %187, %struct.nlattr** %13, align 8
  %188 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %189 = icmp eq %struct.nlattr* %188, null
  br i1 %189, label %198, label %190

190:                                              ; preds = %185
  %191 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %192 = load i32, i32* @NL80211_SCHED_SCAN_MATCH_ATTR_RSSI, align 4
  %193 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %194 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @nla_put_u32(%struct.nl_msg* %191, i32 %192, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190, %185
  br label %294

199:                                              ; preds = %190
  %200 = load i32, i32* @MSG_MSGDUMP, align 4
  %201 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %202 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  %205 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %206 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %207 = call i32 @nla_nest_end(%struct.nl_msg* %205, %struct.nlattr* %206)
  br label %208

208:                                              ; preds = %199, %180
  %209 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %210 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %211 = call i32 @nla_nest_end(%struct.nl_msg* %209, %struct.nlattr* %210)
  br label %212

212:                                              ; preds = %208, %97
  %213 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %214 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %263

217:                                              ; preds = %212
  %218 = call i32 @os_memset(%struct.nl80211_bss_select_rssi_adjust* %14, i32 0, i32 16)
  %219 = load i32, i32* @MSG_DEBUG, align 4
  %220 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %221 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %225 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_RELATIVE_RSSI, align 4
  %226 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %227 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @nla_put_u32(%struct.nl_msg* %224, i32 %225, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %217
  br label %294

232:                                              ; preds = %217
  %233 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %234 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %262

237:                                              ; preds = %232
  store i32 1, i32* %15, align 4
  %238 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %239 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %247 [
    i32 128, label %241
    i32 129, label %244
  ]

241:                                              ; preds = %237
  %242 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %243 = getelementptr inbounds %struct.nl80211_bss_select_rssi_adjust, %struct.nl80211_bss_select_rssi_adjust* %14, i32 0, i32 1
  store i32 %242, i32* %243, align 8
  br label %248

244:                                              ; preds = %237
  %245 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %246 = getelementptr inbounds %struct.nl80211_bss_select_rssi_adjust, %struct.nl80211_bss_select_rssi_adjust* %14, i32 0, i32 1
  store i32 %245, i32* %246, align 8
  br label %248

247:                                              ; preds = %237
  store i32 0, i32* %15, align 4
  br label %248

248:                                              ; preds = %247, %244, %241
  %249 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %250 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.nl80211_bss_select_rssi_adjust, %struct.nl80211_bss_select_rssi_adjust* %14, i32 0, i32 0
  store i64 %251, i64* %252, align 8
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %257 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_RSSI_ADJUST, align 4
  %258 = call i64 @nla_put(%struct.nl_msg* %256, i32 %257, i32 16, %struct.nl80211_bss_select_rssi_adjust* %14)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %294

261:                                              ; preds = %255, %248
  br label %262

262:                                              ; preds = %261, %232
  br label %263

263:                                              ; preds = %262, %212
  %264 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %265 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %270 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_DELAY, align 4
  %271 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %272 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @nla_put_u32(%struct.nl_msg* %269, i32 %270, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  br label %294

277:                                              ; preds = %268, %263
  %278 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %279 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %280 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %278, %struct.nl_msg* %279, i32* null, i32* null)
  store i32 %280, i32* %8, align 4
  store %struct.nl_msg* null, %struct.nl_msg** %9, align 8
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %277
  %284 = load i32, i32* @MSG_DEBUG, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %8, align 4
  %287 = sub nsw i32 0, %286
  %288 = call i32 @strerror(i32 %287)
  %289 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %284, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %285, i32 %288)
  br label %294

290:                                              ; preds = %277
  %291 = load i32, i32* @MSG_DEBUG, align 4
  %292 = load i32, i32* %8, align 4
  %293 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %291, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %290, %283, %276, %260, %231, %198, %172, %108, %80, %66, %53
  %295 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %296 = call i32 @nlmsg_free(%struct.nl_msg* %295)
  %297 = load i32, i32* %8, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %294, %39
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local %struct.nl_msg* @nl80211_scan_common(%struct.i802_bss*, i32, %struct.wpa_driver_scan_params*) #1

declare dso_local i64 @nl80211_sched_scan_add_scan_plans(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, %struct.wpa_driver_scan_params*) #1

declare dso_local i64 @nla_put_u32(%struct.nl_msg*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.nl_msg*, i64) #1

declare dso_local i32 @wpa_ssid_txt(%struct.nl80211_bss_select_rssi_adjust*, i32) #1

declare dso_local i64 @nla_put(%struct.nl_msg*, i32, i32, %struct.nl80211_bss_select_rssi_adjust*) #1

declare dso_local i32 @nla_nest_end(%struct.nl_msg*, %struct.nlattr*) #1

declare dso_local i32 @os_memset(%struct.nl80211_bss_select_rssi_adjust*, i32, i32) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
