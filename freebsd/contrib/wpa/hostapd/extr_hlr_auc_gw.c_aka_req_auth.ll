; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_aka_req_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_aka_req_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { i32*, i32, i32, i32, i32 }

@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@EAP_AKA_AUTN_LEN = common dso_local global i32 0, align 4
@EAP_AKA_IK_LEN = common dso_local global i32 0, align 4
@EAP_AKA_CK_LEN = common dso_local global i32 0, align 4
@EAP_AKA_RES_MAX_LEN = common dso_local global i32 0, align 4
@sqn_changes = common dso_local global i32 0, align 4
@stdout_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"AKA: Milenage with SQN=%02x%02x%02x%02x%02x%02x\0A\00", align 1
@EAP_AKA_RES_MIN_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown IMSI: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"AKA-RESP-AUTH %s \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @aka_req_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aka_req_auth(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.milenage_parameters*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @EAP_AKA_AUTN_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load i32, i32* @EAP_AKA_IK_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %31 = load i32, i32* @EAP_AKA_CK_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load i32, i32* @EAP_AKA_RES_MAX_LEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  store i32 0, i32* %19, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.milenage_parameters* @get_milenage(i8* %37)
  store %struct.milenage_parameters* %38, %struct.milenage_parameters** %18, align 8
  %39 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %40 = icmp ne %struct.milenage_parameters* %39, null
  br i1 %40, label %41, label %125

41:                                               ; preds = %3
  %42 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %43 = call i64 @random_get_bytes(i32* %24, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %260

46:                                               ; preds = %41
  %47 = load i32, i32* @EAP_AKA_RES_MAX_LEN, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %16, align 8
  %49 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %50 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @inc_sqn(i32* %51)
  store i32 1, i32* @sqn_changes, align 4
  %53 = load i64, i64* @stdout_debug, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %46
  %56 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %57 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %62 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %67 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %72 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %77 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %82 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %65, i32 %70, i32 %75, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %55, %46
  %88 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %89 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %92 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %95 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %98 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @milenage_generate(i32 %90, i32 %93, i32 %96, i32* %99, i32* %24, i32* %27, i32* %30, i32* %33, i32* %36, i64* %16)
  %101 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %102 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @EAP_AKA_RES_MIN_LEN, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %87
  %107 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %108 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @EAP_AKA_RES_MAX_LEN, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %114 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %16, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  %121 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %16, align 8
  br label %124

124:                                              ; preds = %119, %112, %106, %87
  br label %128

125:                                              ; preds = %3
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  store i32 1, i32* %19, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i8*, i8** %6, align 8
  store i8* %129, i8** %8, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %133, i32 %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %128
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = load i8*, i8** %9, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = icmp sge i64 %146, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %144, %128
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %260

154:                                              ; preds = %144
  %155 = load i32, i32* %17, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %8, align 8
  %159 = load i32, i32* %19, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %154
  %162 = load i8*, i8** %8, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %162, i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %161
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = icmp sge i64 %174, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %172, %161
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %260

182:                                              ; preds = %172
  %183 = load i32, i32* %17, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %8, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %260

187:                                              ; preds = %154
  %188 = load i8*, i8** %8, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %196 = sext i32 %195 to i64
  %197 = call i32 @wpa_snprintf_hex(i8* %188, i32 %194, i32* %24, i64 %196)
  %198 = load i8*, i8** %8, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %8, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %8, align 8
  store i8 32, i8* %201, align 1
  %203 = load i8*, i8** %8, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = load i32, i32* @EAP_AKA_AUTN_LEN, align 4
  %211 = sext i32 %210 to i64
  %212 = call i32 @wpa_snprintf_hex(i8* %203, i32 %209, i32* %27, i64 %211)
  %213 = load i8*, i8** %8, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %8, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %8, align 8
  store i8 32, i8* %216, align 1
  %218 = load i8*, i8** %8, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = ptrtoint i8* %219 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* @EAP_AKA_IK_LEN, align 4
  %226 = sext i32 %225 to i64
  %227 = call i32 @wpa_snprintf_hex(i8* %218, i32 %224, i32* %30, i64 %226)
  %228 = load i8*, i8** %8, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8* %230, i8** %8, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %8, align 8
  store i8 32, i8* %231, align 1
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = load i8*, i8** %8, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = load i32, i32* @EAP_AKA_CK_LEN, align 4
  %241 = sext i32 %240 to i64
  %242 = call i32 @wpa_snprintf_hex(i8* %233, i32 %239, i32* %33, i64 %241)
  %243 = load i8*, i8** %8, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %8, align 8
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %8, align 8
  store i8 32, i8* %246, align 1
  %248 = load i8*, i8** %8, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = ptrtoint i8* %249 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = trunc i64 %253 to i32
  %255 = load i64, i64* %16, align 8
  %256 = call i32 @wpa_snprintf_hex(i8* %248, i32 %254, i32* %36, i64 %255)
  %257 = load i8*, i8** %8, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8* %259, i8** %8, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %260

260:                                              ; preds = %187, %182, %181, %153, %45
  %261 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %261)
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.milenage_parameters* @get_milenage(i8*) #2

declare dso_local i64 @random_get_bytes(i32*, i32) #2

declare dso_local i32 @inc_sqn(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @milenage_generate(i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
