; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_rrset_canonical_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_rrset_canonical_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { i64, i32, i64, i64, i64, i64*, i32**, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ub_packed_rrset_key* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.rbtree_type = type { i64 }
%struct.canon_rr = type { i64, i32 }
%struct.packed_rrset_data = type { i64, i32, i64, i64, i64, i64*, i32**, %struct.TYPE_4__, %struct.TYPE_3__ }

@canonical_tree_compare = common dso_local global i32 0, align 4
@RR_COUNT_MAX = common dso_local global i32 0, align 4
@RBTREE_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrset_canonical_equal(%struct.regional* %0, %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca %struct.rbtree_type, align 8
  %9 = alloca %struct.rbtree_type, align 8
  %10 = alloca %struct.canon_rr*, align 8
  %11 = alloca %struct.canon_rr*, align 8
  %12 = alloca %struct.canon_rr*, align 8
  %13 = alloca %struct.canon_rr*, align 8
  %14 = alloca %struct.packed_rrset_data*, align 8
  %15 = alloca %struct.packed_rrset_data*, align 8
  %16 = alloca %struct.ub_packed_rrset_key, align 8
  %17 = alloca %struct.packed_rrset_data, align 8
  %18 = alloca [2 x i64], align 16
  %19 = alloca [2 x i32*], align 16
  store %struct.regional* %0, %struct.regional** %5, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %6, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %7, align 8
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %24 = bitcast %struct.ub_packed_rrset_key* %23 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %24, %struct.packed_rrset_data** %14, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %27, align 8
  %29 = bitcast %struct.ub_packed_rrset_key* %28 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %29, %struct.packed_rrset_data** %15, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %80, label %39

39:                                               ; preds = %3
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %80, label %49

49:                                               ; preds = %39
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %51 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %80, label %59

59:                                               ; preds = %49
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %65 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %80, label %69

69:                                               ; preds = %59
  %70 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @query_dname_compare(i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69, %59, %49, %39, %3
  store i32 0, i32* %4, align 4
  br label %255

81:                                               ; preds = %69
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %83 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %86 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %121, label %89

89:                                               ; preds = %81
  %90 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %91 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %94 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %121, label %97

97:                                               ; preds = %89
  %98 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %99 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %102 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %121, label %105

105:                                              ; preds = %97
  %106 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %107 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %110 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %115 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %118 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113, %105, %97, %89, %81
  store i32 0, i32* %4, align 4
  br label %255

122:                                              ; preds = %113
  %123 = call i32 @memset(%struct.ub_packed_rrset_key* %16, i32 0, i32 104)
  %124 = bitcast %struct.packed_rrset_data* %17 to %struct.ub_packed_rrset_key*
  %125 = call i32 @memset(%struct.ub_packed_rrset_key* %124, i32 0, i32 104)
  %126 = bitcast %struct.packed_rrset_data* %17 to %struct.ub_packed_rrset_key*
  %127 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %16, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store %struct.ub_packed_rrset_key* %126, %struct.ub_packed_rrset_key** %128, align 8
  %129 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %17, i32 0, i32 1
  store i32 2, i32* %129, align 8
  %130 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %131 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %17, i32 0, i32 5
  store i64* %130, i64** %131, align 8
  %132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %133 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %17, i32 0, i32 6
  store i32** %132, i32*** %133, align 8
  %134 = call i32 @rbtree_init(%struct.rbtree_type* %8, i32* @canonical_tree_compare)
  %135 = call i32 @rbtree_init(%struct.rbtree_type* %9, i32* @canonical_tree_compare)
  %136 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %137 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RR_COUNT_MAX, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %122
  %142 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %143 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @RR_COUNT_MAX, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %122
  store i32 1, i32* %4, align 4
  br label %255

148:                                              ; preds = %141
  %149 = load %struct.regional*, %struct.regional** %5, align 8
  %150 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %151 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = mul i64 16, %153
  %155 = trunc i64 %154 to i32
  %156 = call %struct.canon_rr* @regional_alloc(%struct.regional* %149, i32 %155)
  store %struct.canon_rr* %156, %struct.canon_rr** %10, align 8
  %157 = load %struct.regional*, %struct.regional** %5, align 8
  %158 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %159 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = mul i64 16, %161
  %163 = trunc i64 %162 to i32
  %164 = call %struct.canon_rr* @regional_alloc(%struct.regional* %157, i32 %163)
  store %struct.canon_rr* %164, %struct.canon_rr** %11, align 8
  %165 = load %struct.canon_rr*, %struct.canon_rr** %10, align 8
  %166 = icmp ne %struct.canon_rr* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %148
  %168 = load %struct.canon_rr*, %struct.canon_rr** %11, align 8
  %169 = icmp ne %struct.canon_rr* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %167, %148
  store i32 1, i32* %4, align 4
  br label %255

171:                                              ; preds = %167
  %172 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %173 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %174 = bitcast %struct.packed_rrset_data* %173 to %struct.ub_packed_rrset_key*
  %175 = load %struct.canon_rr*, %struct.canon_rr** %10, align 8
  %176 = call i32 @canonical_sort(%struct.ub_packed_rrset_key* %172, %struct.ub_packed_rrset_key* %174, %struct.rbtree_type* %8, %struct.canon_rr* %175)
  %177 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %178 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %179 = bitcast %struct.packed_rrset_data* %178 to %struct.ub_packed_rrset_key*
  %180 = load %struct.canon_rr*, %struct.canon_rr** %11, align 8
  %181 = call i32 @canonical_sort(%struct.ub_packed_rrset_key* %177, %struct.ub_packed_rrset_key* %179, %struct.rbtree_type* %9, %struct.canon_rr* %180)
  %182 = getelementptr inbounds %struct.rbtree_type, %struct.rbtree_type* %8, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.rbtree_type, %struct.rbtree_type* %9, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %183, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %255

188:                                              ; preds = %171
  %189 = call i64 @rbtree_first(%struct.rbtree_type* %8)
  %190 = inttoptr i64 %189 to %struct.canon_rr*
  store %struct.canon_rr* %190, %struct.canon_rr** %12, align 8
  %191 = call i64 @rbtree_first(%struct.rbtree_type* %9)
  %192 = inttoptr i64 %191 to %struct.canon_rr*
  store %struct.canon_rr* %192, %struct.canon_rr** %13, align 8
  br label %193

193:                                              ; preds = %245, %188
  %194 = load %struct.canon_rr*, %struct.canon_rr** %12, align 8
  %195 = load i64, i64* @RBTREE_NULL, align 8
  %196 = inttoptr i64 %195 to %struct.canon_rr*
  %197 = icmp ne %struct.canon_rr* %194, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.canon_rr*, %struct.canon_rr** %13, align 8
  %200 = load i64, i64* @RBTREE_NULL, align 8
  %201 = inttoptr i64 %200 to %struct.canon_rr*
  %202 = icmp ne %struct.canon_rr* %199, %201
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i1 [ false, %193 ], [ %202, %198 ]
  br i1 %204, label %205, label %254

205:                                              ; preds = %203
  %206 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %207 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %206, i32 0, i32 5
  %208 = load i64*, i64** %207, align 8
  %209 = load %struct.canon_rr*, %struct.canon_rr** %12, align 8
  %210 = getelementptr inbounds %struct.canon_rr, %struct.canon_rr* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  store i64 %213, i64* %214, align 16
  %215 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %216 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %215, i32 0, i32 5
  %217 = load i64*, i64** %216, align 8
  %218 = load %struct.canon_rr*, %struct.canon_rr** %13, align 8
  %219 = getelementptr inbounds %struct.canon_rr, %struct.canon_rr* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  store i64 %222, i64* %223, align 8
  %224 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %225 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %224, i32 0, i32 6
  %226 = load i32**, i32*** %225, align 8
  %227 = load %struct.canon_rr*, %struct.canon_rr** %12, align 8
  %228 = getelementptr inbounds %struct.canon_rr, %struct.canon_rr* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i32*, i32** %226, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  store i32* %231, i32** %232, align 16
  %233 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %234 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %233, i32 0, i32 6
  %235 = load i32**, i32*** %234, align 8
  %236 = load %struct.canon_rr*, %struct.canon_rr** %13, align 8
  %237 = getelementptr inbounds %struct.canon_rr, %struct.canon_rr* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32*, i32** %235, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 1
  store i32* %240, i32** %241, align 8
  %242 = call i64 @canonical_compare(%struct.ub_packed_rrset_key* %16, i32 0, i32 1)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %205
  store i32 0, i32* %4, align 4
  br label %255

245:                                              ; preds = %205
  %246 = load %struct.canon_rr*, %struct.canon_rr** %12, align 8
  %247 = getelementptr inbounds %struct.canon_rr, %struct.canon_rr* %246, i32 0, i32 1
  %248 = call i64 @rbtree_next(i32* %247)
  %249 = inttoptr i64 %248 to %struct.canon_rr*
  store %struct.canon_rr* %249, %struct.canon_rr** %12, align 8
  %250 = load %struct.canon_rr*, %struct.canon_rr** %13, align 8
  %251 = getelementptr inbounds %struct.canon_rr, %struct.canon_rr* %250, i32 0, i32 1
  %252 = call i64 @rbtree_next(i32* %251)
  %253 = inttoptr i64 %252 to %struct.canon_rr*
  store %struct.canon_rr* %253, %struct.canon_rr** %13, align 8
  br label %193

254:                                              ; preds = %203
  store i32 1, i32* %4, align 4
  br label %255

255:                                              ; preds = %254, %244, %187, %170, %147, %121, %80
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @memset(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i32 @rbtree_init(%struct.rbtree_type*, i32*) #1

declare dso_local %struct.canon_rr* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @canonical_sort(%struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, %struct.rbtree_type*, %struct.canon_rr*) #1

declare dso_local i64 @rbtree_first(%struct.rbtree_type*) #1

declare dso_local i64 @canonical_compare(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i64 @rbtree_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
