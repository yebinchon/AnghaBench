; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_do_process_drv_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_do_process_drv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i802_bss = type { i32, %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nl80211: Drv Event %d (%s) received for %s\00", align 1
@WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"nl80211: Ignore roam event (cmd=%d), device will use vendor event roam+auth\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"nl80211: Scan trigger\00", align 1
@SCAN_STARTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"nl80211: Do not indicate scan-start event due to internal scan_for_auth\00", align 1
@EVENT_SCAN_STARTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"nl80211: Sched scan started\00", align 1
@SCHED_SCAN_STARTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"nl80211: Sched scan stopped\00", align 1
@SCHED_SCAN_STOPPED = common dso_local global i32 0, align 4
@EVENT_SCHED_SCAN_STOPPED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"nl80211: New scan results available\00", align 1
@SCAN_COMPLETED = common dso_local global i32 0, align 4
@wpa_driver_nl80211_scan_timeout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"nl80211: New sched scan results available\00", align 1
@SCHED_SCAN_RESULTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"nl80211: Scan aborted\00", align 1
@SCAN_ABORTED = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_TIMED_OUT = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_ACK = common dso_local global i64 0, align 8
@NL80211_ATTR_COOKIE = common dso_local global i64 0, align 8
@NL80211_ATTR_RX_SIGNAL_DBM = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_WME = common dso_local global i64 0, align 8
@NL80211_ATTR_REQ_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_STATUS_CODE = common dso_local global i64 0, align 8
@NL80211_ATTR_RESP_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_TIMEOUT_REASON = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_KEK = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM = common dso_local global i64 0, align 8
@NL80211_ATTR_PMK = common dso_local global i64 0, align 8
@NL80211_ATTR_PMKID = common dso_local global i64 0, align 8
@NL80211_ATTR_IFINDEX = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i64 0, align 8
@NL80211_ATTR_CENTER_FREQ1 = common dso_local global i64 0, align 8
@NL80211_ATTR_CENTER_FREQ2 = common dso_local global i64 0, align 8
@NL80211_ATTR_REASON_CODE = common dso_local global i64 0, align 8
@NL80211_ATTR_DISCONNECTED_BY_AP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"nl80211: Ignored unknown event (cmd=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i802_bss*, i32, %struct.nlattr**)* @do_process_drv_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_process_drv_event(%struct.i802_bss* %0, i32 %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.i802_bss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i802_bss* %0, %struct.i802_bss** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %9 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %10 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %9, i32 0, i32 1
  %11 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %10, align 8
  store %struct.wpa_driver_nl80211_data* %11, %struct.wpa_driver_nl80211_data** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @nl80211_command_to_string(i32 %14)
  %16 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %17 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 142
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %24 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %437

34:                                               ; preds = %22, %3
  %35 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 152
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 141
  br i1 %45, label %46, label %57

46:                                               ; preds = %43, %40
  %47 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %51 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wpa_driver_nl80211_set_mode(i32 %49, i64 %52)
  %54 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %55 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %56 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %43, %34
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %430 [
    i32 133, label %59
    i32 137, label %81
    i32 139, label %90
    i32 152, label %104
    i32 140, label %140
    i32 141, label %152
    i32 167, label %186
    i32 168, label %186
    i32 161, label %186
    i32 159, label %186
    i32 157, label %186
    i32 132, label %186
    i32 131, label %186
    i32 163, label %226
    i32 142, label %226
    i32 164, label %270
    i32 165, label %297
    i32 158, label %324
    i32 154, label %339
    i32 155, label %343
    i32 143, label %347
    i32 166, label %351
    i32 150, label %355
    i32 144, label %359
    i32 128, label %359
    i32 145, label %363
    i32 151, label %367
    i32 160, label %372
    i32 138, label %377
    i32 149, label %381
    i32 147, label %385
    i32 134, label %389
    i32 162, label %393
    i32 156, label %397
    i32 146, label %401
    i32 135, label %405
    i32 129, label %409
    i32 153, label %413
    i32 148, label %417
    i32 136, label %421
    i32 130, label %425
  ]

59:                                               ; preds = %57
  %60 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %61 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %62, i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @SCAN_STARTED, align 4
  %66 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %67 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %69 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  br label %437

75:                                               ; preds = %59
  %76 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %77 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EVENT_SCAN_STARTED, align 4
  %80 = call i32 @wpa_supplicant_event(i32 %78, i32 %79, i32* null)
  br label %437

81:                                               ; preds = %57
  %82 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %83 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %84, i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @SCHED_SCAN_STARTED, align 4
  %88 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  br label %437

90:                                               ; preds = %57
  %91 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %92 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %93, i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @SCHED_SCAN_STOPPED, align 4
  %97 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %98 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %100 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @EVENT_SCHED_SCAN_STOPPED, align 4
  %103 = call i32 @wpa_supplicant_event(i32 %101, i32 %102, i32* null)
  br label %437

104:                                              ; preds = %57
  %105 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %106 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %107, i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %110 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %111 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 129
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i32, i32* @SCAN_COMPLETED, align 4
  %116 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %117 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %104
  %119 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %120 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %119, i32 0, i32 2
  store i32 1, i32* %120, align 4
  %121 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %122 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 133
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load i32, i32* @wpa_driver_nl80211_scan_timeout, align 4
  %127 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %128 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %129 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @eloop_cancel_timeout(i32 %126, %struct.wpa_driver_nl80211_data* %127, i32 %130)
  %132 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %133 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %132, i32 0, i32 1
  store i32 0, i32* %133, align 8
  br label %135

134:                                              ; preds = %118
  store i32 1, i32* %8, align 4
  br label %135

135:                                              ; preds = %134, %125
  %136 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %137 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @send_scan_event(%struct.wpa_driver_nl80211_data* %136, i32 0, %struct.nlattr** %137, i32 %138)
  br label %437

140:                                              ; preds = %57
  %141 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %142 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %143, i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32, i32* @SCHED_SCAN_RESULTS, align 4
  %147 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %148 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %150 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %151 = call i32 @send_scan_event(%struct.wpa_driver_nl80211_data* %149, i32 0, %struct.nlattr** %150, i32 0)
  br label %437

152:                                              ; preds = %57
  %153 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %154 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %155, i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %158 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %159 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 129
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @SCAN_ABORTED, align 4
  %164 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %165 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %152
  %167 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %168 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 133
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load i32, i32* @wpa_driver_nl80211_scan_timeout, align 4
  %173 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %174 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %175 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @eloop_cancel_timeout(i32 %172, %struct.wpa_driver_nl80211_data* %173, i32 %176)
  %178 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %179 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %178, i32 0, i32 1
  store i32 0, i32* %179, align 8
  br label %181

180:                                              ; preds = %166
  store i32 1, i32* %8, align 4
  br label %181

181:                                              ; preds = %180, %171
  %182 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %183 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @send_scan_event(%struct.wpa_driver_nl80211_data* %182, i32 1, %struct.nlattr** %183, i32 %184)
  br label %437

186:                                              ; preds = %57, %57, %57, %57, %57, %57, %57
  %187 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %190 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %191 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %189, i64 %190
  %192 = load %struct.nlattr*, %struct.nlattr** %191, align 8
  %193 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %194 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %195 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %193, i64 %194
  %196 = load %struct.nlattr*, %struct.nlattr** %195, align 8
  %197 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %198 = load i64, i64* @NL80211_ATTR_TIMED_OUT, align 8
  %199 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %197, i64 %198
  %200 = load %struct.nlattr*, %struct.nlattr** %199, align 8
  %201 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %202 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %203 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %201, i64 %202
  %204 = load %struct.nlattr*, %struct.nlattr** %203, align 8
  %205 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %206 = load i64, i64* @NL80211_ATTR_ACK, align 8
  %207 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %205, i64 %206
  %208 = load %struct.nlattr*, %struct.nlattr** %207, align 8
  %209 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %210 = load i64, i64* @NL80211_ATTR_COOKIE, align 8
  %211 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %209, i64 %210
  %212 = load %struct.nlattr*, %struct.nlattr** %211, align 8
  %213 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %214 = load i64, i64* @NL80211_ATTR_RX_SIGNAL_DBM, align 8
  %215 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %213, i64 %214
  %216 = load %struct.nlattr*, %struct.nlattr** %215, align 8
  %217 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %218 = load i64, i64* @NL80211_ATTR_STA_WME, align 8
  %219 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %217, i64 %218
  %220 = load %struct.nlattr*, %struct.nlattr** %219, align 8
  %221 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %222 = load i64, i64* @NL80211_ATTR_REQ_IE, align 8
  %223 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %221, i64 %222
  %224 = load %struct.nlattr*, %struct.nlattr** %223, align 8
  %225 = call i32 @mlme_event(%struct.i802_bss* %187, i32 %188, %struct.nlattr* %192, %struct.nlattr* %196, %struct.nlattr* %200, %struct.nlattr* %204, %struct.nlattr* %208, %struct.nlattr* %212, %struct.nlattr* %216, %struct.nlattr* %220, %struct.nlattr* %224)
  br label %437

226:                                              ; preds = %57, %57
  %227 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %230 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %231 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %229, i64 %230
  %232 = load %struct.nlattr*, %struct.nlattr** %231, align 8
  %233 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %234 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %235 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %233, i64 %234
  %236 = load %struct.nlattr*, %struct.nlattr** %235, align 8
  %237 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %238 = load i64, i64* @NL80211_ATTR_REQ_IE, align 8
  %239 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %237, i64 %238
  %240 = load %struct.nlattr*, %struct.nlattr** %239, align 8
  %241 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %242 = load i64, i64* @NL80211_ATTR_RESP_IE, align 8
  %243 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %241, i64 %242
  %244 = load %struct.nlattr*, %struct.nlattr** %243, align 8
  %245 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %246 = load i64, i64* @NL80211_ATTR_TIMED_OUT, align 8
  %247 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %245, i64 %246
  %248 = load %struct.nlattr*, %struct.nlattr** %247, align 8
  %249 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %250 = load i64, i64* @NL80211_ATTR_TIMEOUT_REASON, align 8
  %251 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %249, i64 %250
  %252 = load %struct.nlattr*, %struct.nlattr** %251, align 8
  %253 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %254 = load i64, i64* @NL80211_ATTR_FILS_KEK, align 8
  %255 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %253, i64 %254
  %256 = load %struct.nlattr*, %struct.nlattr** %255, align 8
  %257 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %258 = load i64, i64* @NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM, align 8
  %259 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %257, i64 %258
  %260 = load %struct.nlattr*, %struct.nlattr** %259, align 8
  %261 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %262 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %263 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %261, i64 %262
  %264 = load %struct.nlattr*, %struct.nlattr** %263, align 8
  %265 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %266 = load i64, i64* @NL80211_ATTR_PMKID, align 8
  %267 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %265, i64 %266
  %268 = load %struct.nlattr*, %struct.nlattr** %267, align 8
  %269 = call i32 @mlme_event_connect(%struct.wpa_driver_nl80211_data* %227, i32 %228, %struct.nlattr* %232, %struct.nlattr* %236, %struct.nlattr* %240, %struct.nlattr* %244, %struct.nlattr* %248, %struct.nlattr* %252, i32* null, i32* null, i32* null, %struct.nlattr* %256, i32* null, %struct.nlattr* %260, %struct.nlattr* %264, %struct.nlattr* %268)
  br label %437

270:                                              ; preds = %57
  %271 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %272 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %273 = load i64, i64* @NL80211_ATTR_IFINDEX, align 8
  %274 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %272, i64 %273
  %275 = load %struct.nlattr*, %struct.nlattr** %274, align 8
  %276 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %277 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %278 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %276, i64 %277
  %279 = load %struct.nlattr*, %struct.nlattr** %278, align 8
  %280 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %281 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %282 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %280, i64 %281
  %283 = load %struct.nlattr*, %struct.nlattr** %282, align 8
  %284 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %285 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %286 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %284, i64 %285
  %287 = load %struct.nlattr*, %struct.nlattr** %286, align 8
  %288 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %289 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %290 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %288, i64 %289
  %291 = load %struct.nlattr*, %struct.nlattr** %290, align 8
  %292 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %293 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %294 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %292, i64 %293
  %295 = load %struct.nlattr*, %struct.nlattr** %294, align 8
  %296 = call i32 @mlme_event_ch_switch(%struct.wpa_driver_nl80211_data* %271, %struct.nlattr* %275, %struct.nlattr* %279, %struct.nlattr* %283, %struct.nlattr* %287, %struct.nlattr* %291, %struct.nlattr* %295, i32 0)
  br label %437

297:                                              ; preds = %57
  %298 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %299 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %300 = load i64, i64* @NL80211_ATTR_IFINDEX, align 8
  %301 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %299, i64 %300
  %302 = load %struct.nlattr*, %struct.nlattr** %301, align 8
  %303 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %304 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %305 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %303, i64 %304
  %306 = load %struct.nlattr*, %struct.nlattr** %305, align 8
  %307 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %308 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %309 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %307, i64 %308
  %310 = load %struct.nlattr*, %struct.nlattr** %309, align 8
  %311 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %312 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %313 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %311, i64 %312
  %314 = load %struct.nlattr*, %struct.nlattr** %313, align 8
  %315 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %316 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %317 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %315, i64 %316
  %318 = load %struct.nlattr*, %struct.nlattr** %317, align 8
  %319 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %320 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %321 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %319, i64 %320
  %322 = load %struct.nlattr*, %struct.nlattr** %321, align 8
  %323 = call i32 @mlme_event_ch_switch(%struct.wpa_driver_nl80211_data* %298, %struct.nlattr* %302, %struct.nlattr* %306, %struct.nlattr* %310, %struct.nlattr* %314, %struct.nlattr* %318, %struct.nlattr* %322, i32 1)
  br label %437

324:                                              ; preds = %57
  %325 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %326 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %327 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %328 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %326, i64 %327
  %329 = load %struct.nlattr*, %struct.nlattr** %328, align 8
  %330 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %331 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %332 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %330, i64 %331
  %333 = load %struct.nlattr*, %struct.nlattr** %332, align 8
  %334 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %335 = load i64, i64* @NL80211_ATTR_DISCONNECTED_BY_AP, align 8
  %336 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %334, i64 %335
  %337 = load %struct.nlattr*, %struct.nlattr** %336, align 8
  %338 = call i32 @mlme_event_disconnect(%struct.wpa_driver_nl80211_data* %325, %struct.nlattr* %329, %struct.nlattr* %333, %struct.nlattr* %337)
  br label %437

339:                                              ; preds = %57
  %340 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %341 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %342 = call i32 @mlme_event_michael_mic_failure(%struct.i802_bss* %340, %struct.nlattr** %341)
  br label %437

343:                                              ; preds = %57
  %344 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %345 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %346 = call i32 @mlme_event_join_ibss(%struct.wpa_driver_nl80211_data* %344, %struct.nlattr** %345)
  br label %437

347:                                              ; preds = %57
  %348 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %349 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %350 = call i32 @mlme_event_remain_on_channel(%struct.wpa_driver_nl80211_data* %348, i32 0, %struct.nlattr** %349)
  br label %437

351:                                              ; preds = %57
  %352 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %353 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %354 = call i32 @mlme_event_remain_on_channel(%struct.wpa_driver_nl80211_data* %352, i32 1, %struct.nlattr** %353)
  br label %437

355:                                              ; preds = %57
  %356 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %357 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %358 = call i32 @nl80211_cqm_event(%struct.wpa_driver_nl80211_data* %356, %struct.nlattr** %357)
  br label %437

359:                                              ; preds = %57, %57
  %360 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %361 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %362 = call i32 @nl80211_reg_change_event(%struct.wpa_driver_nl80211_data* %360, %struct.nlattr** %361)
  br label %437

363:                                              ; preds = %57
  %364 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %365 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %366 = call i32 @nl80211_reg_beacon_hint_event(%struct.wpa_driver_nl80211_data* %364, %struct.nlattr** %365)
  br label %437

367:                                              ; preds = %57
  %368 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %369 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %370 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %371 = call i32 @nl80211_new_station_event(%struct.wpa_driver_nl80211_data* %368, %struct.i802_bss* %369, %struct.nlattr** %370)
  br label %437

372:                                              ; preds = %57
  %373 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %374 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %375 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %376 = call i32 @nl80211_del_station_event(%struct.wpa_driver_nl80211_data* %373, %struct.i802_bss* %374, %struct.nlattr** %375)
  br label %437

377:                                              ; preds = %57
  %378 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %379 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %380 = call i32 @nl80211_rekey_offload_event(%struct.wpa_driver_nl80211_data* %378, %struct.nlattr** %379)
  br label %437

381:                                              ; preds = %57
  %382 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %383 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %384 = call i32 @nl80211_pmksa_candidate_event(%struct.wpa_driver_nl80211_data* %382, %struct.nlattr** %383)
  br label %437

385:                                              ; preds = %57
  %386 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %387 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %388 = call i32 @nl80211_client_probe_event(%struct.wpa_driver_nl80211_data* %386, %struct.nlattr** %387)
  br label %437

389:                                              ; preds = %57
  %390 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %391 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %392 = call i32 @nl80211_tdls_oper_event(%struct.wpa_driver_nl80211_data* %390, %struct.nlattr** %391)
  br label %437

393:                                              ; preds = %57
  %394 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %395 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %396 = call i32 @nl80211_connect_failed_event(%struct.wpa_driver_nl80211_data* %394, %struct.nlattr** %395)
  br label %437

397:                                              ; preds = %57
  %398 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %399 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %400 = call i32 @mlme_event_ft_event(%struct.wpa_driver_nl80211_data* %398, %struct.nlattr** %399)
  br label %437

401:                                              ; preds = %57
  %402 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %403 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %404 = call i32 @nl80211_radar_event(%struct.wpa_driver_nl80211_data* %402, %struct.nlattr** %403)
  br label %437

405:                                              ; preds = %57
  %406 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %407 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %408 = call i32 @nl80211_stop_ap(%struct.wpa_driver_nl80211_data* %406, %struct.nlattr** %407)
  br label %437

409:                                              ; preds = %57
  %410 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %411 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %412 = call i32 @nl80211_vendor_event(%struct.wpa_driver_nl80211_data* %410, %struct.nlattr** %411)
  br label %437

413:                                              ; preds = %57
  %414 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %415 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %416 = call i32 @nl80211_new_peer_candidate(%struct.wpa_driver_nl80211_data* %414, %struct.nlattr** %415)
  br label %437

417:                                              ; preds = %57
  %418 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %419 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %420 = call i32 @nl80211_port_authorized(%struct.wpa_driver_nl80211_data* %418, %struct.nlattr** %419)
  br label %437

421:                                              ; preds = %57
  %422 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %423 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %424 = call i32 @nl80211_sta_opmode_change_event(%struct.wpa_driver_nl80211_data* %422, %struct.nlattr** %423)
  br label %437

425:                                              ; preds = %57
  %426 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %427 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %428 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %429 = call i32 @mlme_event_dh_event(%struct.wpa_driver_nl80211_data* %426, %struct.i802_bss* %427, %struct.nlattr** %428)
  br label %437

430:                                              ; preds = %57
  %431 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %432 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @MSG_DEBUG, align 4
  %435 = load i32, i32* %5, align 4
  %436 = call i32 (i32, i32, i8*, ...) @wpa_dbg(i32 %433, i32 %434, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %435)
  br label %437

437:                                              ; preds = %30, %430, %425, %421, %417, %413, %409, %405, %401, %397, %393, %389, %385, %381, %377, %372, %367, %363, %359, %355, %351, %347, %343, %339, %324, %297, %270, %226, %186, %181, %140, %135, %90, %81, %75, %72
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @nl80211_command_to_string(i32) #1

declare dso_local i32 @wpa_driver_nl80211_set_mode(i32, i64) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_driver_nl80211_data*, i32) #1

