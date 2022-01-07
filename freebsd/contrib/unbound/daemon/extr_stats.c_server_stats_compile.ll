; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_compile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_21__, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_29__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_29__ = type { i32, i64, i64 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64*, i64, i64, i64, %struct.TYPE_19__, i64, i64, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_30__ = type { %struct.listen_list* }
%struct.listen_list = type { %struct.TYPE_31__*, %struct.listen_list* }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32*, i32* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.ub_stats_info = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_22__, i32 }

@NUM_BUCKETS_HIST = common dso_local global i32 0, align 4
@comm_tcp_accept = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_compile(%struct.worker* %0, %struct.ub_stats_info* %1, i32 %2) #0 {
  %4 = alloca %struct.worker*, align 8
  %5 = alloca %struct.ub_stats_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.listen_list*, align 8
  store %struct.worker* %0, %struct.worker** %4, align 8
  store %struct.ub_stats_info* %1, %struct.ub_stats_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %10 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %9, i32 0, i32 7
  %11 = load %struct.worker*, %struct.worker** %4, align 8
  %12 = getelementptr inbounds %struct.worker, %struct.worker* %11, i32 0, i32 4
  %13 = bitcast %struct.TYPE_22__* %10 to i8*
  %14 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 184, i1 false)
  %15 = load %struct.worker*, %struct.worker** %4, align 8
  %16 = getelementptr inbounds %struct.worker, %struct.worker* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %23 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.worker*, %struct.worker** %4, align 8
  %25 = getelementptr inbounds %struct.worker, %struct.worker* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %31 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.worker*, %struct.worker** %4, align 8
  %33 = getelementptr inbounds %struct.worker, %struct.worker* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %39 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.worker*, %struct.worker** %4, align 8
  %41 = getelementptr inbounds %struct.worker, %struct.worker* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %47 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.worker*, %struct.worker** %4, align 8
  %49 = getelementptr inbounds %struct.worker, %struct.worker* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %55 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.worker*, %struct.worker** %4, align 8
  %57 = getelementptr inbounds %struct.worker, %struct.worker* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %64 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load %struct.worker*, %struct.worker** %4, align 8
  %66 = getelementptr inbounds %struct.worker, %struct.worker* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %73 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %struct.worker*, %struct.worker** %4, align 8
  %75 = getelementptr inbounds %struct.worker, %struct.worker* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @timehist_quartile(i32 %79, double 5.000000e-01)
  %81 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %82 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.worker*, %struct.worker** %4, align 8
  %84 = getelementptr inbounds %struct.worker, %struct.worker* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %90 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %88
  store i64 %93, i64* %91, align 8
  %94 = load %struct.worker*, %struct.worker** %4, align 8
  %95 = getelementptr inbounds %struct.worker, %struct.worker* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %101 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load %struct.worker*, %struct.worker** %4, align 8
  %106 = getelementptr inbounds %struct.worker, %struct.worker* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %112 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %110
  store i64 %115, i64* %113, align 8
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %139, %3
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 16
  br i1 %118, label %119, label %142

119:                                              ; preds = %116
  %120 = load %struct.worker*, %struct.worker** %4, align 8
  %121 = getelementptr inbounds %struct.worker, %struct.worker* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 6
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %131 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %129
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %119
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %116

