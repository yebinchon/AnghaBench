; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_start_dev_pw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_start_dev_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.wpa_ssid = type { i32, i32, i32, i8*, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@WPS_OOB_PUBKEY_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS: Could not add network\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" pkhash=\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\22pin=%s dev_pw_id=%u%s\22\00", align 1
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"\22dev_pw_id=%u%s\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"WPS: Could not generate PIN\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\22pin=%08d dev_pw_id=%u%s\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"phase1\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"WPS: Failed to set phase1 '%s'\00", align 1
@WPS_PBC_WALK_TIME = common dso_local global i32 0, align 4
@wpas_wps_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i8*, i32, i32, i8*, i8*, i64, i32)* @wpas_wps_start_dev_pw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_wps_start_dev_pw(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i8* %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpa_supplicant*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.wpa_ssid*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  %28 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 128, %29
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %34 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %35, 10
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %26, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %40 = call i32 @wpas_clear_wps(%struct.wpa_supplicant* %39)
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %10
  %44 = load i8*, i8** %14, align 8
  %45 = call i64 @is_zero_ether_addr(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* null, i8** %14, align 8
  br label %48

48:                                               ; preds = %47, %43, %10
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call %struct.wpa_ssid* @wpas_wps_add_network(%struct.wpa_supplicant* %49, i32 0, i8* %50, i8* %51)
  store %struct.wpa_ssid* %52, %struct.wpa_ssid** %22, align 8
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %54 = icmp eq %struct.wpa_ssid* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %169

58:                                               ; preds = %48
  %59 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %60 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %63 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %68 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %67, i32 0, i32 2
  store i32 2, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i8*, i8** %19, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i64, i64* %20, align 8
  %74 = call i8* @os_malloc(i64 %73)
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %76 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %78 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %83 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @os_memcpy(i8* %84, i8* %85, i32 %87)
  %89 = load i64, i64* %20, align 8
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %72
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i8*, i8** %18, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = call i32 @os_memcpy(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %98 = getelementptr inbounds i8, i8* %38, i64 8
  %99 = sub i64 %37, 8
  %100 = trunc i64 %99 to i32
  %101 = load i8*, i8** %18, align 8
  %102 = load i32, i32* @WPS_OOB_PUBKEY_HASH_LEN, align 4
  %103 = call i32 @wpa_snprintf_hex_uppercase(i8* %98, i32 %100, i8* %101, i32 %102)
  br label %106

104:                                              ; preds = %93
  %105 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %105, align 16
  br label %106

106:                                              ; preds = %104, %96
  %107 = load i8*, i8** %15, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = trunc i64 %31 to i32
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %33, i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 %112, i8* %38)
  br label %137

114:                                              ; preds = %106
  %115 = load i8*, i8** %15, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @DEV_PW_NFC_CONNECTION_HANDOVER, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = trunc i64 %31 to i32
  %123 = load i32, i32* %17, align 4
  %124 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %33, i32 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %123, i8* %38)
  br label %136

125:                                              ; preds = %117, %114
  %126 = call i64 @wps_generate_pin(i32* %25)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %169

131:                                              ; preds = %125
  %132 = trunc i64 %31 to i32
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %33, i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %134, i8* %38)
  br label %136

136:                                              ; preds = %131, %121
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %139 = call i64 @wpa_config_set(%struct.wpa_ssid* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %33, i32 0)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %169

144:                                              ; preds = %137
  %145 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %146 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %154 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  br label %156

156:                                              ; preds = %149, %144
  %157 = load i32, i32* @WPS_PBC_WALK_TIME, align 4
  %158 = load i32, i32* @wpas_wps_timeout, align 4
  %159 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %160 = call i32 @eloop_register_timeout(i32 %157, i32 0, i32 %158, %struct.wpa_supplicant* %159, i32* null)
  %161 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %162 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %164 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = load i32, i32* %21, align 4
  %167 = call i32 @wpas_wps_reassoc(%struct.wpa_supplicant* %163, %struct.wpa_ssid* %164, i8* %165, i32 %166)
  %168 = load i32, i32* %25, align 4
  store i32 %168, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %169

169:                                              ; preds = %156, %141, %128, %55
  %170 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %11, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpas_clear_wps(%struct.wpa_supplicant*) #2

declare dso_local i64 @is_zero_ether_addr(i8*) #2

declare dso_local %struct.wpa_ssid* @wpas_wps_add_network(%struct.wpa_supplicant*, i32, i8*, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i8* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local i32 @wpa_snprintf_hex_uppercase(i8*, i32, i8*, i32) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @wps_generate_pin(i32*) #2

declare dso_local i64 @wpa_config_set(%struct.wpa_ssid*, i8*, i8*, i32) #2

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @wpas_wps_reassoc(%struct.wpa_supplicant*, %struct.wpa_ssid*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
