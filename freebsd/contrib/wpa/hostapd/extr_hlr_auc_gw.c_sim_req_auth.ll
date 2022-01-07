; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_sim_req_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_sim_req_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { i32, i32 }
%struct.gsm_triplet = type { i32*, i32*, i32*, i32 }

@EAP_SIM_MAX_CHAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SIM-RESP-AUTH %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"No GSM triplets found for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" FAILURE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @sim_req_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sim_req_auth(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.milenage_parameters*, align 8
  %15 = alloca %struct.gsm_triplet*, align 8
  %16 = alloca [16 x i32], align 16
  %17 = alloca [4 x i32], align 16
  %18 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %11, align 8
  store i8 0, i8* %26, align 1
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @EAP_SIM_MAX_CHAL, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %25
  %37 = load i32, i32* @EAP_SIM_MAX_CHAL, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @EAP_SIM_MAX_CHAL, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = icmp sge i64 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %41
  store i32 -1, i32* %4, align 4
  br label %261

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call %struct.milenage_parameters* @get_milenage(i8* %72)
  store %struct.milenage_parameters* %73, %struct.milenage_parameters** %14, align 8
  %74 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %75 = icmp ne %struct.milenage_parameters* %74, null
  br i1 %75, label %76, label %144

76:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %139, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %142

81:                                               ; preds = %77
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %83 = call i64 @random_get_bytes(i32* %82, i32 16)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %261

86:                                               ; preds = %81
  %87 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %88 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %91 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  %96 = call i32 @gsm_milenage(i32 %89, i32 %92, i32* %93, i32* %94, i32* %95)
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %12, align 8
  store i8 32, i8* %97, align 1
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  %107 = call i32 @wpa_snprintf_hex(i8* %99, i32 %105, i32* %106, i32 8)
  %108 = load i8*, i8** %12, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %12, align 8
  store i8 58, i8* %111, align 1
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %121 = call i32 @wpa_snprintf_hex(i8* %113, i32 %119, i32* %120, i32 4)
  %122 = load i8*, i8** %12, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %12, align 8
  store i8 58, i8* %125, align 1
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %135 = call i32 @wpa_snprintf_hex(i8* %127, i32 %133, i32* %134, i32 16)
  %136 = load i8*, i8** %12, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %12, align 8
  br label %139

139:                                              ; preds = %86
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %77

142:                                              ; preds = %77
  %143 = load i8*, i8** %12, align 8
  store i8 0, i8* %143, align 1
  store i32 0, i32* %4, align 4
  br label %261

144:                                              ; preds = %67
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %212, %162, %144
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8*, i8** %5, align 8
  %151 = call %struct.gsm_triplet* @get_gsm_triplet(i8* %150)
  store %struct.gsm_triplet* %151, %struct.gsm_triplet** %15, align 8
  %152 = icmp ne %struct.gsm_triplet* %151, null
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i1 [ false, %145 ], [ %152, %149 ]
  br i1 %154, label %155, label %229

155:                                              ; preds = %153
  %156 = load %struct.gsm_triplet*, %struct.gsm_triplet** %15, align 8
  %157 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = call i64 @strcmp(i32 %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %145

163:                                              ; preds = %155
  %164 = load i8*, i8** %12, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = icmp ult i8* %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %12, align 8
  store i8 32, i8* %168, align 1
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %12, align 8
  %172 = load i8*, i8** %13, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = load %struct.gsm_triplet*, %struct.gsm_triplet** %15, align 8
  %179 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @wpa_snprintf_hex(i8* %171, i32 %177, i32* %180, i32 8)
  %182 = load i8*, i8** %12, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %12, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = icmp ult i8* %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %170
  %189 = load i8*, i8** %12, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %12, align 8
  store i8 58, i8* %189, align 1
  br label %191

191:                                              ; preds = %188, %170
  %192 = load i8*, i8** %12, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = load %struct.gsm_triplet*, %struct.gsm_triplet** %15, align 8
  %200 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @wpa_snprintf_hex(i8* %192, i32 %198, i32* %201, i32 4)
  %203 = load i8*, i8** %12, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %12, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = icmp ult i8* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %191
  %210 = load i8*, i8** %12, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %12, align 8
  store i8 58, i8* %210, align 1
  br label %212

212:                                              ; preds = %209, %191
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = ptrtoint i8* %214 to i64
  %217 = ptrtoint i8* %215 to i64
  %218 = sub i64 %216, %217
  %219 = trunc i64 %218 to i32
  %220 = load %struct.gsm_triplet*, %struct.gsm_triplet** %15, align 8
  %221 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @wpa_snprintf_hex(i8* %213, i32 %219, i32* %222, i32 16)
  %224 = load i8*, i8** %12, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %12, align 8
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %145

229:                                              ; preds = %153
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %260

232:                                              ; preds = %229
  %233 = load i8*, i8** %5, align 8
  %234 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %233)
  %235 = load i8*, i8** %12, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  %242 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %235, i32 %241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %232
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = load i8*, i8** %13, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = icmp sge i64 %247, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %245, %232
  store i32 -1, i32* %4, align 4
  br label %261

255:                                              ; preds = %245
  %256 = load i32, i32* %10, align 4
  %257 = load i8*, i8** %12, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8* %259, i8** %12, align 8
  br label %260

260:                                              ; preds = %255, %229
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %260, %254, %142, %85, %66
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.milenage_parameters* @get_milenage(i8*) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i32 @gsm_milenage(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32*, i32) #1

declare dso_local %struct.gsm_triplet* @get_gsm_triplet(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
