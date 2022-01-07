; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_result_compar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_result_compar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_res = type { i32, i32, i32, i32, i64, i32, i32 }

@WPA_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@IEEE80211_CAP_PRIVACY = common dso_local global i32 0, align 4
@WPA_SCAN_LEVEL_DBM = common dso_local global i32 0, align 4
@GREAT_SNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @wpa_scan_result_compar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_scan_result_compar(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_scan_res**, align 8
  %7 = alloca %struct.wpa_scan_res**, align 8
  %8 = alloca %struct.wpa_scan_res*, align 8
  %9 = alloca %struct.wpa_scan_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.wpa_scan_res**
  store %struct.wpa_scan_res** %17, %struct.wpa_scan_res*** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.wpa_scan_res**
  store %struct.wpa_scan_res** %19, %struct.wpa_scan_res*** %7, align 8
  %20 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %6, align 8
  %21 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %20, align 8
  store %struct.wpa_scan_res* %21, %struct.wpa_scan_res** %8, align 8
  %22 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %7, align 8
  %23 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %22, align 8
  store %struct.wpa_scan_res* %23, %struct.wpa_scan_res** %9, align 8
  %24 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %25 = load i32, i32* @WPA_IE_VENDOR_TYPE, align 4
  %26 = call i32* @wpa_scan_get_vendor_ie(%struct.wpa_scan_res* %24, i32 %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %30 = load i32, i32* @WLAN_EID_RSN, align 4
  %31 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %29, i32 %30)
  %32 = icmp ne i32* %31, null
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ true, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %37 = load i32, i32* @WPA_IE_VENDOR_TYPE, align 4
  %38 = call i32* @wpa_scan_get_vendor_ie(%struct.wpa_scan_res* %36, i32 %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %42 = load i32, i32* @WLAN_EID_RSN, align 4
  %43 = call i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %41, i32 %42)
  %44 = icmp ne i32* %43, null
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi i1 [ true, %33 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %241

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %241

61:                                               ; preds = %57, %54
  %62 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %63 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IEEE80211_CAP_PRIVACY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %70 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IEEE80211_CAP_PRIVACY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %241

76:                                               ; preds = %68, %61
  %77 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %78 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IEEE80211_CAP_PRIVACY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %85 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IEEE80211_CAP_PRIVACY, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %241

91:                                               ; preds = %83, %76
  %92 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %93 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %96 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %94, %97
  %99 = load i32, i32* @WPA_SCAN_LEVEL_DBM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %91
  %103 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %104 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %14, align 4
  %106 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %107 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @GREAT_SNR, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %113 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  br label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @GREAT_SNR, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %114, %111 ], [ %116, %115 ]
  store i32 %118, i32* %12, align 4
  %119 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %120 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %15, align 4
  %122 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %123 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @GREAT_SNR, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %129 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  br label %133

131:                                              ; preds = %117
  %132 = load i32, i32* @GREAT_SNR, align 4
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi i32 [ %130, %127 ], [ %132, %131 ]
  store i32 %134, i32* %13, align 4
  br label %142

135:                                              ; preds = %91
  %136 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %137 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %14, align 4
  store i32 %138, i32* %12, align 4
  %139 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %140 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %15, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %135, %133
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @abs(i32 %151) #3
  %153 = icmp slt i32 %152, 7
  br i1 %153, label %154, label %173

154:                                              ; preds = %148
  %155 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %156 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %159 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %157, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %164 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %168 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = sub nsw i32 %166, %170
  store i32 %171, i32* %3, align 4
  br label %241

172:                                              ; preds = %154
  br label %173

173:                                              ; preds = %172, %148, %145, %142
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %12, align 4
  %182 = sub nsw i32 %180, %181
  %183 = call i32 @abs(i32 %182) #3
  %184 = icmp slt i32 %183, 5
  br i1 %184, label %205, label %185

185:                                              ; preds = %179, %176, %173
  %186 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %187 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %225

190:                                              ; preds = %185
  %191 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %192 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %190
  %196 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %197 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %200 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %198, %201
  %203 = call i32 @abs(i32 %202) #3
  %204 = icmp slt i32 %203, 10
  br i1 %204, label %205, label %225

205:                                              ; preds = %195, %179
  %206 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %207 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @IS_5GHZ(i32 %208)
  %210 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %211 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @IS_5GHZ(i32 %212)
  %214 = xor i32 %209, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %205
  %217 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %218 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @IS_5GHZ(i32 %219)
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 -1, i32 1
  store i32 %223, i32* %3, align 4
  br label %241

224:                                              ; preds = %205
  br label %225

225:                                              ; preds = %224, %195, %190, %185
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %231 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %8, align 8
  %234 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %232, %235
  store i32 %236, i32* %3, align 4
  br label %241

237:                                              ; preds = %225
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %14, align 4
  %240 = sub nsw i32 %238, %239
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %237, %229, %216, %162, %90, %75, %60, %53
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32* @wpa_scan_get_vendor_ie(%struct.wpa_scan_res*, i32) #1

declare dso_local i32* @wpa_scan_get_ie(%struct.wpa_scan_res*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @IS_5GHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
