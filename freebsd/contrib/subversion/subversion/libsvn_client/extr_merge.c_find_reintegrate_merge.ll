; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_reintegrate_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_reintegrate_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64 }
%struct.TYPE_40__ = type { i32, %struct.TYPE_38__*, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64, i64, i64 }
%struct.TYPE_39__ = type { %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64 }

@SVN_ERR_CLIENT_NOT_READY_TO_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Neither the reintegrate source nor target can be the root of the repository\00", align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Reintegrate merge not possible\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_37__* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"'%s@%ld' must be ancestrally related to '%s@%ld'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"    Missing ranges: \00", align 1
@.str.5 = private unnamed_addr constant [145 x i8] c"Reintegrate can only be used if revisions %ld through %ld were previously merged from %s to the reintegrate source, but this is not the case:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_37__* (%struct.TYPE_40__**, %struct.TYPE_38__**, i32*, %struct.TYPE_38__*, i32*, %struct.TYPE_39__*, i32*, i32*, i32*)* @find_reintegrate_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_37__* @find_reintegrate_merge(%struct.TYPE_40__** %0, %struct.TYPE_38__** %1, i32* %2, %struct.TYPE_38__* %3, i32* %4, %struct.TYPE_39__* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.TYPE_40__**, align 8
  %12 = alloca %struct.TYPE_38__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_38__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_39__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_38__*, align 8
  %21 = alloca %struct.TYPE_38__*, align 8
  %22 = alloca %struct.TYPE_40__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_37__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_40__** %0, %struct.TYPE_40__*** %11, align 8
  store %struct.TYPE_38__** %1, %struct.TYPE_38__*** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_38__* %3, %struct.TYPE_38__** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_39__* %5, %struct.TYPE_39__** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = call i32 @session_url_is(i32* %29, i64 %32, i32* %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %15, align 8
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @session_url_is(i32* %36, i64 %40, i32* %41)
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strcmp(i64 %46, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %9
  %53 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @strcmp(i64 %56, i64 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52, %9
  %64 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %66 = call %struct.TYPE_37__* (i32, i32*, i32, ...) @svn_error_createf(i32 %64, i32* null, i32 %65)
  store %struct.TYPE_37__* %66, %struct.TYPE_37__** %10, align 8
  br label %249

67:                                               ; preds = %52
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @svn_depth_infinity, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = call %struct.TYPE_37__* @get_wc_explicit_mergeinfo_catalog(i32** %26, i32 %70, i32 %71, i32* %72, i32* %73, i32* %74)
  store %struct.TYPE_37__* %75, %struct.TYPE_37__** %25, align 8
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %77 = icmp ne %struct.TYPE_37__* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %67
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %86 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %87 = call %struct.TYPE_37__* @svn_error_quick_wrap(%struct.TYPE_37__* %85, i32 %86)
  store %struct.TYPE_37__* %87, %struct.TYPE_37__** %25, align 8
  br label %88

88:                                               ; preds = %84, %78, %67
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %90 = call i32 @SVN_ERR(%struct.TYPE_37__* %89)
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %92 = load i32*, i32** %26, align 8
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32*, i32** %19, align 8
  %99 = call %struct.TYPE_37__* @calculate_left_hand_side(%struct.TYPE_38__** %21, i32* %24, i32* %23, %struct.TYPE_39__* %91, i32* %92, %struct.TYPE_38__* %93, i32* %94, i32* %95, i32* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(%struct.TYPE_37__* %99)
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %102 = icmp ne %struct.TYPE_38__* %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %88
  %104 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %11, align 8
  %105 = icmp ne %struct.TYPE_40__** %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %11, align 8
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %107, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  %110 = icmp ne %struct.TYPE_38__** %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %112, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_37__* %114, %struct.TYPE_37__** %10, align 8
  br label %249

115:                                              ; preds = %88
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  store %struct.TYPE_38__* %116, %struct.TYPE_38__** %117, align 8
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  store %struct.TYPE_38__* %118, %struct.TYPE_38__** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @strcmp(i64 %123, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %115
  %131 = load i32*, i32** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32*, i32** %19, align 8
  %137 = call %struct.TYPE_37__* @svn_ra_reparent(i32* %131, i64 %135, i32* %136)
  %138 = call i32 @SVN_ERR(%struct.TYPE_37__* %137)
  br label %139

139:                                              ; preds = %130, %115
  %140 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %142, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = load i32*, i32** %19, align 8
  %147 = load i32*, i32** %19, align 8
  %148 = call %struct.TYPE_37__* @svn_client__get_youngest_common_ancestor(%struct.TYPE_38__** %20, %struct.TYPE_38__* %141, %struct.TYPE_38__* %143, i32* %144, i32* %145, i32* %146, i32* %147)
  %149 = call i32 @SVN_ERR(%struct.TYPE_37__* %148)
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %151 = icmp ne %struct.TYPE_38__* %150, null
  br i1 %151, label %172, label %152

152:                                              ; preds = %139
  %153 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %154 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  %164 = load %struct.TYPE_38__*, %struct.TYPE_38__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call %struct.TYPE_37__* (i32, i32*, i32, ...) @svn_error_createf(i32 %153, i32* null, i32 %154, i64 %158, i64 %162, i64 %166, i64 %170)
  store %struct.TYPE_37__* %171, %struct.TYPE_37__** %10, align 8
  br label %249

172:                                              ; preds = %139
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  %180 = zext i1 %179 to i32
  %181 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 0
  store i32 %180, i32* %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %183 = load %struct.TYPE_38__*, %struct.TYPE_38__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %185, %188
  br i1 %189, label %190, label %232

190:                                              ; preds = %172
  %191 = load i32*, i32** %19, align 8
  %192 = call i32 @apr_hash_make(i32* %191)
  store i32 %192, i32* %27, align 4
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %194, i32 0, i32 0
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %24, align 4
  %198 = load i32, i32* %27, align 4
  %199 = load i32*, i32** %15, align 8
  %200 = load i32*, i32** %19, align 8
  %201 = load i32*, i32** %19, align 8
  %202 = call %struct.TYPE_37__* @find_unsynced_ranges(%struct.TYPE_38__* %193, %struct.TYPE_36__* %195, i32 %196, i32 %197, i32 %198, i32* %199, i32* %200, i32* %201)
  %203 = call i32 @SVN_ERR(%struct.TYPE_37__* %202)
  %204 = load i32, i32* %27, align 4
  %205 = call i64 @apr_hash_count(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %231

207:                                              ; preds = %190
  %208 = load i32, i32* %27, align 4
  %209 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %210 = load i32*, i32** %19, align 8
  %211 = call %struct.TYPE_37__* @svn_mergeinfo__catalog_to_formatted_string(%struct.TYPE_35__** %28, i32 %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %209, i32* %210)
  %212 = call i32 @SVN_ERR(%struct.TYPE_37__* %211)
  %213 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %214 = call i32 @_(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.5, i64 0, i64 0))
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 1
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %228 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call %struct.TYPE_37__* (i32, i32*, i32, ...) @svn_error_createf(i32 %213, i32* null, i32 %214, i64 %218, i64 %222, i64 %226, i64 %229)
  store %struct.TYPE_37__* %230, %struct.TYPE_37__** %10, align 8
  br label %249

231:                                              ; preds = %190
  br label %232

232:                                              ; preds = %231, %172
  %233 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %11, align 8
  %234 = icmp ne %struct.TYPE_40__** %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i32*, i32** %18, align 8
  %237 = call %struct.TYPE_40__* @merge_source_dup(%struct.TYPE_40__* %22, i32* %236)
  %238 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %11, align 8
  store %struct.TYPE_40__* %237, %struct.TYPE_40__** %238, align 8
  br label %239

239:                                              ; preds = %235, %232
  %240 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  %241 = icmp ne %struct.TYPE_38__** %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %244 = load i32*, i32** %18, align 8
  %245 = call %struct.TYPE_38__* @svn_client__pathrev_dup(%struct.TYPE_38__* %243, i32* %244)
  %246 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  store %struct.TYPE_38__* %245, %struct.TYPE_38__** %246, align 8
  br label %247

247:                                              ; preds = %242, %239
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_37__* %248, %struct.TYPE_37__** %10, align 8
  br label %249

249:                                              ; preds = %247, %207, %152, %113, %63
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  ret %struct.TYPE_37__* %250
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @session_url_is(i32*, i64, i32*) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local %struct.TYPE_37__* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_37__* @get_wc_explicit_mergeinfo_catalog(i32**, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_37__* @svn_error_quick_wrap(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @calculate_left_hand_side(%struct.TYPE_38__**, i32*, i32*, %struct.TYPE_39__*, i32*, %struct.TYPE_38__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_37__* @svn_ra_reparent(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_37__* @svn_client__get_youngest_common_ancestor(%struct.TYPE_38__**, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_37__* @find_unsynced_ranges(%struct.TYPE_38__*, %struct.TYPE_36__*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local %struct.TYPE_37__* @svn_mergeinfo__catalog_to_formatted_string(%struct.TYPE_35__**, i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_40__* @merge_source_dup(%struct.TYPE_40__*, i32*) #1

declare dso_local %struct.TYPE_38__* @svn_client__pathrev_dup(%struct.TYPE_38__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
