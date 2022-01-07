; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_ieee802_11_rx_wnmsleep_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_ieee802_11_rx_wnmsleep_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i32 }
%struct.wnm_sleep_element = type { i32, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"WNM: Ignore WNM-Sleep Mode Response frame since WNM-Sleep Mode operation has not been requested\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"WNM-Sleep Mode Response token=%u key_len_total=%d\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"WNM: Too short frame for Key Data field\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"WNM: Invalid IE len %u\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"WNM: Element\00", align 1
@WLAN_EID_WNMSLEEP = common dso_local global i32 0, align 4
@WLAN_EID_TFS_RESP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"EID %d not recognized\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"No WNM-Sleep IE found\00", align 1
@WNM_STATUS_SLEEP_ACCEPT = common dso_local global i64 0, align 8
@WNM_STATUS_SLEEP_EXIT_ACCEPT_GTK_UPDATE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [66 x i8] c"Successfully recv WNM-Sleep Response frame (action=%d, intval=%d)\00", align 1
@WNM_SLEEP_MODE_ENTER = common dso_local global i32 0, align 4
@WNM_SLEEP_MODE_EXIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"Reject recv WNM-Sleep Response frame (action=%d, intval=%d)\00", align 1
@WNM_SLEEP_ENTER_FAIL = common dso_local global i32 0, align 4
@WNM_SLEEP_EXIT_FAIL = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_EXT_OCV_OCI = common dso_local global i32 0, align 4
@ocv_errorstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i32)* @ieee802_11_rx_wnmsleep_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_11_rx_wnmsleep_resp(%struct.wpa_supplicant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wnm_sleep_element*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %7, align 8
  store %struct.wnm_sleep_element* null, %struct.wnm_sleep_element** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  br label %210

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %210

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i64 @WPA_GET_LE16(i32* %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %210

45:                                               ; preds = %26
  %46 = load i64, i64* %8, align 8
  %47 = add i64 3, %46
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %116, %45
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = add nsw i64 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %122

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 2, %65
  %67 = sext i32 %66 to i64
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %7, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = icmp sgt i64 %67, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %61
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %122

82:                                               ; preds = %61
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 2, %85
  %87 = call i32 @wpa_hexdump(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %84, i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @WLAN_EID_WNMSLEEP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = icmp sge i32 %93, 4
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %7, align 8
  %97 = bitcast i32* %96 to %struct.wnm_sleep_element*
  store %struct.wnm_sleep_element* %97, %struct.wnm_sleep_element** %9, align 8
  br label %116

98:                                               ; preds = %92, %82
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WLAN_EID_TFS_RESP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i32*, i32** %7, align 8
  store i32* %107, i32** %10, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i32*, i32** %7, align 8
  store i32* %109, i32** %11, align 8
  br label %115

110:                                              ; preds = %98
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %110, %108
  br label %116

116:                                              ; preds = %115, %95
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 2
  %119 = load i32*, i32** %7, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %7, align 8
  br label %50

122:                                              ; preds = %78, %50
  %123 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %124 = icmp ne %struct.wnm_sleep_element* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %210

128:                                              ; preds = %122
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %130 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %132 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WNM_STATUS_SLEEP_ACCEPT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %128
  %137 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %138 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @WNM_STATUS_SLEEP_EXIT_ACCEPT_GTK_UPDATE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %136, %128
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %145 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %148 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %146, i64 %149)
  %151 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %152 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @WNM_SLEEP_MODE_ENTER, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %142
  %157 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @wnm_sleep_mode_enter_success(%struct.wpa_supplicant* %157, i32* %158, i32* %159)
  br label %173

161:                                              ; preds = %142
  %162 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %163 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @WNM_SLEEP_MODE_EXIT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @wnm_sleep_mode_exit_success(%struct.wpa_supplicant* %168, i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %167, %161
  br label %173

173:                                              ; preds = %172, %156
  br label %210

174:                                              ; preds = %136
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %177 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %180 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %175, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %178, i64 %181)
  %183 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %184 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @WNM_SLEEP_MODE_ENTER, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %174
  %189 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %190 = load i32, i32* @WNM_SLEEP_ENTER_FAIL, align 4
  %191 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %192 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @wpa_drv_wnm_oper(%struct.wpa_supplicant* %189, i32 %190, i32 %193, i32* null, i32* null)
  br label %209

195:                                              ; preds = %174
  %196 = load %struct.wnm_sleep_element*, %struct.wnm_sleep_element** %9, align 8
  %197 = getelementptr inbounds %struct.wnm_sleep_element, %struct.wnm_sleep_element* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @WNM_SLEEP_MODE_EXIT, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %203 = load i32, i32* @WNM_SLEEP_EXIT_FAIL, align 4
  %204 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %205 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @wpa_drv_wnm_oper(%struct.wpa_supplicant* %202, i32 %203, i32 %206, i32* null, i32* null)
  br label %208

208:                                              ; preds = %201, %195
  br label %209

209:                                              ; preds = %208, %188
  br label %210

210:                                              ; preds = %19, %25, %42, %125, %209, %173
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wnm_sleep_mode_enter_success(%struct.wpa_supplicant*, i32*, i32*) #1

declare dso_local i32 @wnm_sleep_mode_exit_success(%struct.wpa_supplicant*, i32*, i64) #1

declare dso_local i32 @wpa_drv_wnm_oper(%struct.wpa_supplicant*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
