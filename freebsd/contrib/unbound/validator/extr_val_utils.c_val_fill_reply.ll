; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_fill_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_fill_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_fill_reply(%struct.reply_info* %0, %struct.reply_info* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.reply_info*, align 8
  %8 = alloca %struct.reply_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.reply_info* %0, %struct.reply_info** %7, align 8
  store %struct.reply_info* %1, %struct.reply_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %18 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %13, align 8
  br label %24

24:                                               ; preds = %136, %6
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %27 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %139

30:                                               ; preds = %24
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @query_dname_compare(i32* %34, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %33
  %47 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %48 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %54 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %57 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %58
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %60, align 8
  br label %61

61:                                               ; preds = %46, %33
  br label %135

62:                                               ; preds = %30
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %67 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ntohs(i32 %74)
  %76 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %65
  %79 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %80 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %86 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %86, align 8
  %88 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %89 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %90
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %92, align 8
  store i32 0, i32* %14, align 4
  br label %134

93:                                               ; preds = %65, %62
  %94 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %95 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @rrset_has_signer(%struct.TYPE_4__* %99, i32* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %93
  %105 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %106 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %105, i32 0, i32 4
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %107, i64 %108
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %112 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %111, i32 0, i32 4
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %115 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %116
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %118, align 8
  %119 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %120 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %119, i32 0, i32 4
  %121 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %121, i64 %122
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @ntohs(i32 %127)
  %129 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %104
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132, %93
  br label %134

134:                                              ; preds = %133, %78
  br label %135

135:                                              ; preds = %134, %61
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %13, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %13, align 8
  br label %24

139:                                              ; preds = %24
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %142 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ugt i64 %140, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i64, i64* %9, align 8
  br label %151

147:                                              ; preds = %139
  %148 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %149 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  br label %151

151:                                              ; preds = %147, %145
  %152 = phi i64 [ %146, %145 ], [ %150, %147 ]
  store i64 %152, i64* %13, align 8
  br label %153

153:                                              ; preds = %231, %151
  %154 = load i64, i64* %13, align 8
  %155 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %156 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %159 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %157, %160
  %162 = icmp ult i64 %154, %161
  br i1 %162, label %163, label %234

163:                                              ; preds = %153
  %164 = load i32*, i32** %12, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %199, label %166

166:                                              ; preds = %163
  %167 = load i32*, i32** %10, align 8
  %168 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %169 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %168, i32 0, i32 4
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 %171
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @query_dname_compare(i32* %167, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %166
  %180 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %181 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %180, i32 0, i32 4
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %181, align 8
  %183 = load i64, i64* %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %182, i64 %183
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %187 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %186, i32 0, i32 4
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %187, align 8
  %189 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %190 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %193 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %193, align 8
  %196 = add i64 %191, %194
  %197 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %188, i64 %196
  store %struct.TYPE_4__* %185, %struct.TYPE_4__** %197, align 8
  br label %198

198:                                              ; preds = %179, %166
  br label %230

199:                                              ; preds = %163
  %200 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %201 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %200, i32 0, i32 4
  %202 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %201, align 8
  %203 = load i64, i64* %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %202, i64 %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = load i64, i64* %11, align 8
  %208 = call i64 @rrset_has_signer(%struct.TYPE_4__* %205, i32* %206, i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %229

210:                                              ; preds = %199
  %211 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %212 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %211, i32 0, i32 4
  %213 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %212, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %213, i64 %214
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %218 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %217, i32 0, i32 4
  %219 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %218, align 8
  %220 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %221 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %224 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %224, align 8
  %227 = add i64 %222, %225
  %228 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %219, i64 %227
  store %struct.TYPE_4__* %216, %struct.TYPE_4__** %228, align 8
  br label %229

229:                                              ; preds = %210, %199
  br label %230

230:                                              ; preds = %229, %198
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %13, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %13, align 8
  br label %153

234:                                              ; preds = %153
  %235 = load i64, i64* %9, align 8
  %236 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %237 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %240 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %238, %241
  %243 = icmp ugt i64 %235, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %234
  %245 = load i64, i64* %9, align 8
  br label %254

246:                                              ; preds = %234
  %247 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %248 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %251 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %249, %252
  br label %254

254:                                              ; preds = %246, %244
  %255 = phi i64 [ %245, %244 ], [ %253, %246 ]
  store i64 %255, i64* %13, align 8
  br label %256

256:                                              ; preds = %338, %254
  %257 = load i64, i64* %13, align 8
  %258 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %259 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ult i64 %257, %260
  br i1 %261, label %262, label %341

262:                                              ; preds = %256
  %263 = load i32*, i32** %12, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %302, label %265

265:                                              ; preds = %262
  %266 = load i32*, i32** %10, align 8
  %267 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %268 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %267, i32 0, i32 4
  %269 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %268, align 8
  %270 = load i64, i64* %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %269, i64 %270
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @query_dname_compare(i32* %266, i32 %275)
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %301

278:                                              ; preds = %265
  %279 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %280 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %279, i32 0, i32 4
  %281 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %280, align 8
  %282 = load i64, i64* %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %281, i64 %282
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %286 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %285, i32 0, i32 4
  %287 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %286, align 8
  %288 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %289 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %292 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %290, %293
  %295 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %296 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %296, align 8
  %299 = add i64 %294, %297
  %300 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %287, i64 %299
  store %struct.TYPE_4__* %284, %struct.TYPE_4__** %300, align 8
  br label %301

301:                                              ; preds = %278, %265
  br label %337

302:                                              ; preds = %262
  %303 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %304 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %303, i32 0, i32 4
  %305 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %304, align 8
  %306 = load i64, i64* %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %305, i64 %306
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = load i32*, i32** %10, align 8
  %310 = load i64, i64* %11, align 8
  %311 = call i64 @rrset_has_signer(%struct.TYPE_4__* %308, i32* %309, i64 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %302
  %314 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %315 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %314, i32 0, i32 4
  %316 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %315, align 8
  %317 = load i64, i64* %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %316, i64 %317
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %321 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %320, i32 0, i32 4
  %322 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %321, align 8
  %323 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %324 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %327 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = add i64 %325, %328
  %330 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %331 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = add i64 %332, 1
  store i64 %333, i64* %331, align 8
  %334 = add i64 %329, %332
  %335 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %322, i64 %334
  store %struct.TYPE_4__* %319, %struct.TYPE_4__** %335, align 8
  br label %336

336:                                              ; preds = %313, %302
  br label %337

337:                                              ; preds = %336, %301
  br label %338

338:                                              ; preds = %337
  %339 = load i64, i64* %13, align 8
  %340 = add i64 %339, 1
  store i64 %340, i64* %13, align 8
  br label %256

341:                                              ; preds = %256
  %342 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %343 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %346 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = add i64 %344, %347
  %349 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %350 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = add i64 %348, %351
  %353 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %354 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %353, i32 0, i32 0
  store i64 %352, i64* %354, align 8
  ret void
}

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @rrset_has_signer(%struct.TYPE_4__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
