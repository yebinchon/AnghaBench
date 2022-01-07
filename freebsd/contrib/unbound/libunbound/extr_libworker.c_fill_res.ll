; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_fill_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_fill_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32, i8**, i32*, i32* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }
%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i64, i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.packed_rrset_data = type { i32, i32*, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_result*, %struct.ub_packed_rrset_key*, i32*, %struct.query_info*, %struct.reply_info*)* @fill_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_res(%struct.ub_result* %0, %struct.ub_packed_rrset_key* %1, i32* %2, %struct.query_info* %3, %struct.reply_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ub_result*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.reply_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_result* %0, %struct.ub_result** %7, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.query_info* %3, %struct.query_info** %10, align 8
  store %struct.reply_info* %4, %struct.reply_info** %11, align 8
  %16 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %17 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %19 = icmp ne %struct.ub_packed_rrset_key* %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @fill_canon(%struct.ub_result* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %254

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %32 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %41 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = call i64 @calloc(i32 1, i32 8)
  %44 = inttoptr i64 %43 to i8**
  %45 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %46 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %45, i32 0, i32 1
  store i8** %44, i8*** %46, align 8
  %47 = call i64 @calloc(i32 1, i32 4)
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %50 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %52 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %57 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br label %60

60:                                               ; preds = %55, %42
  %61 = phi i1 [ false, %42 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  br label %254

63:                                               ; preds = %5
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %65 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %68, %struct.packed_rrset_data** %13, align 8
  %69 = load %struct.query_info*, %struct.query_info** %10, align 8
  %70 = getelementptr inbounds %struct.query_info, %struct.query_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @query_dname_compare(i32 %71, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %63
  %79 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @fill_canon(%struct.ub_result* %79, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %254

87:                                               ; preds = %78
  br label %91

88:                                               ; preds = %63
  %89 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %90 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %88, %87
  %92 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %93 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = call i64 @calloc(i32 %95, i32 8)
  %97 = inttoptr i64 %96 to i8**
  %98 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %99 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %98, i32 0, i32 1
  store i8** %97, i8*** %99, align 8
  %100 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %101 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = call i64 @calloc(i32 %103, i32 4)
  %105 = inttoptr i64 %104 to i32*
  %106 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %107 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %106, i32 0, i32 2
  store i32* %105, i32** %107, align 8
  %108 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %109 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = icmp ne i8** %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %91
  %113 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %114 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112, %91
  store i32 0, i32* %6, align 4
  br label %254

118:                                              ; preds = %112
  store i64 0, i64* %12, align 8
  br label %119

119:                                              ; preds = %168, %118
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %122 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %120, %124
  br i1 %125, label %126, label %171

126:                                              ; preds = %119
  %127 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %128 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 2
  %134 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %135 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %140 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %139, i32 0, i32 3
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 2
  %146 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %147 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = call i8* @memdup(i64 %145, i64 %152)
  %154 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %155 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds i8*, i8** %156, i64 %157
  store i8* %153, i8** %158, align 8
  %159 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %160 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %254

167:                                              ; preds = %126
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %12, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %12, align 8
  br label %119

171:                                              ; preds = %119
  %172 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %173 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %220

176:                                              ; preds = %171
  %177 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %178 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %182 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  store i64 0, i64* %14, align 8
  br label %183

183:                                              ; preds = %216, %176
  %184 = load i64, i64* %14, align 8
  %185 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %186 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ult i64 %184, %187
  br i1 %188, label %189, label %219

189:                                              ; preds = %183
  %190 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %191 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %190, i32 0, i32 3
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %191, align 8
  %193 = load i64, i64* %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %192, i64 %193
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %199, %struct.packed_rrset_data** %15, align 8
  %200 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %201 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %205 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %189
  %209 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %210 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %214 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %208, %189
  br label %216

216:                                              ; preds = %215
  %217 = load i64, i64* %14, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %14, align 8
  br label %183

219:                                              ; preds = %183
  br label %220

220:                                              ; preds = %219, %171
  %221 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %222 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %227 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %232 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %236 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %230, %225, %220
  %238 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %239 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %238, i32 0, i32 1
  %240 = load i8**, i8*** %239, align 8
  %241 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %242 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %240, i64 %244
  store i8* null, i8** %245, align 8
  %246 = load %struct.ub_result*, %struct.ub_result** %7, align 8
  %247 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %250 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  store i32 0, i32* %253, align 4
  store i32 1, i32* %6, align 4
  br label %254

254:                                              ; preds = %237, %166, %117, %86, %60, %28
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local i32 @fill_canon(%struct.ub_result*, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @query_dname_compare(i32, i32*) #1

declare dso_local i8* @memdup(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
