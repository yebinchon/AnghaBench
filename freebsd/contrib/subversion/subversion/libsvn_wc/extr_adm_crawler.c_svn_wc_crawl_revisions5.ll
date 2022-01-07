; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_svn_wc_crawl_revisions5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_svn_wc_crawl_revisions5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_34__ = type { %struct.TYPE_35__* (i8*, i32*)*, %struct.TYPE_35__* (i8*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32*)* }
%struct.TYPE_33__ = type { i32* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_35__* null, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error aborting report\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_35__* @svn_wc_crawl_revisions5(%struct.TYPE_32__* %0, i8* %1, %struct.TYPE_34__* %2, i8* %3, i32 %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32 %11, i8* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_34__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_35__*, align 8
  %32 = alloca %struct.TYPE_35__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i64, align 8
  %40 = alloca %struct.TYPE_33__*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i64, align 8
  %50 = alloca i8*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %16, align 8
  store i8* %1, i8** %17, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %18, align 8
  store i8* %3, i8** %19, align 8
  store i32 %4, i32* %20, align 4
  store i64 %5, i64* %21, align 8
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %30, align 8
  %54 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %54, i32* %33, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 @svn_dirent_is_absolute(i8* %55)
  %57 = call i32 @SVN_ERR_ASSERT(i32 %56)
  %58 = load i32*, i32** %30, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i32*, i32** %29, align 8
  %61 = load i32*, i32** %29, align 8
  %62 = call %struct.TYPE_35__* @svn_wc__db_base_get_info(i64* %35, i64* %36, i32* %33, i8** %37, i8** %38, i32* null, i32* null, i32* null, i32* null, i64* %39, i32* null, i32* null, %struct.TYPE_33__** %40, i32* null, i32* null, i32* null, i32* %58, i8* %59, i32* %60, i32* %61)
  store %struct.TYPE_35__* %62, %struct.TYPE_35__** %32, align 8
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %64 = icmp ne %struct.TYPE_35__* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %14
  %66 = load i64, i64* %35, align 8
  %67 = load i64, i64* @svn_wc__db_status_normal, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load i64, i64* %35, align 8
  %71 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %69, %14
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %75 = icmp ne %struct.TYPE_35__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %84 = call %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__* %83)
  store %struct.TYPE_35__* %84, %struct.TYPE_35__** %15, align 8
  br label %385

85:                                               ; preds = %76, %73
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %87 = call i32 @svn_error_clear(%struct.TYPE_35__* %86)
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* @svn_depth_unknown, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %92, i64* %21, align 8
  br label %93

93:                                               ; preds = %91, %85
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %95, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32*, i32** %29, align 8
  %101 = call %struct.TYPE_35__* %96(i8* %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i64 %98, i32 %99, i32* null, i32* %100)
  %102 = call i32 @SVN_ERR(%struct.TYPE_35__* %101)
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_35__* (i8*, i8*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32*)** %104, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = load i32*, i32** %29, align 8
  %108 = call %struct.TYPE_35__* %105(i8* %106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %107)
  %109 = call i32 @SVN_ERR(%struct.TYPE_35__* %108)
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_35__* (i8*, i32*)*, %struct.TYPE_35__* (i8*, i32*)** %111, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = load i32*, i32** %29, align 8
  %115 = call %struct.TYPE_35__* %112(i8* %113, i32* %114)
  %116 = call i32 @SVN_ERR(%struct.TYPE_35__* %115)
  %117 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %117, %struct.TYPE_35__** %15, align 8
  br label %385

118:                                              ; preds = %69, %65
  %119 = load i64, i64* %39, align 8
  %120 = load i64, i64* @svn_depth_unknown, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %123, i64* %39, align 8
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i64, i64* %35, align 8
  %126 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %34, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load i64, i64* %39, align 8
  %133 = load i64, i64* @svn_depth_immediates, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* %39, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %34, align 4
  br label %141

141:                                              ; preds = %139, %135, %131, %124
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i8*, i8** %17, align 8
  %146 = load i32*, i32** %29, align 8
  %147 = call %struct.TYPE_35__* @svn_io_check_path(i8* %145, i64* %41, i32* %146)
  %148 = call i32 @SVN_ERR(%struct.TYPE_35__* %147)
  br label %151

149:                                              ; preds = %141
  %150 = load i64, i64* @svn_node_unknown, align 8
  store i64 %150, i64* %41, align 8
  br label %151

151:                                              ; preds = %149, %144
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %215

154:                                              ; preds = %151
  %155 = load i64, i64* %41, align 8
  %156 = load i64, i64* @svn_node_none, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %215

158:                                              ; preds = %154
  %159 = load i32*, i32** %30, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = load i32*, i32** %29, align 8
  %162 = load i32*, i32** %29, align 8
  %163 = call %struct.TYPE_35__* @svn_wc__db_read_info(i64* %43, i64* %44, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %45, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %46, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %159, i8* %160, i32* %161, i32* %162)
  store %struct.TYPE_35__* %163, %struct.TYPE_35__** %32, align 8
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %165 = icmp ne %struct.TYPE_35__* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %158
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %174 = call i32 @svn_error_clear(%struct.TYPE_35__* %173)
  %175 = load i64, i64* @svn_wc__db_status_not_present, align 8
  store i64 %175, i64* %43, align 8
  %176 = load i64, i64* @svn_node_file, align 8
  store i64 %176, i64* %44, align 8
  br label %180

177:                                              ; preds = %166, %158
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %179 = call i32 @SVN_ERR(%struct.TYPE_35__* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i64, i64* %43, align 8
  %182 = load i64, i64* @svn_wc__db_status_normal, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %43, align 8
  %186 = load i64, i64* @svn_wc__db_status_added, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %184
  %189 = load i64, i64* %43, align 8
  %190 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %214

192:                                              ; preds = %188, %184, %180
  %193 = load i64, i64* %44, align 8
  %194 = load i64, i64* @svn_node_dir, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = load i32*, i32** %45, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %214

199:                                              ; preds = %196, %192
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = load i64, i64* %44, align 8
  %205 = load i32, i32* %46, align 4
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %25, align 4
  %208 = load i8*, i8** %26, align 8
  %209 = load i32, i32* %27, align 4
  %210 = load i8*, i8** %28, align 8
  %211 = load i32*, i32** %29, align 8
  %212 = call %struct.TYPE_35__* @restore_node(i32* %202, i8* %203, i64 %204, i32 %205, i32 %206, i32 %207, i8* %208, i32 %209, i8* %210, i32* %211)
  %213 = call i32 @SVN_ERR(%struct.TYPE_35__* %212)
  br label %214

214:                                              ; preds = %199, %196, %188
  br label %215

215:                                              ; preds = %214, %154, %151
  %216 = load i64, i64* %39, align 8
  store i64 %216, i64* %42, align 8
  %217 = load i32, i32* %22, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load i64, i64* %21, align 8
  %221 = load i64, i64* @svn_depth_unknown, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i64, i64* %21, align 8
  %225 = load i64, i64* %39, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i64, i64* %21, align 8
  store i64 %228, i64* %42, align 8
  br label %229

229:                                              ; preds = %227, %223, %219, %215
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %231, align 8
  %233 = load i8*, i8** %19, align 8
  %234 = load i32, i32* %33, align 4
  %235 = load i64, i64* %42, align 8
  %236 = load i32, i32* %34, align 4
  %237 = load i32*, i32** %29, align 8
  %238 = call %struct.TYPE_35__* %232(i8* %233, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %234, i64 %235, i32 %236, i32* null, i32* %237)
  %239 = call i32 @SVN_ERR(%struct.TYPE_35__* %238)
  %240 = load i64, i64* %36, align 8
  %241 = load i64, i64* @svn_node_dir, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %275

243:                                              ; preds = %229
  %244 = load i64, i64* %21, align 8
  %245 = load i64, i64* @svn_depth_empty, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %274

247:                                              ; preds = %243
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i8*, i8** %17, align 8
  %252 = load i32, i32* %33, align 4
  %253 = load i8*, i8** %37, align 8
  %254 = load i8*, i8** %38, align 8
  %255 = load i64, i64* %42, align 8
  %256 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %257 = load i8*, i8** %19, align 8
  %258 = load i32, i32* %20, align 4
  %259 = load i64, i64* %21, align 8
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* %34, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* %25, align 4
  %265 = load i8*, i8** %26, align 8
  %266 = load i32, i32* %27, align 4
  %267 = load i8*, i8** %28, align 8
  %268 = load i32*, i32** %29, align 8
  %269 = call %struct.TYPE_35__* @report_revisions_and_depths(i32* %250, i8* %251, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %252, i8* %253, i8* %254, i64 %255, %struct.TYPE_34__* %256, i8* %257, i32 %258, i64 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i8* %265, i32 %266, i8* %267, i32* %268)
  store %struct.TYPE_35__* %269, %struct.TYPE_35__** %32, align 8
  %270 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %271 = icmp ne %struct.TYPE_35__* %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %247
  br label %367

273:                                              ; preds = %247
  br label %274

274:                                              ; preds = %273, %243
  br label %359

275:                                              ; preds = %229
  %276 = load i64, i64* %36, align 8
  %277 = load i64, i64* @svn_node_file, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load i64, i64* %36, align 8
  %281 = load i64, i64* @svn_node_symlink, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %358

283:                                              ; preds = %279, %275
  %284 = load i8*, i8** %17, align 8
  %285 = load i32*, i32** %29, align 8
  %286 = call i32 @svn_dirent_split(i8** %47, i8** %48, i8* %284, i32* %285)
  %287 = load i32*, i32** %30, align 8
  %288 = load i8*, i8** %47, align 8
  %289 = load i32*, i32** %29, align 8
  %290 = load i32*, i32** %29, align 8
  %291 = call %struct.TYPE_35__* @svn_wc__db_base_get_info(i64* %49, i64* null, i32* null, i8** %50, i8** null, i32* null, i32* null, i32* null, i32* null, i64* null, i32* null, i32* null, %struct.TYPE_33__** null, i32* null, i32* null, i32* null, i32* %287, i8* %288, i32* %289, i32* %290)
  store %struct.TYPE_35__* %291, %struct.TYPE_35__** %32, align 8
  %292 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %293 = icmp ne %struct.TYPE_35__* %292, null
  br i1 %293, label %294, label %295

294:                                              ; preds = %283
  br label %367

295:                                              ; preds = %283
  %296 = load i8*, i8** %37, align 8
  %297 = load i8*, i8** %50, align 8
  %298 = load i8*, i8** %48, align 8
  %299 = load i32*, i32** %29, align 8
  %300 = call i32 @svn_relpath_join(i8* %297, i8* %298, i32* %299)
  %301 = call i64 @strcmp(i8* %296, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %330

303:                                              ; preds = %295
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_35__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)** %305, align 8
  %307 = load i8*, i8** %19, align 8
  %308 = load i8*, i8** %38, align 8
  %309 = load i8*, i8** %37, align 8
  %310 = load i32*, i32** %29, align 8
  %311 = call i32 @svn_path_url_add_component2(i8* %308, i8* %309, i32* %310)
  %312 = load i32, i32* %33, align 4
  %313 = load i64, i64* @svn_depth_infinity, align 8
  %314 = load i32, i32* @FALSE, align 4
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  %316 = icmp ne %struct.TYPE_33__* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %303
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  br label %322

321:                                              ; preds = %303
  br label %322

322:                                              ; preds = %321, %317
  %323 = phi i32* [ %320, %317 ], [ null, %321 ]
  %324 = load i32*, i32** %29, align 8
  %325 = call %struct.TYPE_35__* %306(i8* %307, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %311, i32 %312, i64 %313, i32 %314, i32* %323, i32* %324)
  store %struct.TYPE_35__* %325, %struct.TYPE_35__** %32, align 8
  %326 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %327 = icmp ne %struct.TYPE_35__* %326, null
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %367

329:                                              ; preds = %322
  br label %357

330:                                              ; preds = %295
  %331 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  %332 = icmp ne %struct.TYPE_33__* %331, null
  br i1 %332, label %333, label %356

333:                                              ; preds = %330
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_35__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %335, align 8
  %337 = load i8*, i8** %19, align 8
  %338 = load i32, i32* %33, align 4
  %339 = load i64, i64* @svn_depth_infinity, align 8
  %340 = load i32, i32* @FALSE, align 4
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  %342 = icmp ne %struct.TYPE_33__* %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %333
  %344 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  %345 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  br label %348

347:                                              ; preds = %333
  br label %348

348:                                              ; preds = %347, %343
  %349 = phi i32* [ %346, %343 ], [ null, %347 ]
  %350 = load i32*, i32** %29, align 8
  %351 = call %struct.TYPE_35__* %336(i8* %337, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %338, i64 %339, i32 %340, i32* %349, i32* %350)
  store %struct.TYPE_35__* %351, %struct.TYPE_35__** %32, align 8
  %352 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %353 = icmp ne %struct.TYPE_35__* %352, null
  br i1 %353, label %354, label %355

354:                                              ; preds = %348
  br label %367

355:                                              ; preds = %348
  br label %356

356:                                              ; preds = %355, %330
  br label %357

357:                                              ; preds = %356, %329
  br label %358

358:                                              ; preds = %357, %279
  br label %359

359:                                              ; preds = %358, %274
  %360 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_35__* (i8*, i32*)*, %struct.TYPE_35__* (i8*, i32*)** %361, align 8
  %363 = load i8*, i8** %19, align 8
  %364 = load i32*, i32** %29, align 8
  %365 = call %struct.TYPE_35__* %362(i8* %363, i32* %364)
  %366 = call %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__* %365)
  store %struct.TYPE_35__* %366, %struct.TYPE_35__** %15, align 8
  br label %385

367:                                              ; preds = %354, %328, %294, %272
  %368 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %369 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_35__* (i8*, i32*)*, %struct.TYPE_35__* (i8*, i32*)** %369, align 8
  %371 = load i8*, i8** %19, align 8
  %372 = load i32*, i32** %29, align 8
  %373 = call %struct.TYPE_35__* %370(i8* %371, i32* %372)
  store %struct.TYPE_35__* %373, %struct.TYPE_35__** %31, align 8
  %374 = icmp ne %struct.TYPE_35__* %373, null
  br i1 %374, label %375, label %382

375:                                              ; preds = %367
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %377 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %378 = call %struct.TYPE_35__* @svn_error_quick_wrap(%struct.TYPE_35__* %376, i32 %377)
  store %struct.TYPE_35__* %378, %struct.TYPE_35__** %31, align 8
  %379 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %380 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %381 = call i32 @svn_error_compose(%struct.TYPE_35__* %379, %struct.TYPE_35__* %380)
  br label %382

382:                                              ; preds = %375, %367
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %384 = call %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__* %383)
  store %struct.TYPE_35__* %384, %struct.TYPE_35__** %15, align 8
  br label %385

385:                                              ; preds = %382, %359, %93, %82
  %386 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  ret %struct.TYPE_35__* %386
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_35__* @svn_wc__db_base_get_info(i64*, i64*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i64*, i32*, i32*, %struct.TYPE_33__**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_35__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_35__* @restore_node(i32*, i8*, i64, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_35__* @report_revisions_and_depths(i32*, i8*, i8*, i32, i8*, i8*, i64, %struct.TYPE_34__*, i8*, i32, i64, i32, i32, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_error_quick_wrap(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_error_compose(%struct.TYPE_35__*, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
