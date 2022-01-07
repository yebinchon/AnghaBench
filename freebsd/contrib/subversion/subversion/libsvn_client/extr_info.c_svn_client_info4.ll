; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_svn_client_info4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_svn_client_info4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_30__ = type { i8*, i32 (i8*, i8*, i32*, i32*)* }

@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@wc_info_receiver = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_32__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"URL '%s' non-existent in revision %ld\00", align 1
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_32__* @svn_client_info4(i8* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__* %2, i32 %3, i64 %4, i64 %5, i64 %6, i32* %7, i32 (i8*, i8*, i32*, i32*)* %8, i8* %9, %struct.TYPE_34__* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32 (i8*, i8*, i32*, i32*)*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_34__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_35__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_33__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_32__*, align 8
  %34 = alloca %struct.TYPE_30__, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  store i8* %0, i8** %14, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %15, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %16, align 8
  store i32 %3, i32* %17, align 4
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i32* %7, i32** %21, align 8
  store i32 (i8*, i8*, i32*, i32*)* %8, i32 (i8*, i8*, i32*, i32*)** %22, align 8
  store i8* %9, i8** %23, align 8
  store %struct.TYPE_34__* %10, %struct.TYPE_34__** %24, align 8
  store i32* %11, i32** %25, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @svn_depth_unknown, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %12
  %41 = load i32, i32* @svn_depth_empty, align 4
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %44 = icmp eq %struct.TYPE_31__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %45, %42
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %53 = icmp eq %struct.TYPE_31__* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %54, %51
  %61 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  store i32 (i8*, i8*, i32*, i32*)* %61, i32 (i8*, i8*, i32*, i32*)** %62, align 8
  %63 = load i8*, i8** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i32*, i32** %21, align 8
  %73 = load i32, i32* @wc_info_receiver, align 4
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %25, align 8
  %81 = call i32 @svn_wc__get_info(i32 %67, i8* %68, i32 %69, i64 %70, i64 %71, i32* %72, i32 %73, %struct.TYPE_30__* %34, i32 %76, i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i64, i64* %20, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %60
  %86 = load i32, i32* %17, align 4
  %87 = call i64 @SVN_DEPTH_IS_RECURSIVE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load i32*, i32** %25, align 8
  %95 = load i32*, i32** %25, align 8
  %96 = call i32 @svn_wc__externals_defined_below(i32** %35, i32 %92, i8* %93, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %35, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %22, align 8
  %104 = load i8*, i8** %23, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %106 = load i32*, i32** %25, align 8
  %107 = call i32 @do_external_info(i32* %98, i32 %99, i64 %100, i64 %101, i32* %102, i32 (i8*, i8*, i32*, i32*)* %103, i8* %104, %struct.TYPE_34__* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  br label %109

109:                                              ; preds = %89, %85, %60
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %110, %struct.TYPE_32__** %13, align 8
  br label %252

111:                                              ; preds = %54, %45
  %112 = load i8*, i8** %14, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %116 = load i32*, i32** %25, align 8
  %117 = call i32 @svn_client__ra_session_from_path2(i32** %26, %struct.TYPE_35__** %27, i8* %112, i32* null, %struct.TYPE_31__* %113, %struct.TYPE_31__* %114, %struct.TYPE_34__* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %120 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %25, align 8
  %123 = call i8* @svn_uri_basename(i32 %121, i32* %122)
  store i8* %123, i8** %30, align 8
  %124 = load i32*, i32** %26, align 8
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %25, align 8
  %129 = call i32 @svn_ra_stat(i32* %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %127, %struct.TYPE_33__** %31, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %132 = icmp ne %struct.TYPE_33__* %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %111
  %134 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %135 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.TYPE_32__* @svn_error_createf(i32 %134, i32* null, i32 %135, i32 %138, i32 %141)
  store %struct.TYPE_32__* %142, %struct.TYPE_32__** %13, align 8
  br label %252

143:                                              ; preds = %111
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %26, align 8
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %152 = load i32*, i32** %25, align 8
  %153 = call i32 @same_resource_in_head(i64* %29, i32 %146, i32 %149, i32* %150, %struct.TYPE_34__* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load i64, i64* %29, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %143
  %158 = load i32*, i32** %26, align 8
  %159 = load i32*, i32** %25, align 8
  %160 = call %struct.TYPE_32__* @svn_ra_get_lock(i32* %158, i32** %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %159)
  store %struct.TYPE_32__* %160, %struct.TYPE_32__** %33, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %162 = icmp ne %struct.TYPE_32__* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %171 = call i32 @svn_error_clear(%struct.TYPE_32__* %170)
  store i32* null, i32** %28, align 8
  br label %179

172:                                              ; preds = %163, %157
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %174 = icmp ne %struct.TYPE_32__* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %177 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %176)
  store %struct.TYPE_32__* %177, %struct.TYPE_32__** %13, align 8
  br label %252

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178, %169
  br label %181

180:                                              ; preds = %143
  store i32* null, i32** %28, align 8
  br label %181

181:                                              ; preds = %180, %179
  %182 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %183 = load i32*, i32** %28, align 8
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %185 = load i32*, i32** %25, align 8
  %186 = call i32 @build_info_from_dirent(i32** %32, %struct.TYPE_33__* %182, i32* %183, %struct.TYPE_35__* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %22, align 8
  %189 = load i8*, i8** %23, align 8
  %190 = load i8*, i8** %30, align 8
  %191 = load i32*, i32** %32, align 8
  %192 = load i32*, i32** %25, align 8
  %193 = call i32 %188(i8* %189, i8* %190, i32* %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @svn_depth_empty, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %250

198:                                              ; preds = %181
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @svn_node_dir, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %250

204:                                              ; preds = %198
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @svn_opt_revision_head, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %236

210:                                              ; preds = %204
  %211 = load i32*, i32** %26, align 8
  %212 = load i32, i32* %17, align 4
  %213 = load i32*, i32** %25, align 8
  %214 = call %struct.TYPE_32__* @svn_ra_get_locks2(i32* %211, i32** %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %212, i32* %213)
  store %struct.TYPE_32__* %214, %struct.TYPE_32__** %33, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %216 = icmp ne %struct.TYPE_32__* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %210
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %225 = call i32 @svn_error_clear(%struct.TYPE_32__* %224)
  %226 = load i32*, i32** %25, align 8
  %227 = call i32* @apr_hash_make(i32* %226)
  store i32* %227, i32** %36, align 8
  br label %235

228:                                              ; preds = %217, %210
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %230 = icmp ne %struct.TYPE_32__* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %233 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %232)
  store %struct.TYPE_32__* %233, %struct.TYPE_32__** %13, align 8
  br label %252

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %234, %223
  br label %239

236:                                              ; preds = %204
  %237 = load i32*, i32** %25, align 8
  %238 = call i32* @apr_hash_make(i32* %237)
  store i32* %238, i32** %36, align 8
  br label %239

239:                                              ; preds = %236, %235
  %240 = load i32*, i32** %26, align 8
  %241 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %242 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %22, align 8
  %243 = load i8*, i8** %23, align 8
  %244 = load i32, i32* %17, align 4
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %246 = load i32*, i32** %36, align 8
  %247 = load i32*, i32** %25, align 8
  %248 = call i32 @push_dir_info(i32* %240, %struct.TYPE_35__* %241, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 (i8*, i8*, i32*, i32*)* %242, i8* %243, i32 %244, %struct.TYPE_34__* %245, i32* %246, i32* %247)
  %249 = call i32 @SVN_ERR(i32 %248)
  br label %250

250:                                              ; preds = %239, %198, %181
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %251, %struct.TYPE_32__** %13, align 8
  br label %252

252:                                              ; preds = %250, %231, %175, %133, %109
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  ret %struct.TYPE_32__* %253
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_info(i32, i8*, i32, i64, i64, i32*, i32, %struct.TYPE_30__*, i32, i32, i32*) #1

declare dso_local i64 @SVN_DEPTH_IS_RECURSIVE(i32) #1

declare dso_local i32 @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @do_external_info(i32*, i32, i64, i64, i32*, i32 (i8*, i8*, i32*, i32*)*, i8*, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_35__**, i8*, i32*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_34__*, i32*) #1

declare dso_local i8* @svn_uri_basename(i32, i32*) #1

declare dso_local i32 @svn_ra_stat(i32*, i8*, i32, %struct.TYPE_33__**, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @same_resource_in_head(i64*, i32, i32, i32*, %struct.TYPE_34__*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_get_lock(i32*, i32**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__*) #1

declare dso_local i32 @build_info_from_dirent(i32**, %struct.TYPE_33__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_get_locks2(i32*, i32**, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @push_dir_info(i32*, %struct.TYPE_35__*, i8*, i32 (i8*, i8*, i32*, i32*)*, i8*, i32, %struct.TYPE_34__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
