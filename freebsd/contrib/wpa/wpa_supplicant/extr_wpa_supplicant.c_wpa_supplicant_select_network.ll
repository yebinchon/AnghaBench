; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_select_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_select_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, %struct.wpa_ssid*, i64, i32, i32*, i32, %struct.wpa_ssid*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, i64, i64, i64, %struct.wpa_ssid* }

@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Already associated with the selected network - do nothing\00", align 1
@WPAS_MODE_MESH = common dso_local global i64 0, align 8
@NORMAL_SCAN_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_select_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = icmp ne %struct.wpa_ssid* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 9
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %15 = icmp ne %struct.wpa_ssid* %11, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 9
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %18, align 8
  %20 = icmp ne %struct.wpa_ssid* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %33 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %31, i32 %32)
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %16, %10, %2
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %36 = icmp ne %struct.wpa_ssid* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %40 = call i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant* %38, %struct.wpa_ssid* %39, i32 1)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 10
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %45, align 8
  store %struct.wpa_ssid* %46, %struct.wpa_ssid** %5, align 8
  br label %47

47:                                               ; preds = %96, %41
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %49 = icmp ne %struct.wpa_ssid* %48, null
  br i1 %49, label %50, label %100

50:                                               ; preds = %47
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %96

57:                                               ; preds = %50
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %59 = icmp ne %struct.wpa_ssid* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %62 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  %68 = zext i1 %67 to i32
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi i32 [ %68, %60 ], [ 0, %69 ]
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %78 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %83 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %84 = call i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant* %82, %struct.wpa_ssid* %83, i32 0)
  br label %85

85:                                               ; preds = %81, %76, %70
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %88 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %93 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %94 = call i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant* %92, %struct.wpa_ssid* %93)
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %98 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %97, i32 0, i32 4
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %98, align 8
  store %struct.wpa_ssid* %99, %struct.wpa_ssid** %5, align 8
  br label %47

100:                                              ; preds = %47
  %101 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %102 = icmp ne %struct.wpa_ssid* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %106 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %105, i32 0, i32 9
  %107 = load %struct.wpa_ssid*, %struct.wpa_ssid** %106, align 8
  %108 = icmp eq %struct.wpa_ssid* %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 9
  %112 = load %struct.wpa_ssid*, %struct.wpa_ssid** %111, align 8
  %113 = icmp ne %struct.wpa_ssid* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %116 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 @wpa_printf(i32 %121, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %195

123:                                              ; preds = %114, %109, %103, %100
  %124 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %125 = icmp ne %struct.wpa_ssid* %124, null
  br i1 %125, label %126, label %152

126:                                              ; preds = %123
  %127 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %128 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %129 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %128, i32 0, i32 9
  store %struct.wpa_ssid* %127, %struct.wpa_ssid** %129, align 8
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @eapol_sm_notify_config(i32 %132, i32* null, i32* null)
  %134 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %135 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @WPAS_MODE_MESH, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  br label %142

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi %struct.wpa_ssid* [ %140, %139 ], [ null, %141 ]
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %145 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %144, i32 0, i32 4
  store %struct.wpa_ssid* %143, %struct.wpa_ssid** %145, align 8
  %146 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %147 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %146, i32 0, i32 7
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @os_free(i32* %148)
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 7
  store i32* null, i32** %151, align 8
  br label %155

152:                                              ; preds = %123
  %153 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %154 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %153, i32 0, i32 4
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %154, align 8
  br label %155

155:                                              ; preds = %152, %142
  %156 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %157 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %156, i32 0, i32 6
  store i32 0, i32* %157, align 8
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %159 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %158, i32 0, i32 2
  store i32 1, i32* %159, align 4
  %160 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %161 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  %162 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %163 = icmp ne %struct.wpa_ssid* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %166 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %165, i32 0, i32 3
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %155
  %168 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %169 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %168, i32 0, i32 4
  %170 = load %struct.wpa_ssid*, %struct.wpa_ssid** %169, align 8
  %171 = icmp ne %struct.wpa_ssid* %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %174 = call i32 @wpa_supplicant_fast_associate(%struct.wpa_supplicant* %173)
  %175 = icmp ne i32 %174, 1
  br i1 %175, label %176, label %188

176:                                              ; preds = %172, %167
  %177 = load i32, i32* @NORMAL_SCAN_REQ, align 4
  %178 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %179 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  %180 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %181 = call i32 @wpas_scan_reset_sched_scan(%struct.wpa_supplicant* %180)
  %182 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 100000, i32 0
  %187 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %182, i32 0, i32 %186)
  br label %188

188:                                              ; preds = %176, %172
  %189 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %190 = icmp ne %struct.wpa_ssid* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %193 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %194 = call i32 @wpas_notify_network_selected(%struct.wpa_supplicant* %192, %struct.wpa_ssid* %193)
  br label %195

195:                                              ; preds = %120, %191, %188
  ret void
}

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32) #1

declare dso_local i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_supplicant_fast_associate(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_scan_reset_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpas_notify_network_selected(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