142:                                              ; preds = %116
  %143 = load %struct.worker*, %struct.worker** %4, align 8
  %144 = getelementptr inbounds %struct.worker, %struct.worker* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %150 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 22
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NUM_BUCKETS_HIST, align 4
  %154 = call i32 @timehist_export(i32 %148, i32 %152, i32 %153)
  %155 = load %struct.worker*, %struct.worker** %4, align 8
  %156 = getelementptr inbounds %struct.worker, %struct.worker* %155, i32 0, i32 3
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %161 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 4
  store i64 %159, i64* %162, align 8
  %163 = load %struct.worker*, %struct.worker** %4, align 8
  %164 = getelementptr inbounds %struct.worker, %struct.worker* %163, i32 0, i32 3
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %169 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 5
  store i64 %167, i64* %170, align 8
  %171 = load %struct.worker*, %struct.worker** %4, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i64 @get_rrset_bogus(%struct.worker* %171, i32 %172)
  %174 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %175 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 6
  store i64 %173, i64* %176, align 8
  %177 = load %struct.worker*, %struct.worker** %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i64 @get_queries_ratelimit(%struct.worker* %177, i32 %178)
  %180 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %181 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 7
  store i64 %179, i64* %182, align 8
  %183 = load %struct.worker*, %struct.worker** %4, align 8
  %184 = getelementptr inbounds %struct.worker, %struct.worker* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = call i64 @count_slabhash_entries(i32* %186)
  %188 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %189 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 8
  store i64 %187, i64* %190, align 8
  %191 = load %struct.worker*, %struct.worker** %4, align 8
  %192 = getelementptr inbounds %struct.worker, %struct.worker* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = call i64 @count_slabhash_entries(i32* %195)
  %197 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %198 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 9
  store i64 %196, i64* %199, align 8
  %200 = load %struct.worker*, %struct.worker** %4, align 8
  %201 = getelementptr inbounds %struct.worker, %struct.worker* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = call i64 @count_slabhash_entries(i32* %205)
  %207 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %208 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 10
  store i64 %206, i64* %209, align 8
  %210 = load %struct.worker*, %struct.worker** %4, align 8
  %211 = getelementptr inbounds %struct.worker, %struct.worker* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %212, align 8
  %214 = icmp ne %struct.TYPE_26__* %213, null
  br i1 %214, label %215, label %226

215:                                              ; preds = %142
  %216 = load %struct.worker*, %struct.worker** %4, align 8
  %217 = getelementptr inbounds %struct.worker, %struct.worker* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = call i64 @count_slabhash_entries(i32* %221)
  %223 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %224 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 11
  store i64 %222, i64* %225, align 8
  br label %230

226:                                              ; preds = %142
  %227 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %228 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 11
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %226, %215
  %231 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %232 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 12
  store i64 0, i64* %233, align 8
  %234 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %235 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 13
  store i64 0, i64* %236, align 8
  %237 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %238 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 14
  store i64 0, i64* %239, align 8
  %240 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %241 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %240, i32 0, i32 7
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 15
  store i64 0, i64* %242, align 8
  %243 = load %struct.worker*, %struct.worker** %4, align 8
  %244 = getelementptr inbounds %struct.worker, %struct.worker* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %245, align 8
  %247 = icmp ne %struct.TYPE_29__* %246, null
  br i1 %247, label %248, label %320

248:                                              ; preds = %230
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load %struct.worker*, %struct.worker** %4, align 8
  %253 = getelementptr inbounds %struct.worker, %struct.worker* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %251
  %260 = load %struct.worker*, %struct.worker** %4, align 8
  %261 = getelementptr inbounds %struct.worker, %struct.worker* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  %265 = call i32 @lock_rw_wrlock(i32* %264)
  br label %273

266:                                              ; preds = %251, %248
  %267 = load %struct.worker*, %struct.worker** %4, align 8
  %268 = getelementptr inbounds %struct.worker, %struct.worker* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 0
  %272 = call i32 @lock_rw_rdlock(i32* %271)
  br label %273

273:                                              ; preds = %266, %259
  %274 = load %struct.worker*, %struct.worker** %4, align 8
  %275 = getelementptr inbounds %struct.worker, %struct.worker* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %281 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %280, i32 0, i32 7
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 16
  store i64 %279, i64* %282, align 8
  %283 = load %struct.worker*, %struct.worker** %4, align 8
  %284 = getelementptr inbounds %struct.worker, %struct.worker* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %290 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 17
  store i64 %288, i64* %291, align 8
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %313

294:                                              ; preds = %273
  %295 = load %struct.worker*, %struct.worker** %4, align 8
  %296 = getelementptr inbounds %struct.worker, %struct.worker* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %294
  %303 = load %struct.worker*, %struct.worker** %4, align 8
  %304 = getelementptr inbounds %struct.worker, %struct.worker* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 2
  store i64 0, i64* %307, align 8
  %308 = load %struct.worker*, %struct.worker** %4, align 8
  %309 = getelementptr inbounds %struct.worker, %struct.worker* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 1
  store i64 0, i64* %312, align 8
  br label %313

