; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_info.c_build_info_for_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_info.c_build_info_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32, i8*, i8*, i32, i32, i32*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@svn_wc_schedule_normal = common dso_local global i8* null, align 8
@svn_wc_schedule_add = common dso_local global i8* null, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc_schedule_replace = common dso_local global i8* null, align 8
@svn_depth_exclude = common dso_local global i8* null, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc_schedule_delete = common dso_local global i8* null, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_16__**, i32*, i8*, i32, i32*, i32*)* @build_info_for_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @build_info_for_node(%struct.TYPE_16__** %0, i32* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_15__*, align 8
  %28 = alloca %struct.TYPE_18__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i8* @apr_pcalloc(i32* %32, i32 72)
  %34 = bitcast i8* %33 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %14, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i8* @apr_pcalloc(i32* %38, i32 80)
  %40 = bitcast i8* %39 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %27, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %43, align 8
  %44 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 10
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 9
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 11
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 10
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 9
  %69 = load i32*, i32** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @svn_wc__db_read_info(i64* %16, i32* %17, i8** %48, i8** %15, i8** %50, i8** %52, i32* %54, i32* %56, i32* %58, i8** %60, i32* %62, i32* null, i8** %18, i8** %19, i8** %20, i8** %21, %struct.TYPE_17__** %22, i32* %64, i32* %66, i32* %68, i64* %23, i64* %24, i32* null, i32* null, i64* %25, i64* %26, i32* null, i32* %69, i8* %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i8*, i8** %19, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %6
  %78 = load i8*, i8** %19, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %20, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %6
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* @svn_wc__db_status_added, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %193

88:                                               ; preds = %84
  %89 = load i8*, i8** %18, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %134

91:                                               ; preds = %88
  %92 = load i8*, i8** %21, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  %95 = load i64, i64* %24, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i8* @svn_path_url_add_component2(i8* %100, i8* %101, i32* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 8
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 6
  %111 = load i32*, i32** %9, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = call %struct.TYPE_18__* @svn_wc__db_scan_moved(i32** %110, i32* null, i32* null, i32* null, i32* %111, i8* %112, i32* %113, i32* %114)
  store %struct.TYPE_18__* %115, %struct.TYPE_18__** %28, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %117 = icmp ne %struct.TYPE_18__* %116, null
  br i1 %117, label %118, label %132

118:                                              ; preds = %97
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %126 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %125)
  store %struct.TYPE_18__* %126, %struct.TYPE_18__** %7, align 8
  br label %397

127:                                              ; preds = %118
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %129 = call i32 @svn_error_clear(%struct.TYPE_18__* %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 6
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %127, %97
  br label %133

133:                                              ; preds = %132, %91
  br label %134

134:                                              ; preds = %133, %88
  %135 = load i64, i64* %24, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** @svn_wc_schedule_normal, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  br label %174

141:                                              ; preds = %134
  %142 = load i64, i64* %26, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %25, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** @svn_wc_schedule_add, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  br label %173

151:                                              ; preds = %144, %141
  %152 = load i32*, i32** %9, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @svn_wc__db_info_below_working(i64* %25, i64* %30, i64* %29, i32* %152, i8* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load i64, i64* %29, align 8
  %158 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %151
  %161 = load i64, i64* %29, align 8
  %162 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i8*, i8** @svn_wc_schedule_replace, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  br label %172

168:                                              ; preds = %160, %151
  %169 = load i8*, i8** @svn_wc_schedule_add, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %147
  br label %174

174:                                              ; preds = %173, %137
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i32*, i32** %9, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = call i32 @svn_wc__db_read_repos_info(i8** null, i8** %15, i8** %176, i8** %178, i32* %179, i8* %180, i32* %181, i32* %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = call i8* @svn_path_url_add_component2(i8* %187, i8* %188, i32* %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 5
  store i8* %190, i8** %192, align 8
  br label %326

193:                                              ; preds = %84
  %194 = load i64, i64* %16, align 8
  %195 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %258

197:                                              ; preds = %193
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 7
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 10
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 9
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 5
  %210 = load i32*, i32** %9, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = call i32 @svn_wc__db_read_pristine_info(i64* %31, i32* %199, i32* %201, i32* %203, i32* %205, i8** %207, i32* %209, i32* null, i32* null, i32* null, i32* %210, i8* %211, i32* %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load i64, i64* %31, align 8
  %217 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %197
  %220 = load i8*, i8** @svn_depth_exclude, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* @svn_node_unknown, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %219, %197
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 4
  %229 = load i32*, i32** %9, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load i32*, i32** %13, align 8
  %232 = load i32*, i32** %13, align 8
  %233 = call i32 @svn_wc__db_scan_deletion(i32* null, i32* %228, i32* null, i32* null, i32* %229, i8* %230, i32* %231, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 6
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i32*, i32** %9, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = call i32 @svn_wc__db_read_repos_info(i8** %236, i8** %15, i8** %238, i8** %240, i32* %241, i8* %242, i32* %243, i32* %244)
  %246 = call i32 @SVN_ERR(i32 %245)
  %247 = load i8*, i8** @svn_wc_schedule_delete, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 3
  store i8* %247, i8** %249, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = load i32*, i32** %12, align 8
  %255 = call i8* @svn_path_url_add_component2(i8* %252, i8* %253, i32* %254)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 5
  store i8* %255, i8** %257, align 8
  br label %325

258:                                              ; preds = %193
  %259 = load i64, i64* %16, align 8
  %260 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = load i64, i64* %16, align 8
  %264 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262, %258
  %267 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %267, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %268, %struct.TYPE_18__** %7, align 8
  br label %397

269:                                              ; preds = %262
  %270 = load i64, i64* %16, align 8
  %271 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %303

273:                                              ; preds = %269
  %274 = load i8*, i8** %15, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %303, label %276

276:                                              ; preds = %273
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load i32*, i32** %9, align 8
  %282 = load i8*, i8** %10, align 8
  %283 = load i32*, i32** %12, align 8
  %284 = load i32*, i32** %13, align 8
  %285 = call i32 @svn_wc__db_read_repos_info(i8** null, i8** %15, i8** %278, i8** %280, i32* %281, i8* %282, i32* %283, i32* %284)
  %286 = call i32 @SVN_ERR(i32 %285)
  %287 = load i8*, i8** @svn_wc_schedule_normal, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 3
  store i8* %287, i8** %289, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load i8*, i8** %15, align 8
  %294 = load i32*, i32** %12, align 8
  %295 = call i8* @svn_path_url_add_component2(i8* %292, i8* %293, i32* %294)
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 5
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** @svn_depth_exclude, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 3
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  store i8* %298, i8** %302, align 8
  br label %323

303:                                              ; preds = %273, %269
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load i8*, i8** %15, align 8
  %308 = load i32*, i32** %12, align 8
  %309 = call i8* @svn_path_url_add_component2(i8* %306, i8* %307, i32* %308)
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 5
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @svn_wc_schedule_normal, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 3
  store i8* %312, i8** %314, align 8
  %315 = load i64, i64* %16, align 8
  %316 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %303
  %319 = load i8*, i8** @svn_depth_exclude, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  br label %322

322:                                              ; preds = %318, %303
  br label %323

323:                                              ; preds = %322, %276
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324, %226
  br label %326

326:                                              ; preds = %325, %174
  %327 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 4
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 1
  %334 = load i32*, i32** %9, align 8
  %335 = load i8*, i8** %10, align 8
  %336 = load i32*, i32** %12, align 8
  %337 = load i32*, i32** %13, align 8
  %338 = call i32 @svn_wc__db_get_wcroot(i32* %333, i32* %334, i8* %335, i32* %336, i32* %337)
  %339 = call i32 @SVN_ERR(i32 %338)
  %340 = load i64, i64* %23, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %353

342:                                              ; preds = %326
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = load i32*, i32** %9, align 8
  %346 = load i8*, i8** %10, align 8
  %347 = load i32, i32* @FALSE, align 4
  %348 = load i32, i32* @FALSE, align 4
  %349 = load i32*, i32** %12, align 8
  %350 = load i32*, i32** %13, align 8
  %351 = call i32 @svn_wc__read_conflicts(i32** %344, i32* null, i32* %345, i8* %346, i32 %347, i32 %348, i32* %349, i32* %350)
  %352 = call i32 @SVN_ERR(i32 %351)
  br label %356

353:                                              ; preds = %326
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 0
  store i32* null, i32** %355, align 8
  br label %356

356:                                              ; preds = %353, %342
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %358 = icmp ne %struct.TYPE_17__* %357, null
  br i1 %358, label %359, label %393

359:                                              ; preds = %356
  %360 = load i32*, i32** %12, align 8
  %361 = call i8* @apr_pcalloc(i32* %360, i32 16)
  %362 = bitcast i8* %361 to %struct.TYPE_14__*
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 2
  store %struct.TYPE_14__* %362, %struct.TYPE_14__** %364, align 8
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 3
  store i32 %367, i32* %371, align 4
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 2
  store i32 %374, i32* %378, align 4
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 1
  store i32 %381, i32* %385, align 4
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 0
  store i32 %388, i32* %392, align 4
  br label %393

393:                                              ; preds = %359, %356
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %395 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  store %struct.TYPE_16__* %394, %struct.TYPE_16__** %395, align 8
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %396, %struct.TYPE_18__** %7, align 8
  br label %397

397:                                              ; preds = %393, %266, %124
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  ret %struct.TYPE_18__* %398
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i8**, i8**, i8**, i8**, i32*, i32*, i32*, i8**, i32*, i32*, i8**, i8**, i8**, i8**, %struct.TYPE_17__**, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i64*, i64*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc__db_scan_moved(i32**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_wc__db_info_below_working(i64*, i64*, i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_repos_info(i8**, i8**, i8**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i64*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_scan_deletion(i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_get_wcroot(i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__read_conflicts(i32**, i32*, i32*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
