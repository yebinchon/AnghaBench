; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_calculate_left_hand_side.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_calculate_left_hand_side.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_NOT_READY_TO_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"'%s@%ld' must be ancestrally related to '%s@%ld'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_mergeinfo_inherited = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_24__**, i8**, i8**, %struct.TYPE_25__*, i32*, %struct.TYPE_24__*, i32*, i32*, %struct.TYPE_23__*, i32*, i32*)* @calculate_left_hand_side to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @calculate_left_hand_side(%struct.TYPE_24__** %0, i8** %1, i8** %2, %struct.TYPE_25__* %3, i32* %4, %struct.TYPE_24__* %5, i32* %6, i32* %7, %struct.TYPE_23__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_24__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_24__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %13, align 8
  store i8** %1, i8*** %14, align 8
  store i8** %2, i8*** %15, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %16, align 8
  store i32* %4, i32** %17, align 8
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %35 = load i32*, i32** %23, align 8
  %36 = call i32* @svn_pool_create(i32* %35)
  store i32* %36, i32** %26, align 8
  %37 = load i32*, i32** %23, align 8
  %38 = call i8* @apr_hash_make(i32* %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %28, align 8
  %40 = load i32*, i32** %19, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %23, align 8
  %45 = call i32 @session_url_is(i32* %40, i32 %43, i32* %44)
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %20, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %23, align 8
  %53 = call i32 @session_url_is(i32* %47, i32 %51, i32* %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %55, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @svn_hash_gets(i32* %56, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %11
  %63 = load i32*, i32** %17, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = call i8* @apr_hash_make(i32* %67)
  %69 = call i32 @svn_hash_sets(i32* %63, i8* %66, i8* %68)
  br label %70

70:                                               ; preds = %62, %11
  %71 = load i32*, i32** %23, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = call i32* @apr_hash_first(i32* %71, i32* %72)
  store i32* %73, i32** %27, align 8
  br label %74

74:                                               ; preds = %120, %70
  %75 = load i32*, i32** %27, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %123

77:                                               ; preds = %74
  %78 = load i32*, i32** %27, align 8
  %79 = call i8* @apr_hash_this_key(i32* %78)
  store i8* %79, i8** %31, align 8
  %80 = load i32*, i32** %26, align 8
  %81 = call i32 @svn_pool_clear(i32* %80)
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %31, align 8
  %86 = load i32*, i32** %23, align 8
  %87 = load i32*, i32** %26, align 8
  %88 = call i32 @svn_wc__node_get_repos_info(i32* null, i8** %33, i32* null, i32* null, i32 %84, i8* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %33, align 8
  %103 = load i32*, i32** %26, align 8
  %104 = call %struct.TYPE_24__* @svn_client__pathrev_create_with_relpath(i32 %93, i32 %97, i32 %101, i8* %102, i32* %103)
  store %struct.TYPE_24__* %104, %struct.TYPE_24__** %32, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %111 = load i32*, i32** %20, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = call i32 @svn_client__get_history_as_mergeinfo(i8** %34, i32* null, %struct.TYPE_24__* %105, i32 %109, i64 %110, i32* %111, %struct.TYPE_23__* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i32*, i32** %28, align 8
  %117 = load i8*, i8** %33, align 8
  %118 = load i8*, i8** %34, align 8
  %119 = call i32 @svn_hash_sets(i32* %116, i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %77
  %121 = load i32*, i32** %27, align 8
  %122 = call i32* @apr_hash_next(i32* %121)
  store i32* %122, i32** %27, align 8
  br label %74

123:                                              ; preds = %74
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = load i32*, i32** %20, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %129 = load i32*, i32** %26, align 8
  %130 = load i32*, i32** %26, align 8
  %131 = call i32 @svn_client__get_youngest_common_ancestor(%struct.TYPE_24__** %30, %struct.TYPE_24__* %124, %struct.TYPE_26__* %126, i32* %127, %struct.TYPE_23__* %128, i32* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %134 = icmp ne %struct.TYPE_24__* %133, null
  br i1 %134, label %153, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %137 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32* @svn_error_createf(i32 %136, i32* null, i32 %137, i32 %140, i64 %143, i32 %147, i32 %151)
  store i32* %152, i32** %12, align 8
  br label %235

153:                                              ; preds = %123
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load i32*, i32** %26, align 8
  %163 = call i32 @svn_pool_destroy(i32* %162)
  %164 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %164, i32** %12, align 8
  br label %235

165:                                              ; preds = %153
  %166 = load i32*, i32** %19, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %174 = load i32, i32* @FALSE, align 4
  %175 = load i32, i32* @TRUE, align 4
  %176 = load i32*, i32** %26, align 8
  %177 = load i32*, i32** %26, align 8
  %178 = call i32 @svn_client__get_repos_mergeinfo_catalog(i8** %24, i32* %166, i32 %169, i64 %172, i32 %173, i32 %174, i32 %175, i32* %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load i8*, i8** %24, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %165
  %183 = load i32*, i32** %26, align 8
  %184 = call i8* @apr_hash_make(i32* %183)
  store i8* %184, i8** %24, align 8
  br label %185

185:                                              ; preds = %182, %165
  %186 = load i8*, i8** %24, align 8
  %187 = load i32*, i32** %22, align 8
  %188 = call i8* @svn_mergeinfo_catalog_dup(i8* %186, i32* %187)
  %189 = load i8**, i8*** %14, align 8
  store i8* %188, i8** %189, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i8*, i8** %24, align 8
  %194 = load i32*, i32** %28, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %197 = load i32*, i32** %19, align 8
  %198 = load i32*, i32** %20, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %200 = load i32*, i32** %26, align 8
  %201 = load i32*, i32** %26, align 8
  %202 = call i32 @find_unmerged_mergeinfo(i8** %25, i64* %29, i64 %192, i8* %193, i32* %194, %struct.TYPE_24__* %195, %struct.TYPE_25__* %196, i32* %197, i32* %198, %struct.TYPE_23__* %199, i32* %200, i32* %201)
  %203 = call i32 @SVN_ERR(i32 %202)
  %204 = load i8*, i8** %25, align 8
  %205 = load i32*, i32** %26, align 8
  %206 = call i32 @svn_client__elide_mergeinfo_catalog(i8* %204, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  %208 = load i8*, i8** %25, align 8
  %209 = load i32*, i32** %22, align 8
  %210 = call i8* @svn_mergeinfo_catalog_dup(i8* %208, i32* %209)
  %211 = load i8**, i8*** %15, align 8
  store i8* %210, i8** %211, align 8
  %212 = load i64, i64* %29, align 8
  %213 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %185
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %217 = load i32*, i32** %22, align 8
  %218 = call %struct.TYPE_24__* @svn_client__pathrev_dup(%struct.TYPE_24__* %216, i32* %217)
  %219 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  store %struct.TYPE_24__* %218, %struct.TYPE_24__** %219, align 8
  br label %231

220:                                              ; preds = %185
  %221 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 1
  %225 = load i64, i64* %29, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %227 = load i32*, i32** %22, align 8
  %228 = load i32*, i32** %26, align 8
  %229 = call i32 @svn_client__repos_location(%struct.TYPE_24__** %221, i32* %222, %struct.TYPE_26__* %224, i64 %225, %struct.TYPE_23__* %226, i32* %227, i32* %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  br label %231

231:                                              ; preds = %220, %215
  %232 = load i32*, i32** %26, align 8
  %233 = call i32 @svn_pool_destroy(i32* %232)
  %234 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %234, i32** %12, align 8
  br label %235

235:                                              ; preds = %231, %161, %135
  %236 = load i32*, i32** %12, align 8
  ret i32* %236
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @session_url_is(i32*, i32, i32*) #1

declare dso_local i32 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i8**, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_client__pathrev_create_with_relpath(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_client__get_history_as_mergeinfo(i8**, i32*, %struct.TYPE_24__*, i32, i64, i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_client__get_youngest_common_ancestor(%struct.TYPE_24__**, %struct.TYPE_24__*, %struct.TYPE_26__*, i32*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_client__get_repos_mergeinfo_catalog(i8**, i32*, i32, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_mergeinfo_catalog_dup(i8*, i32*) #1

declare dso_local i32 @find_unmerged_mergeinfo(i8**, i64*, i64, i8*, i32*, %struct.TYPE_24__*, %struct.TYPE_25__*, i32*, i32*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @svn_client__elide_mergeinfo_catalog(i8*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_client__pathrev_dup(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @svn_client__repos_location(%struct.TYPE_24__**, i32*, %struct.TYPE_26__*, i64, %struct.TYPE_23__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
