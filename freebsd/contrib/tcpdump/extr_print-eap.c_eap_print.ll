; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-eap.c_eap_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-eap.c_eap_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.eap_frame_t = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s (%u) v%u, len %u\00", align 1
@eap_frame_type_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c", %s (%u), id %u, len %u\00", align 1
@eap_code_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"\0A\09\09 Type %s (%u)\00", align 1
@eap_type_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c", Identity: \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", Notification: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" %s (%u),\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" TTLSv%u\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" flags [%s] 0x%02x,\00", align 1
@eap_tls_flags_values = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" len %u\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" FASTv%u\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" subtype [%s] 0x%02x,\00", align 1
@eap_aka_subtype_values = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"\0A\09[|EAP]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_frame_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.eap_frame_t*
  store %struct.eap_frame_t* %17, %struct.eap_frame_t** %7, align 8
  %18 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %19 = call i32 @ND_TCHECK(%struct.eap_frame_t* byval(%struct.eap_frame_t) align 8 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load i32, i32* @eap_frame_type_values, align 4
  %27 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %28 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tok2str(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %32 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %35 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %38 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @EXTRACT_16BITS(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_5__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_5__* %42)
  br label %288

44:                                               ; preds = %3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = load i32, i32* @eap_frame_type_values, align 4
  %47 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %48 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @tok2str(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %52 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %55 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %58 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @EXTRACT_16BITS(i32* %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  %63 = call i32 @ND_PRINT(%struct.TYPE_5__* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 24
  store i32* %65, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 24
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load %struct.eap_frame_t*, %struct.eap_frame_t** %7, align 8
  %71 = getelementptr inbounds %struct.eap_frame_t, %struct.eap_frame_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %283 [
    i32 141, label %73
    i32 142, label %282
    i32 143, label %282
  ]

73:                                               ; preds = %44
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @ND_TCHECK_8BITS(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = call i32 @ND_TCHECK_16BITS(i32* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 @EXTRACT_16BITS(i32* %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = load i32, i32* @eap_code_values, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @tok2str(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_5__*
  %95 = call i32 @ND_PRINT(%struct.TYPE_5__* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @ND_TCHECK2(i32 %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp sle i32 %100, 2
  br i1 %101, label %102, label %281

102:                                              ; preds = %73
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = call i32 @ND_TCHECK_8BITS(i32* %104)
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = load i32, i32* @eap_type_values, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @tok2str(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_5__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_5__* %115)
  %117 = load i32, i32* %11, align 4
  switch i32 %117, label %279 [
    i32 135, label %118
    i32 132, label %132
    i32 133, label %146
    i32 128, label %176
    i32 129, label %176
    i32 137, label %221
    i32 140, label %262
    i32 130, label %262
    i32 134, label %278
    i32 131, label %278
    i32 136, label %278
    i32 139, label %278
    i32 138, label %278
  ]

118:                                              ; preds = %102
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %119, 5
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([13 x i8]* @.str.4 to %struct.TYPE_5__*))
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 5
  %130 = call i32 @safeputs(%struct.TYPE_5__* %125, i32* %127, i32 %129)
  br label %131

131:                                              ; preds = %122, %118
  br label %280

132:                                              ; preds = %102
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %133, 5
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([17 x i8]* @.str.5 to %struct.TYPE_5__*))
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %142, 5
  %144 = call i32 @safeputs(%struct.TYPE_5__* %139, i32* %141, i32 %143)
  br label %145

145:                                              ; preds = %136, %132
  br label %280

146:                                              ; preds = %102
  store i32 5, i32* %12, align 4
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = call i32 @ND_TCHECK_8BITS(i32* %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = load i32, i32* @eap_type_values, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @tok2str(i32 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to %struct.TYPE_5__*
  %172 = call i32 @ND_PRINT(%struct.TYPE_5__* %171)
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %147

175:                                              ; preds = %147
  br label %280

176:                                              ; preds = %102, %102
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  %179 = call i32 @ND_TCHECK_8BITS(i32* %178)
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 128
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @EAP_TTLS_VERSION(i32 %186)
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to %struct.TYPE_5__*
  %190 = call i32 @ND_PRINT(%struct.TYPE_5__* %189)
  br label %191

191:                                              ; preds = %182, %176
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %193 = load i32, i32* @eap_tls_flags_values, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @bittok2str(i32 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 5
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to %struct.TYPE_5__*
  %203 = call i32 @ND_PRINT(%struct.TYPE_5__* %202)
  %204 = load i32*, i32** %8, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @EAP_TLS_EXTRACT_BIT_L(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %191
  %210 = load i32*, i32** %8, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 6
  %212 = call i32 @ND_TCHECK_32BITS(i32* %211)
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 6
  %216 = call i32 @EXTRACT_32BITS(i32* %215)
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to %struct.TYPE_5__*
  %219 = call i32 @ND_PRINT(%struct.TYPE_5__* %218)
  br label %220

220:                                              ; preds = %209, %191
  br label %280

221:                                              ; preds = %102
  %222 = load i32*, i32** %8, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 5
  %224 = call i32 @ND_TCHECK_8BITS(i32* %223)
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = load i32*, i32** %8, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 5
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @EAP_TTLS_VERSION(i32 %228)
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to %struct.TYPE_5__*
  %232 = call i32 @ND_PRINT(%struct.TYPE_5__* %231)
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = load i32, i32* @eap_tls_flags_values, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 5
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @bittok2str(i32 %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load i32*, i32** %8, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 5
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to %struct.TYPE_5__*
  %244 = call i32 @ND_PRINT(%struct.TYPE_5__* %243)
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 5
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @EAP_TLS_EXTRACT_BIT_L(i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %221
  %251 = load i32*, i32** %8, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 6
  %253 = call i32 @ND_TCHECK_32BITS(i32* %252)
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 6
  %257 = call i32 @EXTRACT_32BITS(i32* %256)
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to %struct.TYPE_5__*
  %260 = call i32 @ND_PRINT(%struct.TYPE_5__* %259)
  br label %261

261:                                              ; preds = %250, %221
  br label %280

262:                                              ; preds = %102, %102
  %263 = load i32*, i32** %8, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 5
  %265 = call i32 @ND_TCHECK_8BITS(i32* %264)
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %267 = load i32, i32* @eap_aka_subtype_values, align 4
  %268 = load i32*, i32** %8, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 5
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @tok2str(i32 %267, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %270)
  %272 = load i32*, i32** %8, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 5
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = inttoptr i64 %275 to %struct.TYPE_5__*
  %277 = call i32 @ND_PRINT(%struct.TYPE_5__* %276)
  br label %280

278:                                              ; preds = %102, %102, %102, %102, %102
  br label %279

279:                                              ; preds = %102, %278
  br label %280

280:                                              ; preds = %279, %262, %261, %220, %175, %145, %131
  br label %281

281:                                              ; preds = %280, %73
  br label %284

282:                                              ; preds = %44, %44
  br label %283

283:                                              ; preds = %44, %282
  br label %284

284:                                              ; preds = %283, %281
  br label %288

285:                                              ; No predecessors!
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %287 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([9 x i8]* @.str.13 to %struct.TYPE_5__*))
  br label %288

288:                                              ; preds = %285, %284, %24
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.eap_frame_t* byval(%struct.eap_frame_t) align 8) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_8BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @safeputs(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @EAP_TTLS_VERSION(i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EAP_TLS_EXTRACT_BIT_L(i32) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
