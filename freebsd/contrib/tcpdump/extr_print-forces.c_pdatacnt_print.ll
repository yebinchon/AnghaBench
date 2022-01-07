; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_pdatacnt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_pdatacnt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.forces_tlv = type { i32, i32 }
%struct.pdata_ops = type { i64, i32 (%struct.TYPE_7__*, i32*, i64, i64, i32)*, i32, i32 }

@B_APPND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%sTABLE APPEND\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%sID#%02u: %d\0A\00", align 1
@B_TRNG = common dso_local global i64 0, align 8
@B_KEYIN = common dso_local global i64 0, align 8
@PTH_DESC_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"pathlength %d with key/range too short %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%sTable range: [%d,%d]\0A\00", align 1
@TLV_HDRL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"key content length %u < %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"key content too short\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s Outstanding bytes %d for TLV type 0x%x TLV len %d\0A\00", align 1
@ForCES_TLV_err = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [67 x i8] c"Invalid padded pathdata TLV type 0x%x len %d missing %d pad bytes\0A\00", align 1
@F_TLV_PDAT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"%s  %s (Length %d DataLen %d pad %d Bytes)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%s  %s (Length %d DataLen %d Bytes)\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Invalid path data content type 0x%x len %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Bad Data val\0A\09  [\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i64, i64, i64, i32)* @pdatacnt_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdatacnt_print(%struct.TYPE_7__* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.forces_tlv*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.forces_tlv*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.pdata_ops*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i8* @indent_pr(i32 %28, i32 0)
  store i8* %29, i8** %16, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @B_APPND, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %6
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_7__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %39, %34, %6
  store i64 0, i64* %14, align 8
  br label %45

45:                                               ; preds = %77, %44
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK2(i32 %51, i32 4)
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %373

