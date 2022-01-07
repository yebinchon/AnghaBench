; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_insert_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_insert_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i64, i32 }
%struct.val_neg_zone = type { i32, i64, i64, i32*, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64 }
%struct.val_neg_data = type { i64, i32, %struct.val_neg_data*, i32, %struct.val_neg_zone*, i64, i32 }

@sec_status_secure = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"negcache rr\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"out of memory inserting NSEC negative cache\00", align 1
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neg_insert_data(%struct.val_neg_cache* %0, %struct.val_neg_zone* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca %struct.val_neg_cache*, align 8
  %5 = alloca %struct.val_neg_zone*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca %struct.val_neg_data*, align 8
  %9 = alloca %struct.val_neg_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.val_neg_data*, align 8
  %14 = alloca %struct.val_neg_data*, align 8
  %15 = alloca %struct.val_neg_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %4, align 8
  store %struct.val_neg_zone* %1, %struct.val_neg_zone** %5, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %6, align 8
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %22 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dname_count_labels(i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %38, %struct.packed_rrset_data** %7, align 8
  %39 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %40 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @sec_status_secure, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %3
  %45 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %46 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @sec_status_unchecked, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %44
  br label %277

56:                                               ; preds = %50, %3
  %57 = load i32, i32* @VERB_ALGO, align 4
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %59 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ntohs(i32 %65)
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ntohs(i32 %70)
  %72 = call i32 @log_nametypeclass(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %61, i64 %66, i64 %71)
  %73 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call %struct.val_neg_data* @neg_closest_data_parent(%struct.val_neg_zone* %73, i32* %74, i64 %75, i32 %76)
  store %struct.val_neg_data* %77, %struct.val_neg_data** %8, align 8
  %78 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %79 = icmp ne %struct.val_neg_data* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %56
  %81 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %82 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i64 @query_dname_compare(i32 %83, i32* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %89 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @log_assert(i32 %92)
  %94 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  store %struct.val_neg_data* %94, %struct.val_neg_data** %9, align 8
  br label %154

95:                                               ; preds = %80, %56
  %96 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %97 = icmp ne %struct.val_neg_data* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %100 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i1 [ true, %95 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @log_assert(i32 %105)
  %107 = load i32*, i32** %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %111 = call %struct.val_neg_data* @neg_data_chain(i32* %107, i64 %108, i32 %109, %struct.val_neg_data* %110)
  store %struct.val_neg_data* %111, %struct.val_neg_data** %9, align 8
  %112 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %113 = icmp ne %struct.val_neg_data* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = call i32 @log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %277

116:                                              ; preds = %103
  %117 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %118 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %117, i32 0, i32 1
  store i32 0, i32* %118, align 8
  %119 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  store %struct.val_neg_data* %119, %struct.val_neg_data** %13, align 8
  br label %120

120:                                              ; preds = %151, %116
  %121 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %122 = icmp ne %struct.val_neg_data* %121, null
  br i1 %122, label %123, label %153

123:                                              ; preds = %120
  %124 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %125 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %124, i32 0, i32 2
  %126 = load %struct.val_neg_data*, %struct.val_neg_data** %125, align 8
  store %struct.val_neg_data* %126, %struct.val_neg_data** %14, align 8
  %127 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %128 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = add i64 56, %129
  %131 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %132 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %138 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %139 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %138, i32 0, i32 4
  store %struct.val_neg_zone* %137, %struct.val_neg_zone** %139, align 8
  %140 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %141 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %140, i32 0, i32 4
  %142 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %143 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %142, i32 0, i32 3
  %144 = call i32 @rbtree_insert(i32* %141, i32* %143)
  %145 = load %struct.val_neg_data*, %struct.val_neg_data** %14, align 8
  %146 = icmp eq %struct.val_neg_data* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %123
  %148 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %149 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %150 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %149, i32 0, i32 2
  store %struct.val_neg_data* %148, %struct.val_neg_data** %150, align 8
  br label %151

151:                                              ; preds = %147, %123
  %152 = load %struct.val_neg_data*, %struct.val_neg_data** %14, align 8
  store %struct.val_neg_data* %152, %struct.val_neg_data** %13, align 8
  br label %120

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153, %87
  %155 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %156 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %179, label %159

159:                                              ; preds = %154
  %160 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %161 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %160, i32 0, i32 1
  store i32 1, i32* %161, align 8
  %162 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  store %struct.val_neg_data* %162, %struct.val_neg_data** %15, align 8
  br label %163

163:                                              ; preds = %171, %159
  %164 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %165 = icmp ne %struct.val_neg_data* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %168 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %166
  %172 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %173 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %172, i32 0, i32 2
  %174 = load %struct.val_neg_data*, %struct.val_neg_data** %173, align 8
  store %struct.val_neg_data* %174, %struct.val_neg_data** %15, align 8
  br label %163

175:                                              ; preds = %163
  %176 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %177 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %178 = call i32 @neg_lru_front(%struct.val_neg_cache* %176, %struct.val_neg_data* %177)
  br label %183

179:                                              ; preds = %154
  %180 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %181 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %182 = call i32 @neg_lru_touch(%struct.val_neg_cache* %180, %struct.val_neg_data* %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %185 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @ntohs(i32 %187)
  %189 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %271

191:                                              ; preds = %183
  %192 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %193 = call i64 @nsec3_get_params(%struct.ub_packed_rrset_key* %192, i32 0, i32* %16, i64* %19, i32** %17, i64* %18)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %270

195:                                              ; preds = %191
  %196 = load i64, i64* %19, align 8
  %197 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %198 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ule i64 %196, %199
  br i1 %200, label %201, label %270

201:                                              ; preds = %195
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %204 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %202, %205
  br i1 %206, label %227, label %207

207:                                              ; preds = %201
  %208 = load i64, i64* %19, align 8
  %209 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %210 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %208, %211
  br i1 %212, label %227, label %213

213:                                              ; preds = %207
  %214 = load i64, i64* %18, align 8
  %215 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %216 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %214, %217
  br i1 %218, label %227, label %219

219:                                              ; preds = %213
  %220 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %221 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = load i64, i64* %18, align 8
  %225 = call i64 @memcmp(i32* %222, i32* %223, i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %270

227:                                              ; preds = %219, %213, %207, %201
  %228 = load i64, i64* %18, align 8
  %229 = icmp ugt i64 %228, 0
  br i1 %229, label %230, label %254

230:                                              ; preds = %227
  %231 = load i32*, i32** %17, align 8
  %232 = load i64, i64* %18, align 8
  %233 = call i32* @memdup(i32* %231, i64 %232)
  store i32* %233, i32** %20, align 8
  %234 = load i32*, i32** %20, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %253

236:                                              ; preds = %230
  %237 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %238 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @free(i32* %239)
  %241 = load i32*, i32** %20, align 8
  %242 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %243 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %242, i32 0, i32 3
  store i32* %241, i32** %243, align 8
  %244 = load i64, i64* %18, align 8
  %245 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %246 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load i64, i64* %19, align 8
  %248 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %249 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %252 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %236, %230
  br label %269

254:                                              ; preds = %227
  %255 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %256 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @free(i32* %257)
  %259 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %260 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %259, i32 0, i32 3
  store i32* null, i32** %260, align 8
  %261 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %262 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %261, i32 0, i32 2
  store i64 0, i64* %262, align 8
  %263 = load i64, i64* %19, align 8
  %264 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %265 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  %266 = load i32, i32* %16, align 4
  %267 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %268 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  br label %269

269:                                              ; preds = %254, %253
  br label %270

270:                                              ; preds = %269, %219, %195, %191
  br label %271

271:                                              ; preds = %270, %183
  %272 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %273 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %274 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %275 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %276 = call i32 @wipeout(%struct.val_neg_cache* %272, %struct.val_neg_zone* %273, %struct.val_neg_data* %274, %struct.ub_packed_rrset_key* %275)
  br label %277

277:                                              ; preds = %271, %114, %55
  ret void
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.val_neg_data* @neg_closest_data_parent(%struct.val_neg_zone*, i32*, i64, i32) #1

declare dso_local i64 @query_dname_compare(i32, i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.val_neg_data* @neg_data_chain(i32*, i64, i32, %struct.val_neg_data*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

declare dso_local i32 @neg_lru_front(%struct.val_neg_cache*, %struct.val_neg_data*) #1

declare dso_local i32 @neg_lru_touch(%struct.val_neg_cache*, %struct.val_neg_data*) #1

declare dso_local i64 @nsec3_get_params(%struct.ub_packed_rrset_key*, i32, i32*, i64*, i32**, i64*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32* @memdup(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @wipeout(%struct.val_neg_cache*, %struct.val_neg_zone*, %struct.val_neg_data*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
