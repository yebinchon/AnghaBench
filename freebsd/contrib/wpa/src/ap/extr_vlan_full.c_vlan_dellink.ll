; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_dellink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.hostapd_vlan* }
%struct.hostapd_vlan = type { i8*, i32, %struct.hostapd_vlan*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VLAN: vlan_dellink(%s)\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@MAX_NUM_TAGGED_VLAN = common dso_local global i32 0, align 4
@MAX_VLAN_ID = common dso_local global i32 0, align 4
@DYNAMIC_VLAN_NAMING_WITH_DEVICE = common dso_local global i32 0, align 4
@DVLAN_CLEAN_WLAN_PORT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"VLAN: Could not remove VLAN iface: %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlan_dellink(i8* %0, %struct.hostapd_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.hostapd_vlan*, align 8
  %6 = alloca %struct.hostapd_vlan*, align 8
  %7 = alloca %struct.hostapd_vlan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hostapd_data* %1, %struct.hostapd_data** %4, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %17, align 8
  store %struct.hostapd_vlan* %18, %struct.hostapd_vlan** %7, align 8
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  store %struct.hostapd_vlan* %22, %struct.hostapd_vlan** %6, align 8
  store %struct.hostapd_vlan* %22, %struct.hostapd_vlan** %5, align 8
  br label %23

23:                                               ; preds = %33, %2
  %24 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %25 = icmp ne %struct.hostapd_vlan* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %29 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @os_strcmp(i8* %27, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  store %struct.hostapd_vlan* %34, %struct.hostapd_vlan** %6, align 8
  %35 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %36 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %35, i32 0, i32 2
  %37 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %36, align 8
  store %struct.hostapd_vlan* %37, %struct.hostapd_vlan** %7, align 8
  br label %23

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %41 = icmp ne %struct.hostapd_vlan* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %245

43:                                               ; preds = %39
  %44 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %45 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %205

48:                                               ; preds = %43
  %49 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %50 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  %53 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %54 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %58 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* @IFNAMSIZ, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %11, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %143, %48
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @MAX_NUM_TAGGED_VLAN, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %69, %65
  %77 = phi i1 [ false, %65 ], [ %75, %69 ]
  br i1 %77, label %78, label %146

78:                                               ; preds = %76
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %117, label %86

86:                                               ; preds = %78
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %86
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MAX_VLAN_ID, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %109, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %104, %93, %86, %78
  br label %143

118:                                              ; preds = %104, %101
  %119 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %120 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @vlan_bridge_name(i8* %64, %struct.hostapd_data* %119, %struct.hostapd_vlan* %120, i32 %125)
  %127 = load i32, i32* @DYNAMIC_VLAN_NAMING_WITH_DEVICE, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %135 = call i32 @vlan_dellink_tagged(i32 %127, i8* %128, i8* %64, i32 %133, %struct.hostapd_data* %134)
  %136 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @vlan_put_bridge(i8* %64, %struct.hostapd_data* %136, i32 %141)
  br label %143

143:                                              ; preds = %118, %117
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %65

146:                                              ; preds = %76
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %175, label %149

149:                                              ; preds = %146
  %150 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %151 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %149
  %160 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %161 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DVLAN_CLEAN_WLAN_PORT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %168 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = call i32 @br_delif(i8* %171, i8* %172)
  br label %174

174:                                              ; preds = %166, %159, %149
  br label %203

175:                                              ; preds = %146
  %176 = load i32, i32* %9, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @MAX_VLAN_ID, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %178
  %183 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %184 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @vlan_bridge_name(i8* %64, %struct.hostapd_data* %183, %struct.hostapd_vlan* %184, i32 %185)
  %187 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %188 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @DVLAN_CLEAN_WLAN_PORT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %182
  %194 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %195 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @br_delif(i8* %64, i8* %196)
  br label %198

198:                                              ; preds = %193, %182
  %199 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @vlan_put_bridge(i8* %64, %struct.hostapd_data* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %178, %175
  br label %203

203:                                              ; preds = %202, %174
  %204 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %204)
  br label %205

205:                                              ; preds = %203, %43
  %206 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %207 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @if_nametoindex(i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  %212 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %213 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %214 = call i64 @vlan_if_remove(%struct.hostapd_data* %212, %struct.hostapd_vlan* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i32, i32* @MSG_ERROR, align 4
  %218 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %219 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* @errno, align 4
  %222 = call i32 @strerror(i32 %221)
  %223 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %220, i32 %222)
  br label %224

224:                                              ; preds = %216, %211, %205
  %225 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %226 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  %227 = icmp eq %struct.hostapd_vlan* %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %230 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %229, i32 0, i32 2
  %231 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %230, align 8
  %232 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %233 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %232, i32 0, i32 0
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  store %struct.hostapd_vlan* %231, %struct.hostapd_vlan** %235, align 8
  br label %242

236:                                              ; preds = %224
  %237 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %238 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %237, i32 0, i32 2
  %239 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %238, align 8
  %240 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %241 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %240, i32 0, i32 2
  store %struct.hostapd_vlan* %239, %struct.hostapd_vlan** %241, align 8
  br label %242

242:                                              ; preds = %236, %228
  %243 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %244 = call i32 @os_free(%struct.hostapd_vlan* %243)
  br label %245

245:                                              ; preds = %242, %42
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vlan_bridge_name(i8*, %struct.hostapd_data*, %struct.hostapd_vlan*, i32) #1

declare dso_local i32 @vlan_dellink_tagged(i32, i8*, i8*, i32, %struct.hostapd_data*) #1

declare dso_local i32 @vlan_put_bridge(i8*, %struct.hostapd_data*, i32) #1

declare dso_local i32 @br_delif(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @if_nametoindex(i8*) #1

declare dso_local i64 @vlan_if_remove(%struct.hostapd_data*, %struct.hostapd_vlan*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_free(%struct.hostapd_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