313:                                              ; preds = %302, %294, %273
  %314 = load %struct.worker*, %struct.worker** %4, align 8
  %315 = getelementptr inbounds %struct.worker, %struct.worker* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 0
  %319 = call i32 @lock_rw_unlock(i32* %318)
  br label %320

320:                                              ; preds = %313, %230
  %321 = call i64 (...) @tcp_req_info_get_stream_buffer_size()
  %322 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %323 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 18
  store i64 %321, i64* %324, align 8
  %325 = load %struct.worker*, %struct.worker** %4, align 8
  %326 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %327 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %326, i32 0, i32 7
  %328 = load i32, i32* %6, align 4
  %329 = call i32 @set_neg_cache_stats(%struct.worker* %325, %struct.TYPE_22__* %327, i32 %328)
  %330 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %331 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %330, i32 0, i32 7
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 21
  store i64 0, i64* %332, align 8
  %333 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %334 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %333, i32 0, i32 7
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 20
  store i64 0, i64* %335, align 8
  %336 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %337 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %336, i32 0, i32 7
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 19
  store i64 0, i64* %338, align 8
  %339 = load %struct.worker*, %struct.worker** %4, align 8
  %340 = getelementptr inbounds %struct.worker, %struct.worker* %339, i32 0, i32 1
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 0
  %343 = load %struct.listen_list*, %struct.listen_list** %342, align 8
  store %struct.listen_list* %343, %struct.listen_list** %8, align 8
  br label %344

344:                                              ; preds = %367, %320
  %345 = load %struct.listen_list*, %struct.listen_list** %8, align 8
  %346 = icmp ne %struct.listen_list* %345, null
  br i1 %346, label %347, label %371

347:                                              ; preds = %344
  %348 = load %struct.listen_list*, %struct.listen_list** %8, align 8
  %349 = getelementptr inbounds %struct.listen_list, %struct.listen_list* %348, i32 0, i32 0
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @comm_tcp_accept, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %366

355:                                              ; preds = %347
  %356 = load %struct.listen_list*, %struct.listen_list** %8, align 8
  %357 = getelementptr inbounds %struct.listen_list, %struct.listen_list* %356, i32 0, i32 0
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %362 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %361, i32 0, i32 7
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 19
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, %360
  store i64 %365, i64* %363, align 8
  br label %366

366:                                              ; preds = %355, %347
  br label %367

367:                                              ; preds = %366
  %368 = load %struct.listen_list*, %struct.listen_list** %8, align 8
  %369 = getelementptr inbounds %struct.listen_list, %struct.listen_list* %368, i32 0, i32 1
  %370 = load %struct.listen_list*, %struct.listen_list** %369, align 8
  store %struct.listen_list* %370, %struct.listen_list** %8, align 8
  br label %344

371:                                              ; preds = %344
  %372 = load i32, i32* %6, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %385

374:                                              ; preds = %371
  %375 = load %struct.worker*, %struct.worker** %4, align 8
  %376 = getelementptr inbounds %struct.worker, %struct.worker* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %374
  %383 = load %struct.worker*, %struct.worker** %4, align 8
  %384 = call i32 @worker_stats_clear(%struct.worker* %383)
  br label %385

385:                                              ; preds = %382, %374, %371
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @timehist_quartile(i32, double) #2

declare dso_local i32 @timehist_export(i32, i32, i32) #2

declare dso_local i64 @get_rrset_bogus(%struct.worker*, i32) #2

declare dso_local i64 @get_queries_ratelimit(%struct.worker*, i32) #2

declare dso_local i64 @count_slabhash_entries(i32*) #2

declare dso_local i32 @lock_rw_wrlock(i32*) #2

declare dso_local i32 @lock_rw_rdlock(i32*) #2

declare dso_local i32 @lock_rw_unlock(i32*) #2

declare dso_local i64 @tcp_req_info_get_stream_buffer_size(...) #2

declare dso_local i32 @set_neg_cache_stats(%struct.worker*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @worker_stats_clear(%struct.worker*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
