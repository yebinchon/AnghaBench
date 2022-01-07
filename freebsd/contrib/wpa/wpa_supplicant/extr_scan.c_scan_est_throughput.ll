; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_scan_est_throughput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_scan_est_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_scan_res = type { i32, i32 }

@CAPAB_HT = common dso_local global i32 0, align 4
@CAPAB_HT40 = common dso_local global i32 0, align 4
@CAPAB_VHT = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAP = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK = common dso_local global i32 0, align 4
@WLAN_EID_VHT_CAP = common dso_local global i32 0, align 4
@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4
@VHT_OPMODE_CHANNEL_WIDTH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_est_throughput(%struct.wpa_supplicant* %0, %struct.wpa_scan_res* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_scan_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_scan_res* %1, %struct.wpa_scan_res** %4, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %250

22:                                               ; preds = %2
  %23 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %24 = call i32 @wpa_scan_get_max_rate(%struct.wpa_scan_res* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 2, i32* %6, align 4
  br label %103

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 4, i32* %6, align 4
  br label %102

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 12
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 12, i32* %6, align 4
  br label %101

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 18
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 18, i32* %6, align 4
  br label %100

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 24
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 7
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 24, i32* %6, align 4
  br label %99

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %6, align 4
  %61 = icmp sgt i32 %60, 36
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 36, i32* %6, align 4
  br label %98

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 48
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 11
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 48, i32* %6, align 4
  br label %97

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 72
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 15
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 72, i32* %6, align 4
  br label %96

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 96
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 19
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 96, i32* %6, align 4
  br label %95

87:                                               ; preds = %83, %80
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 108
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 21
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 108, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %90, %87
  br label %95

95:                                               ; preds = %94, %86
  br label %96

96:                                               ; preds = %95, %79
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %65
  br label %99

99:                                               ; preds = %98, %58
  br label %100

100:                                              ; preds = %99, %51
  br label %101

101:                                              ; preds = %100, %44
  br label %102

102:                                              ; preds = %101, %37
  br label %103

103:                                              ; preds = %102, %30
  %104 = load i32, i32* %6, align 4
  %105 = mul nsw i32 %104, 500
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @CAPAB_HT, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @CAPAB_HT40, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @CAPAB_VHT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %113, %109, %103
  %118 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %119 = load i32, i32* @WLAN_EID_HT_CAP, align 4
  %120 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %118, i32 %119)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @max_ht20_rate(i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %123
  br label %132

132:                                              ; preds = %131, %117
  br label %133

133:                                              ; preds = %132, %113
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @CAPAB_HT40, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @CAPAB_VHT, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %137, %133
  %142 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %143 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %144 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %142, i32 %143)
  store i32* %144, i32** %7, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %168

147:                                              ; preds = %141
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sge i32 %150, 2
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @max_ht40_rate(i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ugt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %165, %159
  br label %168

168:                                              ; preds = %167, %152, %147, %141
  br label %169

169:                                              ; preds = %168, %137
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @CAPAB_VHT, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %246

173:                                              ; preds = %169
  %174 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %175 = load i32, i32* @WLAN_EID_VHT_CAP, align 4
  %176 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %174, i32 %175)
  store i32* %176, i32** %7, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %245

179:                                              ; preds = %173
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @max_ht20_rate(i32 %180)
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ugt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %179
  %189 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %190 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %191 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %189, i32 %190)
  store i32* %191, i32** %7, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %216

194:                                              ; preds = %188
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp sge i32 %197, 2
  br i1 %198, label %199, label %216

199:                                              ; preds = %194
  %200 = load i32*, i32** %7, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %199
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @max_ht40_rate(i32 %207)
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ugt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %213, %206
  br label %216

216:                                              ; preds = %215, %199, %194, %188
  %217 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %218 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %219 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %217, i32 %218)
  store i32* %219, i32** %7, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %244

222:                                              ; preds = %216
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp sge i32 %225, 1
  br i1 %226, label %227, label %244

227:                                              ; preds = %222
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @VHT_OPMODE_CHANNEL_WIDTH_MASK, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %227
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @max_vht80_rate(i32 %235)
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp ugt i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = load i32, i32* %9, align 4
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %241, %234
  br label %244

244:                                              ; preds = %243, %227, %222, %216
  br label %245

245:                                              ; preds = %244, %173
  br label %246

246:                                              ; preds = %245, %169
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %249 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %246, %21
  ret void
}

declare dso_local i32 @wpa_scan_get_max_rate(%struct.wpa_scan_res*) #1

declare dso_local i32* @wpa_scan_get_ie(%struct.wpa_scan_res*, i32) #1

declare dso_local i32 @max_ht20_rate(i32) #1

declare dso_local i32 @max_ht40_rate(i32) #1

declare dso_local i32 @max_vht80_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