declare dso_local i32 @send_scan_event(%struct.wpa_driver_nl80211_data*, i32, %struct.nlattr**, i32) #1

declare dso_local i32 @mlme_event(%struct.i802_bss*, i32, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*) #1

declare dso_local i32 @mlme_event_connect(%struct.wpa_driver_nl80211_data*, i32, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, i32*, i32*, i32*, %struct.nlattr*, i32*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*) #1

declare dso_local i32 @mlme_event_ch_switch(%struct.wpa_driver_nl80211_data*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, i32) #1

declare dso_local i32 @mlme_event_disconnect(%struct.wpa_driver_nl80211_data*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*) #1

declare dso_local i32 @mlme_event_michael_mic_failure(%struct.i802_bss*, %struct.nlattr**) #1

declare dso_local i32 @mlme_event_join_ibss(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @mlme_event_remain_on_channel(%struct.wpa_driver_nl80211_data*, i32, %struct.nlattr**) #1

declare dso_local i32 @nl80211_cqm_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_reg_change_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_reg_beacon_hint_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_new_station_event(%struct.wpa_driver_nl80211_data*, %struct.i802_bss*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_del_station_event(%struct.wpa_driver_nl80211_data*, %struct.i802_bss*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_rekey_offload_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_pmksa_candidate_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_client_probe_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_tdls_oper_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_connect_failed_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @mlme_event_ft_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_radar_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_stop_ap(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_vendor_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_new_peer_candidate(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_port_authorized(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @nl80211_sta_opmode_change_event(%struct.wpa_driver_nl80211_data*, %struct.nlattr**) #1

declare dso_local i32 @mlme_event_dh_event(%struct.wpa_driver_nl80211_data*, %struct.i802_bss*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
