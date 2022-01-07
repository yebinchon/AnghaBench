; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"LLDP, length %u\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"\0A\09%s TLV (%u), length %u\00", align 1
@lldp_tlv_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A\09  Subtype %s (%u): \00", align 1
@lldp_chassis_subtype_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@lldp_port_subtype_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c": TTL %us\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\0A\09  System  Capabilities [%s] (0x%04x)\00", align 1
@lldp_cap_values = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\0A\09  Enabled Capabilities [%s] (0x%04x)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c": OUI %s (0x%06x)\00", align 1
@oui_values = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"\0A\09[|LLDP]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lldp_print(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %16, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_14__*
  %24 = call i32 @ND_PRINT(%struct.TYPE_14__* %23)
  br label %25

25:                                               ; preds = %364, %3
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, 4
  br i1 %28, label %29, label %372

29:                                               ; preds = %25
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ND_TCHECK2(i32 %31, i32 4)
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @LLDP_EXTRACT_TYPE(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @LLDP_EXTRACT_LEN(i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %16, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %29
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = load i32, i32* @lldp_tlv_values, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @tok2str(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.TYPE_14__*
  %59 = call i32 @ND_PRINT(%struct.TYPE_14__* %58)
  br label %60

60:                                               ; preds = %50, %29
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63, %60
  br label %372

67:                                               ; preds = %63
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @ND_TCHECK2(i32 %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %373

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %344 [
    i32 154, label %78
    i32 144, label %138
    i32 133, label %198
    i32 145, label %215
    i32 134, label %228
    i32 135, label %235
    i32 136, label %248
    i32 147, label %280
    i32 137, label %294
  ]

78:                                               ; preds = %76
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %137

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %373

87:                                               ; preds = %83
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = load i32, i32* @lldp_chassis_subtype_values, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @tok2str(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to %struct.TYPE_14__*
  %97 = call i32 @ND_PRINT(%struct.TYPE_14__* %96)
  %98 = load i32, i32* %7, align 4
  switch i32 %98, label %134 [
    i32 150, label %99
    i32 152, label %112
    i32 151, label %112
    i32 155, label %112
    i32 153, label %112
    i32 148, label %112
    i32 149, label %119
  ]

99:                                               ; preds = %87
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 7
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %373

103:                                              ; preds = %99
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = call i32 @etheraddr_string(%struct.TYPE_14__* %105, i32* %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_14__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_14__* %110)
  br label %136

112:                                              ; preds = %87, %87, %87, %87, %87
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @safeputs(%struct.TYPE_14__* %113, i32* %115, i32 %117)
  br label %136

119:                                              ; preds = %87
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %15, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i8* @lldp_network_addr_print(%struct.TYPE_14__* %120, i32* %122, i32 %124)
  store i8* %125, i8** %17, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %373

129:                                              ; preds = %119
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = bitcast i8* %131 to %struct.TYPE_14__*
  %133 = call i32 @ND_PRINT(%struct.TYPE_14__* %132)
  br label %136

134:                                              ; preds = %87
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %134, %129, %112, %103
  br label %137

137:                                              ; preds = %136, %78
  br label %346

138:                                              ; preds = %76
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %197

143:                                              ; preds = %138
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %373

147:                                              ; preds = %143
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = load i32, i32* @lldp_port_subtype_values, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @tok2str(i32 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_14__*
  %157 = call i32 @ND_PRINT(%struct.TYPE_14__* %156)
  %158 = load i32, i32* %7, align 4
  switch i32 %158, label %194 [
    i32 140, label %159
    i32 142, label %172
    i32 141, label %172
    i32 146, label %172
    i32 143, label %172
    i32 138, label %172
    i32 139, label %179
  ]

159:                                              ; preds = %147
  %160 = load i32, i32* %15, align 4
  %161 = icmp slt i32 %160, 7
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %373

163:                                              ; preds = %159
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = call i32 @etheraddr_string(%struct.TYPE_14__* %165, i32* %167)
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to %struct.TYPE_14__*
  %171 = call i32 @ND_PRINT(%struct.TYPE_14__* %170)
  br label %196

172:                                              ; preds = %147, %147, %147, %147, %147
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = load i32*, i32** %16, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %176, 1
  %178 = call i32 @safeputs(%struct.TYPE_14__* %173, i32* %175, i32 %177)
  br label %196

179:                                              ; preds = %147
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %15, align 4
  %184 = sub nsw i32 %183, 1
  %185 = call i8* @lldp_network_addr_print(%struct.TYPE_14__* %180, i32* %182, i32 %184)
  store i8* %185, i8** %17, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %373

189:                                              ; preds = %179
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = bitcast i8* %191 to %struct.TYPE_14__*
  %193 = call i32 @ND_PRINT(%struct.TYPE_14__* %192)
  br label %196

194:                                              ; preds = %147
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %194, %189, %172, %163
  br label %197

197:                                              ; preds = %196, %138
  br label %346

198:                                              ; preds = %76
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = load i32, i32* %15, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %373

207:                                              ; preds = %203
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %209 = load i32*, i32** %16, align 8
  %210 = call i32 @EXTRACT_16BITS(i32* %209)
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to %struct.TYPE_14__*
  %213 = call i32 @ND_PRINT(%struct.TYPE_14__* %212)
  br label %214

214:                                              ; preds = %207, %198
  br label %346

215:                                              ; preds = %76
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %215
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([3 x i8]* @.str.6 to %struct.TYPE_14__*))
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = load i32, i32* %15, align 4
  %226 = call i32 @safeputs(%struct.TYPE_14__* %223, i32* %224, i32 %225)
  br label %227

227:                                              ; preds = %220, %215
  br label %346

228:                                              ; preds = %76
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([3 x i8]* @.str.6 to %struct.TYPE_14__*))
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @safeputs(%struct.TYPE_14__* %231, i32* %232, i32 %233)
  br label %346

235:                                              ; preds = %76
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %242 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([5 x i8]* @.str.7 to %struct.TYPE_14__*))
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %244 = load i32*, i32** %16, align 8
  %245 = load i32, i32* %15, align 4
  %246 = call i32 @safeputs(%struct.TYPE_14__* %243, i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %240, %235
  br label %346

248:                                              ; preds = %76
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %279

253:                                              ; preds = %248
  %254 = load i32, i32* %15, align 4
  %255 = icmp slt i32 %254, 4
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %373

257:                                              ; preds = %253
  %258 = load i32*, i32** %16, align 8
  %259 = call i32 @EXTRACT_16BITS(i32* %258)
  store i32 %259, i32* %9, align 4
  %260 = load i32*, i32** %16, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = call i32 @EXTRACT_16BITS(i32* %261)
  store i32 %262, i32* %10, align 4
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %264 = load i32, i32* @lldp_cap_values, align 4
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @bittok2str(i32 %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to %struct.TYPE_14__*
  %270 = call i32 @ND_PRINT(%struct.TYPE_14__* %269)
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %272 = load i32, i32* @lldp_cap_values, align 4
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @bittok2str(i32 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to %struct.TYPE_14__*
  %278 = call i32 @ND_PRINT(%struct.TYPE_14__* %277)
  br label %279

279:                                              ; preds = %257, %248
  br label %346

280:                                              ; preds = %76
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %287 = load i32*, i32** %16, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @lldp_mgmt_addr_tlv_print(%struct.TYPE_14__* %286, i32* %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %285
  br label %373

292:                                              ; preds = %285
  br label %293

293:                                              ; preds = %292, %280
  br label %346

294:                                              ; preds = %76
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %343

299:                                              ; preds = %294
  %300 = load i32, i32* %15, align 4
  %301 = icmp slt i32 %300, 3
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  br label %373

303:                                              ; preds = %299
  %304 = load i32*, i32** %16, align 8
  %305 = call i32 @EXTRACT_24BITS(i32* %304)
  store i32 %305, i32* %11, align 4
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %307 = load i32, i32* @oui_values, align 4
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @tok2str(i32 %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to %struct.TYPE_14__*
  %313 = call i32 @ND_PRINT(%struct.TYPE_14__* %312)
  %314 = load i32, i32* %11, align 4
  switch i32 %314, label %340 [
    i32 130, label %315
    i32 129, label %320
    i32 131, label %325
    i32 128, label %330
    i32 132, label %335
  ]

315:                                              ; preds = %303
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %317 = load i32*, i32** %16, align 8
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @lldp_private_8021_print(%struct.TYPE_14__* %316, i32* %317, i32 %318)
  store i32 %319, i32* %13, align 4
  br label %342

320:                                              ; preds = %303
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %322 = load i32*, i32** %16, align 8
  %323 = load i32, i32* %15, align 4
  %324 = call i32 @lldp_private_8023_print(%struct.TYPE_14__* %321, i32* %322, i32 %323)
  store i32 %324, i32* %13, align 4
  br label %342

325:                                              ; preds = %303
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %327 = load i32*, i32** %16, align 8
  %328 = load i32, i32* %15, align 4
  %329 = call i32 @lldp_private_iana_print(%struct.TYPE_14__* %326, i32* %327, i32 %328)
  store i32 %329, i32* %13, align 4
  br label %342

330:                                              ; preds = %303
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %332 = load i32*, i32** %16, align 8
  %333 = load i32, i32* %15, align 4
  %334 = call i32 @lldp_private_tia_print(%struct.TYPE_14__* %331, i32* %332, i32 %333)
  store i32 %334, i32* %13, align 4
  br label %342

335:                                              ; preds = %303
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %337 = load i32*, i32** %16, align 8
  %338 = load i32, i32* %15, align 4
  %339 = call i32 @lldp_private_dcbx_print(%struct.TYPE_14__* %336, i32* %337, i32 %338)
  store i32 %339, i32* %13, align 4
  br label %342

340:                                              ; preds = %303
  %341 = load i32, i32* @TRUE, align 4
  store i32 %341, i32* %13, align 4
  br label %342

342:                                              ; preds = %340, %335, %330, %325, %320, %315
  br label %343

343:                                              ; preds = %342, %294
  br label %346

344:                                              ; preds = %76
  %345 = load i32, i32* @TRUE, align 4
  store i32 %345, i32* %13, align 4
  br label %346

346:                                              ; preds = %344, %343, %293, %279, %247, %228, %227, %214, %197, %137
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp sgt i32 %349, 1
  br i1 %350, label %359, label %351

351:                                              ; preds = %346
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %351
  %357 = load i32, i32* %13, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %356, %346
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %361 = load i32*, i32** %16, align 8
  %362 = load i32, i32* %15, align 4
  %363 = call i32 @print_unknown_data(%struct.TYPE_14__* %360, i32* %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %362)
  br label %364

364:                                              ; preds = %359, %356, %351
  %365 = load i32, i32* %15, align 4
  %366 = load i32, i32* %12, align 4
  %367 = sub nsw i32 %366, %365
  store i32 %367, i32* %12, align 4
  %368 = load i32, i32* %15, align 4
  %369 = load i32*, i32** %16, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %16, align 8
  br label %25

372:                                              ; preds = %66, %25
  br label %376

373:                                              ; preds = %302, %291, %256, %206, %188, %162, %146, %128, %102, %86, %75
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %375 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([10 x i8]* @.str.12 to %struct.TYPE_14__*))
  br label %376

376:                                              ; preds = %373, %372
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_14__*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @LLDP_EXTRACT_TYPE(i32) #1

declare dso_local i32 @LLDP_EXTRACT_LEN(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @safeputs(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i8* @lldp_network_addr_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @lldp_mgmt_addr_tlv_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @lldp_private_8021_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @lldp_private_8023_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @lldp_private_iana_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @lldp_private_tia_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @lldp_private_dcbx_print(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_14__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
