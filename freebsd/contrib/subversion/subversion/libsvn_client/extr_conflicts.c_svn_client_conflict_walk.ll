; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.conflict_status_walker_baton*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32, i32, i32* (i32)* }
%struct.conflict_status_walker_baton = type { %struct.conflict_status_walker_baton*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32*, i8*, %struct.TYPE_3__*, i8*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@svn_wc_notify_conflict_resolver_starting = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to resolve pending conflict on '%s'\00", align 1
@svn_wc_notify_conflict_resolver_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_walk(i8* %0, i64 %1, i32 %2, i8* %3, %struct.TYPE_3__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.conflict_status_walker_baton, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %14, align 8
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %15, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @svn_depth_unknown, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %6
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 5
  store i8* %28, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 4
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %31, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i8* @apr_hash_make(i32* %34)
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  store i32* %36, i32** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %39, align 8
  %41 = icmp ne i32 (%struct.conflict_status_walker_baton*, i32, i32*)* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %25
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @svn_wc_notify_conflict_resolver_starting, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @svn_wc_create_notify(i8* %49, i32 %50, i32* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 %45(%struct.conflict_status_walker_baton* %48, i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %42, %25
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %57, align 8
  %59 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 1
  store i32 (%struct.conflict_status_walker_baton*, i32, i32*)* %58, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %61, align 8
  %63 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 0
  store %struct.conflict_status_walker_baton* %62, %struct.conflict_status_walker_baton** %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 (%struct.conflict_status_walker_baton*, i32, i32*)* @tree_conflict_collector, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.conflict_status_walker_baton* %13, %struct.conflict_status_walker_baton** %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i8*, i8** @FALSE, align 8
  %74 = load i8*, i8** @FALSE, align 8
  %75 = load i32, i32* @TRUE, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i32* (i32)*, i32* (i32)** %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i32* @svn_wc_walk_status(i32 %70, i8* %71, i64 %72, i8* %73, i8* %74, i32 %75, i32* null, i32* (%struct.conflict_status_walker_baton*, i8*, i32*, i32*)* @conflict_status_walker, %struct.conflict_status_walker_baton* %13, i32* (i32)* %78, i32 %81, i32* %82)
  store i32* %83, i32** %15, align 8
  br label %84

84:                                               ; preds = %206, %55
  %85 = load i32*, i32** %15, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @apr_hash_count(i32* %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %91, %87, %84
  %97 = phi i1 [ false, %87 ], [ false, %84 ], [ %95, %91 ]
  br i1 %97, label %98, label %207

98:                                               ; preds = %96
  store i32* null, i32** %17, align 8
  store i8* null, i8** %18, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @svn_pool_clear(i32* %102)
  br label %107

104:                                              ; preds = %98
  %105 = load i32*, i32** %12, align 8
  %106 = call i32* @svn_pool_create(i32* %105)
  store i32* %106, i32** %14, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32* @apr_hash_first(i32* %108, i32* %110)
  store i32* %111, i32** %16, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i8* @apr_hash_make(i32* %112)
  %114 = bitcast i8* %113 to i32*
  %115 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  store i32* %114, i32** %115, align 8
  %116 = load i8*, i8** @FALSE, align 8
  %117 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 3
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %170, %107
  %119 = load i32*, i32** %16, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi i1 [ false, %118 ], [ %124, %121 ]
  br i1 %126, label %127, label %173

127:                                              ; preds = %125
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @svn_pool_clear(i32* %128)
  %130 = load i32*, i32** %16, align 8
  %131 = call i8* @apr_hash_this_key(i32* %130)
  store i8* %131, i8** %18, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32* (i32)*, i32* (i32)** %133, align 8
  %135 = icmp ne i32* (i32)* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %127
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32* (i32)*, i32* (i32)** %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32* %139(i32 %142)
  store i32* %143, i32** %15, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %173

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %127
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i8*, i8** %18, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i32* @svn_wc_status3(i32** %17, i32 %151, i8* %152, i32* %153, i32* %154)
  %156 = call i32* @svn_error_trace(i32* %155)
  store i32* %156, i32** %15, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %173

160:                                              ; preds = %148
  %161 = load i8*, i8** %18, align 8
  %162 = load i32*, i32** %17, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = call i32* @conflict_status_walker(%struct.conflict_status_walker_baton* %13, i8* %161, i32* %162, i32* %163)
  %165 = call i32* @svn_error_trace(i32* %164)
  store i32* %165, i32** %15, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %173

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169
  %171 = load i32*, i32** %16, align 8
  %172 = call i32* @apr_hash_next(i32* %171)
  store i32* %172, i32** %16, align 8
  br label %118

173:                                              ; preds = %168, %159, %146, %125
  %174 = load i32*, i32** %15, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %206, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %206, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %18, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %206

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = call i64 @apr_hash_count(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 2
  store i32* null, i32** %189, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = call i32* @conflict_status_walker(%struct.conflict_status_walker_baton* %13, i8* %190, i32* %191, i32* %192)
  %194 = call i32* @svn_error_trace(i32* %193)
  store i32* %194, i32** %15, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = icmp ne i32* %195, null
  %197 = zext i1 %196 to i32
  %198 = call i32 @SVN_ERR_ASSERT(i32 %197)
  %199 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %200 = load i32*, i32** %15, align 8
  %201 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %202 = load i8*, i8** %18, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @svn_dirent_local_style(i8* %202, i32* %203)
  %205 = call i32* @svn_error_createf(i32 %199, i32* %200, i32 %201, i32 %204)
  store i32* %205, i32** %15, align 8
  br label %207

206:                                              ; preds = %183, %180, %176, %173
  br label %84

207:                                              ; preds = %188, %96
  %208 = load i32*, i32** %14, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32*, i32** %14, align 8
  %212 = call i32 @svn_pool_destroy(i32* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 1
  %215 = load i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %214, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  store i32 (%struct.conflict_status_walker_baton*, i32, i32*)* %215, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %217, align 8
  %218 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %13, i32 0, i32 0
  %219 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  store %struct.conflict_status_walker_baton* %219, %struct.conflict_status_walker_baton** %221, align 8
  %222 = load i32*, i32** %15, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %242, label %224

224:                                              ; preds = %213
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  %227 = load i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %226, align 8
  %228 = icmp ne i32 (%struct.conflict_status_walker_baton*, i32, i32*)* %227, null
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  %232 = load i32 (%struct.conflict_status_walker_baton*, i32, i32*)*, i32 (%struct.conflict_status_walker_baton*, i32, i32*)** %231, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %234, align 8
  %236 = load i8*, i8** %7, align 8
  %237 = load i32, i32* @svn_wc_notify_conflict_resolver_done, align 4
  %238 = load i32*, i32** %12, align 8
  %239 = call i32 @svn_wc_create_notify(i8* %236, i32 %237, i32* %238)
  %240 = load i32*, i32** %12, align 8
  %241 = call i32 %232(%struct.conflict_status_walker_baton* %235, i32 %239, i32* %240)
  br label %242

242:                                              ; preds = %229, %224, %213
  %243 = load i32*, i32** %15, align 8
  %244 = call i32* @svn_error_trace(i32* %243)
  ret i32* %244
}

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @tree_conflict_collector(%struct.conflict_status_walker_baton*, i32, i32*) #1

declare dso_local i32* @svn_wc_walk_status(i32, i8*, i64, i8*, i8*, i32, i32*, i32* (%struct.conflict_status_walker_baton*, i8*, i32*, i32*)*, %struct.conflict_status_walker_baton*, i32* (i32)*, i32, i32*) #1

declare dso_local i32* @conflict_status_walker(%struct.conflict_status_walker_baton*, i8*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32* @svn_wc_status3(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
