; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_wpa_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_wpa_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NDIS: verifying driver WPA capability\00", align 1
@Ndis802_11AuthModeWPA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"NDIS: WPA key management supported\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA = common dso_local global i32 0, align 4
@Ndis802_11AuthModeWPAPSK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"NDIS: WPA-PSK key management supported\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK = common dso_local global i32 0, align 4
@Ndis802_11Encryption3Enabled = common dso_local global i32 0, align 4
@Ndis802_11Encryption3KeyAbsent = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"NDIS: CCMP encryption supported\00", align 1
@WPA_DRIVER_CAPA_ENC_CCMP = common dso_local global i32 0, align 4
@Ndis802_11Encryption2Enabled = common dso_local global i32 0, align 4
@Ndis802_11Encryption2KeyAbsent = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"NDIS: TKIP encryption supported\00", align 1
@WPA_DRIVER_CAPA_ENC_TKIP = common dso_local global i32 0, align 4
@Ndis802_11Encryption1Enabled = common dso_local global i32 0, align 4
@Ndis802_11Encryption1KeyAbsent = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"NDIS: WEP encryption supported\00", align 1
@WPA_DRIVER_CAPA_ENC_WEP40 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP104 = common dso_local global i32 0, align 4
@Ndis802_11AuthModeShared = common dso_local global i64 0, align 8
@WPA_DRIVER_AUTH_SHARED = common dso_local global i32 0, align 4
@Ndis802_11AuthModeOpen = common dso_local global i64 0, align 8
@WPA_DRIVER_AUTH_OPEN = common dso_local global i32 0, align 4
@Ndis802_11EncryptionDisabled = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"NDIS: driver supports WPA\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"NDIS: no WPA support found\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"NDIS: driver capabilities: key_mgmt 0x%x enc 0x%x auth 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_ndis_data*)* @wpa_driver_ndis_get_wpa_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_ndis_get_wpa_capability(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca %struct.wpa_driver_ndis_data*, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = call i32 (i32, i8*, ...) @wpa_printf(i32 %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %6 = load i64, i64* @Ndis802_11AuthModeWPA, align 8
  %7 = call i64 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %5, i64 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %11 = call i64 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data* %10)
  %12 = load i64, i64* @Ndis802_11AuthModeWPA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %18 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %14, %9, %1
  %24 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %25 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %26 = call i64 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %24, i64 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %30 = call i64 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data* %29)
  %31 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 4
  %37 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %33, %28, %23
  %43 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %44 = load i32, i32* @Ndis802_11Encryption3Enabled, align 4
  %45 = call i64 @ndis_set_encr_status(%struct.wpa_driver_ndis_data* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %49 = call i64 @ndis_get_encr_status(%struct.wpa_driver_ndis_data* %48)
  %50 = load i64, i64* @Ndis802_11Encryption3KeyAbsent, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %56 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %57 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %47, %42
  %62 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %63 = load i32, i32* @Ndis802_11Encryption2Enabled, align 4
  %64 = call i64 @ndis_set_encr_status(%struct.wpa_driver_ndis_data* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %68 = call i64 @ndis_get_encr_status(%struct.wpa_driver_ndis_data* %67)
  %69 = load i64, i64* @Ndis802_11Encryption2KeyAbsent, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @WPA_DRIVER_CAPA_ENC_TKIP, align 4
  %75 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %76 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %66, %61
  %81 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %82 = load i32, i32* @Ndis802_11Encryption1Enabled, align 4
  %83 = call i64 @ndis_set_encr_status(%struct.wpa_driver_ndis_data* %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %87 = call i64 @ndis_get_encr_status(%struct.wpa_driver_ndis_data* %86)
  %88 = load i64, i64* @Ndis802_11Encryption1KeyAbsent, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP40, align 4
  %94 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP104, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %97 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %90, %85, %80
  %102 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %103 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %104 = call i64 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %102, i64 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %108 = call i64 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data* %107)
  %109 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* @WPA_DRIVER_AUTH_SHARED, align 4
  %113 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %114 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %106, %101
  %119 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %120 = load i64, i64* @Ndis802_11AuthModeOpen, align 8
  %121 = call i64 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %119, i64 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %125 = call i64 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data* %124)
  %126 = load i64, i64* @Ndis802_11AuthModeOpen, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* @WPA_DRIVER_AUTH_OPEN, align 4
  %130 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %131 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %123, %118
  %136 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %137 = load i32, i32* @Ndis802_11EncryptionDisabled, align 4
  %138 = call i64 @ndis_set_encr_status(%struct.wpa_driver_ndis_data* %136, i32 %137)
  %139 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %140 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %135
  %147 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %148 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @WPA_DRIVER_CAPA_ENC_TKIP, align 4
  %152 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %146
  %157 = load i32, i32* @MSG_DEBUG, align 4
  %158 = call i32 (i32, i8*, ...) @wpa_printf(i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %159 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %160 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  br label %164

161:                                              ; preds = %146, %135
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32, i32* @MSG_DEBUG, align 4
  %166 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %167 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %171 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %175 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, ...) @wpa_printf(i32 %165, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %169, i32 %173, i32 %177)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data*, i64) #1

declare dso_local i64 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data*) #1

declare dso_local i64 @ndis_set_encr_status(%struct.wpa_driver_ndis_data*, i32) #1

declare dso_local i64 @ndis_get_encr_status(%struct.wpa_driver_ndis_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
