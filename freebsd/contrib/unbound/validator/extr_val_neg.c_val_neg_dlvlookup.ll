; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_dlvlookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_dlvlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i32 }
%struct.rrset_cache = type { i32 }
%struct.val_neg_zone = type { i32, i32*, i64, %struct.val_neg_zone*, i32 }
%struct.val_neg_data = type { i32, i32*, %struct.val_neg_data*, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.packed_rrset_data = type { i64, i64 }
%struct.query_info = type { i32*, i32, i32, i32* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"negcache dlvlookup\00", align 1
@LDNS_RR_TYPE_DLV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"negcache zone\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"negcache rr\00", align 1
@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@PACKED_RRSET_NSEC_AT_APEX = common dso_local global i64 0, align 8
@sec_status_secure = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"negcache got secure rrset\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"negcache not proven\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"negcache DLV denial proven\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_neg_dlvlookup(%struct.val_neg_cache* %0, i32* %1, i64 %2, i32 %3, %struct.rrset_cache* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.val_neg_cache*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rrset_cache*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.val_neg_zone*, align 8
  %15 = alloca %struct.val_neg_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  %18 = alloca %struct.packed_rrset_data*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.query_info, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.rrset_cache* %4, %struct.rrset_cache** %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %23 = icmp ne %struct.val_neg_cache* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %233

25:                                               ; preds = %6
  %26 = load i32, i32* @VERB_ALGO, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @LDNS_RR_TYPE_DLV, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @log_nametypeclass(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @dname_count_labels(i32* %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %34 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %33, i32 0, i32 0
  %35 = call i32 @lock_basic_lock(i32* %34)
  %36 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache* %36, i32* %37, i64 %38, i32 %39, i32 %40)
  store %struct.val_neg_zone* %41, %struct.val_neg_zone** %14, align 8
  br label %42

42:                                               ; preds = %53, %25
  %43 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %44 = icmp ne %struct.val_neg_zone* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %47 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %55 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %54, i32 0, i32 3
  %56 = load %struct.val_neg_zone*, %struct.val_neg_zone** %55, align 8
  store %struct.val_neg_zone* %56, %struct.val_neg_zone** %14, align 8
  br label %42

57:                                               ; preds = %51
  %58 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %59 = icmp ne %struct.val_neg_zone* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %62 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %61, i32 0, i32 0
  %63 = call i32 @lock_basic_unlock(i32* %62)
  store i32 0, i32* %7, align 4
  br label %233

64:                                               ; preds = %57
  %65 = load i32, i32* @VERB_ALGO, align 4
  %66 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %67 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %70 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @log_nametypeclass(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %68, i32 0, i32 %71)
  %73 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %74 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %79 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %78, i32 0, i32 0
  %80 = call i32 @lock_basic_unlock(i32* %79)
  store i32 0, i32* %7, align 4
  br label %233

81:                                               ; preds = %64
  %82 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @neg_closest_data(%struct.val_neg_zone* %82, i32* %83, i64 %84, i32 %85, %struct.val_neg_data** %15)
  br label %87

87:                                               ; preds = %98, %81
  %88 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %89 = icmp ne %struct.val_neg_data* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %92 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %87
  %97 = phi i1 [ false, %87 ], [ %95, %90 ]
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %100 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %99, i32 0, i32 2
  %101 = load %struct.val_neg_data*, %struct.val_neg_data** %100, align 8
  store %struct.val_neg_data* %101, %struct.val_neg_data** %15, align 8
  br label %87

102:                                              ; preds = %96
  %103 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %104 = icmp ne %struct.val_neg_data* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %107 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %106, i32 0, i32 0
  %108 = call i32 @lock_basic_unlock(i32* %107)
  store i32 0, i32* %7, align 4
  br label %233

109:                                              ; preds = %102
  %110 = load i32, i32* @VERB_ALGO, align 4
  %111 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %112 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %115 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %116 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @log_nametypeclass(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %113, i32 %114, i32 %117)
  store i64 0, i64* %19, align 8
  %119 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %120 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %123 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @query_dname_compare(i32* %121, i32* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %109
  %128 = load i64, i64* @PACKED_RRSET_NSEC_AT_APEX, align 8
  store i64 %128, i64* %19, align 8
  br label %129

129:                                              ; preds = %127, %109
  %130 = load %struct.rrset_cache*, %struct.rrset_cache** %12, align 8
  %131 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %132 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %135 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %138 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %139 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache* %130, i32* %133, i32 %136, i32 %137, i32 %140, i64 %141, i64 %142, i32 0)
  store %struct.ub_packed_rrset_key* %143, %struct.ub_packed_rrset_key** %17, align 8
  %144 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %145 = icmp ne %struct.ub_packed_rrset_key* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %129
  %147 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %148 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %147, i32 0, i32 0
  %149 = call i32 @lock_basic_unlock(i32* %148)
  store i32 0, i32* %7, align 4
  br label %233

150:                                              ; preds = %129
  %151 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %152 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %155, %struct.packed_rrset_data** %18, align 8
  %156 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  %157 = icmp ne %struct.packed_rrset_data* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load i64, i64* %13, align 8
  %160 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  %161 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %159, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %158, %150
  %165 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %166 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = call i32 @lock_rw_unlock(i32* %167)
  %169 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %170 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %171 = call i32 @neg_delete_data(%struct.val_neg_cache* %169, %struct.val_neg_data* %170)
  %172 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %173 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %172, i32 0, i32 0
  %174 = call i32 @lock_basic_unlock(i32* %173)
  store i32 0, i32* %7, align 4
  br label %233

175:                                              ; preds = %158
  %176 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  %177 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @sec_status_secure, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %183 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = call i32 @lock_rw_unlock(i32* %184)
  %186 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %187 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %188 = call i32 @neg_delete_data(%struct.val_neg_cache* %186, %struct.val_neg_data* %187)
  %189 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %190 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %189, i32 0, i32 0
  %191 = call i32 @lock_basic_unlock(i32* %190)
  store i32 0, i32* %7, align 4
  br label %233

192:                                              ; preds = %175
  %193 = load i32, i32* @VERB_ALGO, align 4
  %194 = call i32 @verbose(i32 %193, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 3
  store i32* %195, i32** %196, align 8
  %197 = load i32, i32* @LDNS_RR_TYPE_DLV, align 4
  %198 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 2
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  store i32 %199, i32* %200, align 8
  %201 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  store i32* null, i32** %201, align 8
  %202 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %203 = call i32 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %202, %struct.query_info* %21, i32** %20)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %192
  %206 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = call i32 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %206, i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %205
  %211 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %212 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = call i32 @lock_rw_unlock(i32* %213)
  %215 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %216 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %215, i32 0, i32 0
  %217 = call i32 @lock_basic_unlock(i32* %216)
  %218 = load i32, i32* @VERB_ALGO, align 4
  %219 = call i32 @verbose(i32 %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %233

220:                                              ; preds = %205, %192
  %221 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %222 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = call i32 @lock_rw_unlock(i32* %223)
  %225 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %226 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %227 = call i32 @neg_lru_touch(%struct.val_neg_cache* %225, %struct.val_neg_data* %226)
  %228 = load %struct.val_neg_cache*, %struct.val_neg_cache** %8, align 8
  %229 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %228, i32 0, i32 0
  %230 = call i32 @lock_basic_unlock(i32* %229)
  %231 = load i32, i32* @VERB_ALGO, align 4
  %232 = call i32 @verbose(i32 %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %233

233:                                              ; preds = %220, %210, %181, %164, %146, %105, %77, %60, %24
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache*, i32*, i64, i32, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @neg_closest_data(%struct.val_neg_zone*, i32*, i64, i32, %struct.val_neg_data**) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache*, i32*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @neg_delete_data(%struct.val_neg_cache*, %struct.val_neg_data*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @nsec_proves_nodata(%struct.ub_packed_rrset_key*, %struct.query_info*, i32**) #1

declare dso_local i32 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32*) #1

declare dso_local i32 @neg_lru_touch(%struct.val_neg_cache*, %struct.val_neg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
