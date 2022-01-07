; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__resolve_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__resolve_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.conflict_status_walker_baton = type { i8*, i32*, i8*, i8*, i32 (i8*, i32, i32*)*, i8*, %struct.TYPE_23__* (i8*)*, i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_21__ = type { i64 }

@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_wc_notify_conflict_resolver_starting = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to resolve pending conflict on '%s'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to resolve conflicts on '%s'\00", align 1
@svn_wc_notify_conflict_resolver_done = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @svn_wc__resolve_conflicts(%struct.TYPE_22__* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i8* %8, %struct.TYPE_23__* (i8*)* %9, i8* %10, i32 (i8*, i32, i32*)* %11, i8* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_23__* (i8*)*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32 (i8*, i32, i32*)*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.conflict_status_walker_baton, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_23__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_21__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %15, align 8
  store i8* %1, i8** %16, align 8
  store i64 %2, i64* %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i8* %8, i8** %23, align 8
  store %struct.TYPE_23__* (i8*)* %9, %struct.TYPE_23__* (i8*)** %24, align 8
  store i8* %10, i8** %25, align 8
  store i32 (i8*, i32, i32*)* %11, i32 (i8*, i32, i32*)** %26, align 8
  store i8* %12, i8** %27, align 8
  store i32* %13, i32** %28, align 8
  store i32* null, i32** %30, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* @svn_depth_unknown, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %14
  %40 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %40, i64* %17, align 8
  br label %41

41:                                               ; preds = %39, %14
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 12
  store i32 %44, i32* %45, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 11
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 10
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %21, align 4
  %53 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 9
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %22, align 4
  %55 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 8
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** %23, align 8
  %57 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 7
  store i8* %56, i8** %57, align 8
  %58 = load %struct.TYPE_23__* (i8*)*, %struct.TYPE_23__* (i8*)** %24, align 8
  %59 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 6
  store %struct.TYPE_23__* (i8*)* %58, %struct.TYPE_23__* (i8*)** %59, align 8
  %60 = load i8*, i8** %25, align 8
  %61 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 5
  store i8* %60, i8** %61, align 8
  %62 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %26, align 8
  %63 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 4
  store i32 (i8*, i32, i32*)* %62, i32 (i8*, i32, i32*)** %63, align 8
  %64 = load i8*, i8** %27, align 8
  %65 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @FALSE, align 8
  %67 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 2
  store i8* %66, i8** %67, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @svn_depth_empty, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %41
  %72 = load i32*, i32** %28, align 8
  %73 = call i32* @apr_hash_make(i32* %72)
  br label %75

74:                                               ; preds = %41
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32* [ %73, %71 ], [ null, %74 ]
  %77 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  store i32* %76, i32** %77, align 8
  %78 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %26, align 8
  %79 = icmp ne i32 (i8*, i32, i32*)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %26, align 8
  %82 = load i8*, i8** %27, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = load i32, i32* @svn_wc_notify_conflict_resolver_starting, align 4
  %85 = load i32*, i32** %28, align 8
  %86 = call i32 @svn_wc_create_notify(i8* %83, i32 %84, i32* %85)
  %87 = load i32*, i32** %28, align 8
  %88 = call i32 %81(i8* %82, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i8*, i8** @FALSE, align 8
  %94 = load i8*, i8** @FALSE, align 8
  %95 = load i32, i32* @TRUE, align 4
  %96 = load %struct.TYPE_23__* (i8*)*, %struct.TYPE_23__* (i8*)** %24, align 8
  %97 = load i8*, i8** %25, align 8
  %98 = load i32*, i32** %28, align 8
  %99 = call %struct.TYPE_23__* @svn_wc_walk_status(%struct.TYPE_22__* %90, i8* %91, i64 %92, i8* %93, i8* %94, i32 %95, i32* null, i32 (%struct.conflict_status_walker_baton*, i8*, %struct.TYPE_21__*, i32*)* @conflict_status_walker, %struct.conflict_status_walker_baton* %29, %struct.TYPE_23__* (i8*)* %96, i8* %97, i32* %98)
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %31, align 8
  br label %100

100:                                              ; preds = %232, %89
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %102 = icmp ne %struct.TYPE_23__* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @apr_hash_count(i32* %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %107, %103, %100
  %113 = phi i1 [ false, %103 ], [ false, %100 ], [ %111, %107 ]
  br i1 %113, label %114, label %233

114:                                              ; preds = %112
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %33, align 8
  store i8* null, i8** %34, align 8
  %115 = load i32*, i32** %30, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %30, align 8
  %119 = call i32 @svn_pool_clear(i32* %118)
  br label %123

120:                                              ; preds = %114
  %121 = load i32*, i32** %28, align 8
  %122 = call i32* @svn_pool_create(i32* %121)
  store i32* %122, i32** %30, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32*, i32** %28, align 8
  %125 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32* @apr_hash_first(i32* %124, i32* %126)
  store i32* %127, i32** %32, align 8
  %128 = load i32*, i32** %28, align 8
  %129 = call i32* @apr_hash_make(i32* %128)
  %130 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  store i32* %129, i32** %130, align 8
  %131 = load i8*, i8** @FALSE, align 8
  %132 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 2
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %196, %123
  %134 = load i32*, i32** %32, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %138 = icmp ne %struct.TYPE_23__* %137, null
  %139 = xor i1 %138, true
  br label %140

140:                                              ; preds = %136, %133
  %141 = phi i1 [ false, %133 ], [ %139, %136 ]
  br i1 %141, label %142, label %199

142:                                              ; preds = %140
  %143 = load i32*, i32** %30, align 8
  %144 = call i32 @svn_pool_clear(i32* %143)
  %145 = load i32*, i32** %32, align 8
  %146 = call i8* @apr_hash_this_key(i32* %145)
  store i8* %146, i8** %34, align 8
  %147 = load %struct.TYPE_23__* (i8*)*, %struct.TYPE_23__* (i8*)** %24, align 8
  %148 = icmp ne %struct.TYPE_23__* (i8*)* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.TYPE_23__* (i8*)*, %struct.TYPE_23__* (i8*)** %24, align 8
  %151 = load i8*, i8** %25, align 8
  %152 = call %struct.TYPE_23__* %150(i8* %151)
  %153 = call i32 @SVN_ERR(%struct.TYPE_23__* %152)
  br label %154

154:                                              ; preds = %149, %142
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %34, align 8
  %157 = call i8* @svn_dirent_skip_ancestor(i8* %155, i8* %156)
  store i8* %157, i8** %35, align 8
  %158 = load i8*, i8** %35, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %154
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* @svn_depth_empty, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* @svn_depth_infinity, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i8*, i8** %35, align 8
  %170 = call i64 @strchr(i8* %169, i8 signext 47)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %154
  br label %196

173:                                              ; preds = %168, %164, %160
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %175 = load i8*, i8** %34, align 8
  %176 = load i32*, i32** %30, align 8
  %177 = load i32*, i32** %30, align 8
  %178 = call %struct.TYPE_23__* @svn_wc_status3(%struct.TYPE_21__** %33, %struct.TYPE_22__* %174, i8* %175, i32* %176, i32* %177)
  %179 = call i32 @SVN_ERR(%struct.TYPE_23__* %178)
  %180 = load i64, i64* %17, align 8
  %181 = load i64, i64* @svn_depth_files, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %173
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @svn_node_dir, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %196

190:                                              ; preds = %183, %173
  %191 = load i8*, i8** %34, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %193 = load i32*, i32** %28, align 8
  %194 = call i32 @conflict_status_walker(%struct.conflict_status_walker_baton* %29, i8* %191, %struct.TYPE_21__* %192, i32* %193)
  %195 = call %struct.TYPE_23__* @svn_error_trace(i32 %194)
  store %struct.TYPE_23__* %195, %struct.TYPE_23__** %31, align 8
  br label %196

196:                                              ; preds = %190, %189, %172
  %197 = load i32*, i32** %32, align 8
  %198 = call i32* @apr_hash_next(i32* %197)
  store i32* %198, i32** %32, align 8
  br label %133

199:                                              ; preds = %140
  %200 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %232, label %203

203:                                              ; preds = %199
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %205 = icmp ne %struct.TYPE_23__* %204, null
  br i1 %205, label %232, label %206

206:                                              ; preds = %203
  %207 = load i8*, i8** %34, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %232

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @apr_hash_count(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %29, i32 0, i32 1
  store i32* null, i32** %215, align 8
  %216 = load i8*, i8** %34, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %218 = load i32*, i32** %28, align 8
  %219 = call i32 @conflict_status_walker(%struct.conflict_status_walker_baton* %29, i8* %216, %struct.TYPE_21__* %217, i32* %218)
  %220 = call %struct.TYPE_23__* @svn_error_trace(i32 %219)
  store %struct.TYPE_23__* %220, %struct.TYPE_23__** %31, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %222 = icmp ne %struct.TYPE_23__* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i32 @SVN_ERR_ASSERT(i32 %223)
  %225 = load i64, i64* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %227 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %228 = load i8*, i8** %34, align 8
  %229 = load i32*, i32** %28, align 8
  %230 = call i32 @svn_dirent_local_style(i8* %228, i32* %229)
  %231 = call %struct.TYPE_23__* @svn_error_createf(i64 %225, %struct.TYPE_23__* %226, i32 %227, i32 %230)
  store %struct.TYPE_23__* %231, %struct.TYPE_23__** %31, align 8
  br label %233

232:                                              ; preds = %209, %206, %203, %199
  br label %100

233:                                              ; preds = %214, %112
  %234 = load i32*, i32** %30, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32*, i32** %30, align 8
  %238 = call i32 @svn_pool_destroy(i32* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %241 = icmp ne %struct.TYPE_23__* %240, null
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %242
  %249 = load i64, i64* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %251 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %252 = load i8*, i8** %16, align 8
  %253 = load i32*, i32** %28, align 8
  %254 = call i32 @svn_dirent_local_style(i8* %252, i32* %253)
  %255 = call %struct.TYPE_23__* @svn_error_createf(i64 %249, %struct.TYPE_23__* %250, i32 %251, i32 %254)
  store %struct.TYPE_23__* %255, %struct.TYPE_23__** %31, align 8
  br label %256

256:                                              ; preds = %248, %242, %239
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %258 = call i32 @SVN_ERR(%struct.TYPE_23__* %257)
  %259 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %26, align 8
  %260 = icmp ne i32 (i8*, i32, i32*)* %259, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %256
  %262 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %26, align 8
  %263 = load i8*, i8** %27, align 8
  %264 = load i8*, i8** %16, align 8
  %265 = load i32, i32* @svn_wc_notify_conflict_resolver_done, align 4
  %266 = load i32*, i32** %28, align 8
  %267 = call i32 @svn_wc_create_notify(i8* %264, i32 %265, i32* %266)
  %268 = load i32*, i32** %28, align 8
  %269 = call i32 %262(i8* %263, i32 %267, i32* %268)
  br label %270

270:                                              ; preds = %261, %256
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_23__* %271
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_wc_walk_status(%struct.TYPE_22__*, i8*, i64, i8*, i8*, i32, i32*, i32 (%struct.conflict_status_walker_baton*, i8*, %struct.TYPE_21__*, i32*)*, %struct.conflict_status_walker_baton*, %struct.TYPE_23__* (i8*)*, i8*, i32*) #1

declare dso_local i32 @conflict_status_walker(%struct.conflict_status_walker_baton*, i8*, %struct.TYPE_21__*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_23__*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_23__* @svn_wc_status3(%struct.TYPE_21__**, %struct.TYPE_22__*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_trace(i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_23__* @svn_error_createf(i64, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
