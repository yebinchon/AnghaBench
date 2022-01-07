; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_signer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_signer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i64, i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@VAL_CLASS_POSITIVE = common dso_local global i32 0, align 4
@VAL_CLASS_CNAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@VAL_CLASS_NAMEERROR = common dso_local global i32 0, align 4
@VAL_CLASS_NODATA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@VAL_CLASS_CNAMENOANSWER = common dso_local global i32 0, align 4
@VAL_CLASS_ANY = common dso_local global i32 0, align 4
@VAL_CLASS_REFERRAL = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"find_signer: could not find signer name for unknown type response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_find_signer(i32 %0, %struct.query_info* %1, %struct.reply_info* %2, i64 %3, i32** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.query_info* %1, %struct.query_info** %8, align 8
  store %struct.reply_info* %2, %struct.reply_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32** %4, i32*** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VAL_CLASS_POSITIVE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %6
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %13, align 8
  br label %20

20:                                               ; preds = %52, %18
  %21 = load i64, i64* %13, align 8
  %22 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.query_info*, %struct.query_info** %8, align 8
  %28 = getelementptr inbounds %struct.query_info, %struct.query_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %31 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %31, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @query_dname_compare(i32 %29, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %26
  %42 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %43 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32**, i32*** %11, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = call i32 @val_find_rrset_signer(%struct.TYPE_5__* %47, i32** %48, i64* %49)
  br label %346

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load i32**, i32*** %11, align 8
  store i32* null, i32** %56, align 8
  %57 = load i64*, i64** %12, align 8
  store i64 0, i64* %57, align 8
  br label %346

58:                                               ; preds = %6
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @VAL_CLASS_CNAME, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %99, %62
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %67 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %64
  %71 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %72 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32**, i32*** %11, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = call i32 @val_find_rrset_signer(%struct.TYPE_5__* %76, i32** %77, i64* %78)
  %80 = load i32**, i32*** %11, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %346

84:                                               ; preds = %70
  %85 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %86 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @ntohs(i32 %93)
  %95 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %102

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %64

102:                                              ; preds = %97, %64
  %103 = load i32**, i32*** %11, align 8
  store i32* null, i32** %103, align 8
  %104 = load i64*, i64** %12, align 8
  store i64 0, i64* %104, align 8
  br label %345

105:                                              ; preds = %58
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @VAL_CLASS_NAMEERROR, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @VAL_CLASS_NODATA, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %168

113:                                              ; preds = %109, %105
  %114 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %115 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %13, align 8
  br label %117

117:                                              ; preds = %164, %113
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %120 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %123 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %121, %124
  %126 = icmp ult i64 %118, %125
  br i1 %126, label %127, label %167

127:                                              ; preds = %117
  %128 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %129 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %128, i32 0, i32 3
  %130 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %129, align 8
  %131 = load i64, i64* %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %130, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @ntohs(i32 %136)
  %138 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %153, label %140

140:                                              ; preds = %127
  %141 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %142 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %141, i32 0, i32 3
  %143 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %143, i64 %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @ntohs(i32 %149)
  %151 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %140, %127
  %154 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %155 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %155, align 8
  %157 = load i64, i64* %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %156, i64 %157
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32**, i32*** %11, align 8
  %161 = load i64*, i64** %12, align 8
  %162 = call i32 @val_find_rrset_signer(%struct.TYPE_5__* %159, i32** %160, i64* %161)
  br label %346

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %13, align 8
  br label %117

167:                                              ; preds = %117
  br label %344

168:                                              ; preds = %109
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @VAL_CLASS_CNAMENOANSWER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %230

172:                                              ; preds = %168
  store i32 0, i32* %14, align 4
  %173 = load i32**, i32*** %11, align 8
  store i32* null, i32** %173, align 8
  %174 = load i64*, i64** %12, align 8
  store i64 0, i64* %174, align 8
  %175 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %176 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %13, align 8
  br label %178

178:                                              ; preds = %226, %172
  %179 = load i64, i64* %13, align 8
  %180 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %181 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %184 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %182, %185
  %187 = icmp ult i64 %179, %186
  br i1 %187, label %188, label %229

188:                                              ; preds = %178
  %189 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %190 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %189, i32 0, i32 3
  %191 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %190, align 8
  %192 = load i64, i64* %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %191, i64 %192
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @ntohs(i32 %197)
  %199 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %214, label %201

201:                                              ; preds = %188
  %202 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %203 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %202, i32 0, i32 3
  %204 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %203, align 8
  %205 = load i64, i64* %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %204, i64 %205
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @ntohs(i32 %210)
  %212 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %201, %188
  %215 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %216 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %215, i32 0, i32 3
  %217 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %216, align 8
  %218 = load i64, i64* %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %217, i64 %218
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = load %struct.query_info*, %struct.query_info** %8, align 8
  %222 = load i32**, i32*** %11, align 8
  %223 = load i64*, i64** %12, align 8
  %224 = call i32 @val_find_best_signer(%struct.TYPE_5__* %220, %struct.query_info* %221, i32** %222, i64* %223, i32* %14)
  br label %225

225:                                              ; preds = %214, %201
  br label %226

226:                                              ; preds = %225
  %227 = load i64, i64* %13, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %13, align 8
  br label %178

229:                                              ; preds = %178
  br label %343

230:                                              ; preds = %168
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @VAL_CLASS_ANY, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %313

234:                                              ; preds = %230
  %235 = load i64, i64* %10, align 8
  store i64 %235, i64* %13, align 8
  br label %236

236:                                              ; preds = %273, %234
  %237 = load i64, i64* %13, align 8
  %238 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %239 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ult i64 %237, %240
  br i1 %241, label %242, label %276

242:                                              ; preds = %236
  %243 = load %struct.query_info*, %struct.query_info** %8, align 8
  %244 = getelementptr inbounds %struct.query_info, %struct.query_info* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %247 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %246, i32 0, i32 3
  %248 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %247, align 8
  %249 = load i64, i64* %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %248, i64 %249
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @query_dname_compare(i32 %245, i32 %254)
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %242
  %258 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %259 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %258, i32 0, i32 3
  %260 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %259, align 8
  %261 = load i64, i64* %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %260, i64 %261
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = load i32**, i32*** %11, align 8
  %265 = load i64*, i64** %12, align 8
  %266 = call i32 @val_find_rrset_signer(%struct.TYPE_5__* %263, i32** %264, i64* %265)
  %267 = load i32**, i32*** %11, align 8
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %257
  br label %346

271:                                              ; preds = %257
  br label %272

272:                                              ; preds = %271, %242
  br label %273

273:                                              ; preds = %272
  %274 = load i64, i64* %13, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %13, align 8
  br label %236

276:                                              ; preds = %236
  %277 = load i64, i64* %10, align 8
  %278 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %279 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ult i64 %277, %280
  br i1 %281, label %282, label %310

282:                                              ; preds = %276
  %283 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %284 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %283, i32 0, i32 3
  %285 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %284, align 8
  %286 = load i64, i64* %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %285, i64 %286
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i64 @ntohs(i32 %291)
  %293 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %310

295:                                              ; preds = %282
  %296 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %297 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %296, i32 0, i32 3
  %298 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %297, align 8
  %299 = load i64, i64* %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %298, i64 %299
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %300, align 8
  %302 = load i32**, i32*** %11, align 8
  %303 = load i64*, i64** %12, align 8
  %304 = call i32 @val_find_rrset_signer(%struct.TYPE_5__* %301, i32** %302, i64* %303)
  %305 = load i32**, i32*** %11, align 8
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %295
  br label %346

309:                                              ; preds = %295
  br label %310

310:                                              ; preds = %309, %282, %276
  %311 = load i32**, i32*** %11, align 8
  store i32* null, i32** %311, align 8
  %312 = load i64*, i64** %12, align 8
  store i64 0, i64* %312, align 8
  br label %342

313:                                              ; preds = %230
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %336

317:                                              ; preds = %313
  %318 = load i64, i64* %10, align 8
  %319 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %320 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = icmp ult i64 %318, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %317
  %324 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %325 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %324, i32 0, i32 3
  %326 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %325, align 8
  %327 = load i64, i64* %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %326, i64 %327
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %328, align 8
  %330 = load i32**, i32*** %11, align 8
  %331 = load i64*, i64** %12, align 8
  %332 = call i32 @val_find_rrset_signer(%struct.TYPE_5__* %329, i32** %330, i64* %331)
  br label %346

333:                                              ; preds = %317
  %334 = load i32**, i32*** %11, align 8
  store i32* null, i32** %334, align 8
  %335 = load i64*, i64** %12, align 8
  store i64 0, i64* %335, align 8
  br label %341

336:                                              ; preds = %313
  %337 = load i32, i32* @VERB_QUERY, align 4
  %338 = call i32 @verbose(i32 %337, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %339 = load i32**, i32*** %11, align 8
  store i32* null, i32** %339, align 8
  %340 = load i64*, i64** %12, align 8
  store i64 0, i64* %340, align 8
  br label %341

341:                                              ; preds = %336, %333
  br label %342

342:                                              ; preds = %341, %310
  br label %343

343:                                              ; preds = %342, %229
  br label %344

344:                                              ; preds = %343, %167
  br label %345

345:                                              ; preds = %344, %102
  br label %346

346:                                              ; preds = %41, %83, %153, %270, %308, %323, %345, %55
  ret void
}

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @val_find_rrset_signer(%struct.TYPE_5__*, i32**, i64*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @val_find_best_signer(%struct.TYPE_5__*, %struct.query_info*, i32**, i64*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