56:                                               ; preds = %49
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @EXTRACT_32BITS(i32* %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 3
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_7__*
  %71 = call i32 @ND_PRINT(%struct.TYPE_7__* %70)
  br label %72

72:                                               ; preds = %63, %56
  %73 = load i64, i64* %10, align 8
  %74 = sub nsw i64 %73, 4
  store i64 %74, i64* %10, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %72
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %14, align 8
  br label %45

80:                                               ; preds = %45
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @B_TRNG, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @B_KEYIN, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %192

90:                                               ; preds = %85, %80
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @B_TRNG, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %90
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @PTH_DESC_SIZE, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @PTH_DESC_SIZE, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_7__*
  %104 = call i32 @ND_PRINT(%struct.TYPE_7__* %103)
  store i32 -1, i32* %7, align 4
  br label %379

105:                                              ; preds = %95
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  store i32* %107, i32** %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = sub i64 %108, 8
  store i64 %109, i64* %10, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @EXTRACT_32BITS(i32* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = sub nsw i64 %114, 4
  store i64 %115, i64* %10, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @EXTRACT_32BITS(i32* %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32* %119, i32** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = sub nsw i64 %120, 4
  store i64 %121, i64* %10, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 3
  br i1 %125, label %126, label %134

126:                                              ; preds = %105
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.TYPE_7__*
  %133 = call i32 @ND_PRINT(%struct.TYPE_7__* %132)
  br label %134

134:                                              ; preds = %126, %105
  br label %135

135:                                              ; preds = %134, %90
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* @B_KEYIN, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %191

140:                                              ; preds = %135
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @PTH_DESC_SIZE, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @PTH_DESC_SIZE, align 8
  %148 = inttoptr i64 %147 to %struct.TYPE_7__*
  %149 = call i32 @ND_PRINT(%struct.TYPE_7__* %148)
  store i32 -1, i32* %7, align 4
  br label %379

150:                                              ; preds = %140
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = sub nsw i64 %153, 4
  store i64 %154, i64* %10, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = bitcast i32* %155 to %struct.forces_tlv*
  store %struct.forces_tlv* %156, %struct.forces_tlv** %19, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 8
  store i32* %158, i32** %9, align 8
  %159 = load i64, i64* %10, align 8
  %160 = sub i64 %159, 8
  store i64 %160, i64* %10, align 8
  %161 = load %struct.forces_tlv*, %struct.forces_tlv** %19, align 8
  %162 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %161, i32 0, i32 0
  %163 = call i32 @EXTRACT_16BITS(i32* %162)
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %20, align 8
  %165 = load i64, i64* %20, align 8
  %166 = load i64, i64* @TLV_HDRL, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %150
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = load i64, i64* %20, align 8
  %171 = load i64, i64* @TLV_HDRL, align 8
  %172 = inttoptr i64 %171 to %struct.TYPE_7__*
  %173 = call i32 @ND_PRINT(%struct.TYPE_7__* %172)
  store i32 -1, i32* %7, align 4
  br label %379

174:                                              ; preds = %150
  %175 = load i64, i64* @TLV_HDRL, align 8
  %176 = load i64, i64* %20, align 8
  %177 = sub nsw i64 %176, %175
  store i64 %177, i64* %20, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* %20, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([23 x i8]* @.str.5 to %struct.TYPE_7__*))
  store i32 -1, i32* %7, align 4
  br label %379

184:                                              ; preds = %174
  %185 = load i64, i64* %20, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %9, align 8
  %188 = load i64, i64* %20, align 8
  %189 = load i64, i64* %10, align 8
  %190 = sub nsw i64 %189, %188
  store i64 %190, i64* %10, align 8
  br label %191

191:                                              ; preds = %184, %135
  br label %192

192:                                              ; preds = %191, %85
  %193 = load i64, i64* %10, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %370

195:                                              ; preds = %192
  %196 = load i32*, i32** %9, align 8
  %197 = bitcast i32* %196 to %struct.forces_tlv*
  store %struct.forces_tlv* %197, %struct.forces_tlv** %21, align 8
  store i32 0, i32* %24, align 4
  %198 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %199 = bitcast %struct.forces_tlv* %198 to i64*
  %200 = load i64, i64* %199, align 4
  %201 = call i32 @ND_TCHECK(i64 %200)
  %202 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %203 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %202, i32 0, i32 1
  %204 = call i32 @EXTRACT_16BITS(i32* %203)
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %22, align 8
  %206 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %207 = load i64, i64* %10, align 8
  %208 = call i64 @tlv_valid(%struct.forces_tlv* %206, i64 %207)
  store i64 %208, i64* %26, align 8
  %209 = load i64, i64* %26, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %195
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = load i32, i32* @ForCES_TLV_err, align 4
  %214 = load i64, i64* %26, align 8
  %215 = call i32 @tok2str(i32 %213, i32* null, i64 %214)
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* %22, align 8
  %218 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %219 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %218, i32 0, i32 0
  %220 = call i32 @EXTRACT_16BITS(i32* %219)
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to %struct.TYPE_7__*
  %223 = call i32 @ND_PRINT(%struct.TYPE_7__* %222)
  br label %356

224:                                              ; preds = %195
  %225 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %226 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %225, i32 0, i32 0
  %227 = call i32 @EXTRACT_16BITS(i32* %226)
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* @TLV_HDRL, align 8
  %230 = sub nsw i64 %228, %229
  store i64 %230, i64* %23, align 8
  %231 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %232 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %231, i32 0, i32 0
  %233 = call i32 @EXTRACT_16BITS(i32* %232)
  %234 = call i64 @F_ALN_LEN(i32 %233)
  store i64 %234, i64* %25, align 8
  %235 = load i64, i64* %25, align 8
  %236 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %237 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %236, i32 0, i32 0
  %238 = call i32 @EXTRACT_16BITS(i32* %237)
  %239 = sext i32 %238 to i64
  %240 = icmp sgt i64 %235, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %224
  %242 = load i64, i64* %25, align 8
  %243 = load i64, i64* %10, align 8
  %244 = icmp sgt i64 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %241
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %247 = load i64, i64* %22, align 8
  %248 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %249 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %248, i32 0, i32 0
  %250 = call i32 @EXTRACT_16BITS(i32* %249)
  %251 = load i64, i64* %25, align 8
  %252 = load i64, i64* %10, align 8
  %253 = sub nsw i64 %251, %252
  %254 = inttoptr i64 %253 to %struct.TYPE_7__*
  %255 = call i32 @ND_PRINT(%struct.TYPE_7__* %254)
  br label %264

256:                                              ; preds = %241
  %257 = load i64, i64* %25, align 8
  %258 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %259 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %258, i32 0, i32 0
  %260 = call i32 @EXTRACT_16BITS(i32* %259)
  %261 = sext i32 %260 to i64
  %262 = sub nsw i64 %257, %261
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %24, align 4
  br label %264

264:                                              ; preds = %256, %245
  br label %265

265:                                              ; preds = %264, %224
  %266 = load i64, i64* %22, align 8
  %267 = call i64 @pd_valid(i64 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %347

269:                                              ; preds = %265
  %270 = load i64, i64* %22, align 8
  %271 = call %struct.pdata_ops* @get_forces_pd(i64 %270)
  store %struct.pdata_ops* %271, %struct.pdata_ops** %27, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp sge i32 %274, 3
  br i1 %275, label %276, label %312

276:                                              ; preds = %269
  %277 = load %struct.pdata_ops*, %struct.pdata_ops** %27, align 8
  %278 = getelementptr inbounds %struct.pdata_ops, %struct.pdata_ops* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @F_TLV_PDAT, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %312

282:                                              ; preds = %276
  %283 = load i32, i32* %24, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %299

285:                                              ; preds = %282
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %287 = load i8*, i8** %16, align 8
  %288 = load %struct.pdata_ops*, %struct.pdata_ops** %27, align 8
  %289 = getelementptr inbounds %struct.pdata_ops, %struct.pdata_ops* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %292 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %291, i32 0, i32 0
  %293 = call i32 @EXTRACT_16BITS(i32* %292)
  %294 = load i64, i64* %23, align 8
  %295 = load i32, i32* %24, align 4
  %296 = sext i32 %295 to i64
  %297 = inttoptr i64 %296 to %struct.TYPE_7__*
  %298 = call i32 @ND_PRINT(%struct.TYPE_7__* %297)
  br label %311

299:                                              ; preds = %282
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %301 = load i8*, i8** %16, align 8
  %302 = load %struct.pdata_ops*, %struct.pdata_ops** %27, align 8
  %303 = getelementptr inbounds %struct.pdata_ops, %struct.pdata_ops* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %306 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %305, i32 0, i32 0
  %307 = call i32 @EXTRACT_16BITS(i32* %306)
  %308 = load i64, i64* %23, align 8
  %309 = inttoptr i64 %308 to %struct.TYPE_7__*
  %310 = call i32 @ND_PRINT(%struct.TYPE_7__* %309)
  br label %311

311:                                              ; preds = %299, %285
  br label %312

312:                                              ; preds = %311, %276, %269
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %314 = load i64, i64* %22, align 8
  %315 = load i64, i64* %12, align 8
  %316 = load %struct.pdata_ops*, %struct.pdata_ops** %27, align 8
  %317 = getelementptr inbounds %struct.pdata_ops, %struct.pdata_ops* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @chk_op_type(%struct.TYPE_7__* %313, i64 %314, i64 %315, i32 %318)
  %320 = load %struct.pdata_ops*, %struct.pdata_ops** %27, align 8
  %321 = getelementptr inbounds %struct.pdata_ops, %struct.pdata_ops* %320, i32 0, i32 1
  %322 = load i32 (%struct.TYPE_7__*, i32*, i64, i64, i32)*, i32 (%struct.TYPE_7__*, i32*, i64, i64, i32)** %321, align 8
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %324 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %325 = bitcast %struct.forces_tlv* %324 to i32*
  %326 = load i64, i64* %23, align 8
  %327 = load i32, i32* %24, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %326, %328
  %330 = load i64, i64* @TLV_HDRL, align 8
  %331 = add nsw i64 %329, %330
  %332 = load i64, i64* %12, align 8
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 2
  %335 = call i32 %322(%struct.TYPE_7__* %323, i32* %325, i64 %331, i64 %332, i32 %334)
  %336 = icmp eq i32 %335, -1
  br i1 %336, label %337, label %338

337:                                              ; preds = %312
  store i32 -1, i32* %7, align 4
  br label %379

338:                                              ; preds = %312
  %339 = load i64, i64* @TLV_HDRL, align 8
  %340 = load i32, i32* %24, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %339, %341
  %343 = load i64, i64* %23, align 8
  %344 = add nsw i64 %342, %343
  %345 = load i64, i64* %10, align 8
  %346 = sub nsw i64 %345, %344
  store i64 %346, i64* %10, align 8
  br label %369

347:                                              ; preds = %265
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %349 = load i64, i64* %22, align 8
  %350 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %351 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %350, i32 0, i32 0
  %352 = call i32 @EXTRACT_16BITS(i32* %351)
  %353 = sext i32 %352 to i64
  %354 = inttoptr i64 %353 to %struct.TYPE_7__*
  %355 = call i32 @ND_PRINT(%struct.TYPE_7__* %354)
  br label %356

356:                                              ; preds = %347, %211
  %357 = load %struct.forces_tlv*, %struct.forces_tlv** %21, align 8
  %358 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %357, i32 0, i32 0
  %359 = call i32 @EXTRACT_16BITS(i32* %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %356
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %363 = load i32*, i32** %9, align 8
  %364 = load i64, i64* %10, align 8
  %365 = call i32 @hex_print_with_offset(%struct.TYPE_7__* %362, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* %363, i64 %364, i32 0)
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %367 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([3 x i8]* @.str.12 to %struct.TYPE_7__*))
  store i32 -1, i32* %7, align 4
  br label %379

368:                                              ; preds = %356
  br label %369

369:                                              ; preds = %368, %338
  br label %370

370:                                              ; preds = %369, %192
  %371 = load i64, i64* %10, align 8
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %7, align 4
  br label %379

373:                                              ; preds = %55
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %375 = load i32, i32* @tstr, align 4
  %376 = sext i32 %375 to i64
  %377 = inttoptr i64 %376 to %struct.TYPE_7__*
  %378 = call i32 @ND_PRINT(%struct.TYPE_7__* %377)
  store i32 -1, i32* %7, align 4
  br label %379

379:                                              ; preds = %373, %370, %361, %337, %181, %168, %144, %99
  %380 = load i32, i32* %7, align 4
  ret i32 %380
}

declare dso_local i8* @indent_pr(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i64 @tlv_valid(%struct.forces_tlv*, i64) #1

declare dso_local i32 @tok2str(i32, i32*, i64) #1

declare dso_local i64 @F_ALN_LEN(i32) #1

declare dso_local i64 @pd_valid(i64) #1

declare dso_local %struct.pdata_ops* @get_forces_pd(i64) #1

declare dso_local i32 @chk_op_type(%struct.TYPE_7__*, i64, i64, i32) #1

declare dso_local i32 @hex_print_with_offset(%struct.TYPE_7__*, i8*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
