; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i8*, i32, i32, i32, i32, i64 }
%struct.export_info_baton = type { i8*, i32, i32 (i32, %struct.TYPE_28__*, i32*)*, i32, i32, %struct.TYPE_26__*, i32, i8*, i32, i32* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_31__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_30__* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_FINFO_PROT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Destination directory exists, and will not be overwritten unless forced\00", align 1
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Destination file '%s' exists, and will not be overwritten unless forced\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Destination '%s' exists. Cannot overwrite directory with non-directory\00", align 1
@svn_wc_status_normal = common dso_local global i64 0, align 8
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(local)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%ld%s\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (i8*, i8*, %struct.TYPE_27__*, i32*)* @export_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @export_node(i8* %0, i8* %1, %struct.TYPE_27__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.export_info_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_30__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_31__, align 4
  %29 = alloca %struct.TYPE_28__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_28__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32* %3, i32** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.export_info_baton*
  store %struct.export_info_baton* %37, %struct.export_info_baton** %10, align 8
  %38 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %39 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %19, align 8
  %41 = load i8*, i8** @FALSE, align 8
  store i8* %41, i8** %20, align 8
  %42 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %43 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %46 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @svn_dirent_skip_ancestor(i8* %47, i8* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @svn_dirent_join(i32 %44, i32 %49, i32* %50)
  store i8* %51, i8** %26, align 8
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %54 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %56 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %55, i32 0, i32 5
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @svn_opt_revision_working, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %4
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @svn_wc_status_deleted, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %69, %struct.TYPE_30__** %5, align 8
  br label %465

70:                                               ; preds = %62, %4
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @svn_node_dir, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %153

76:                                               ; preds = %70
  %77 = load i32, i32* @APR_OS_DEFAULT, align 4
  store i32 %77, i32* %27, align 4
  %78 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %79 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %78, i32 0, i32 5
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @svn_opt_revision_working, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @APR_FINFO_PROT, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @svn_io_stat(%struct.TYPE_31__* %28, i8* %86, i32 %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %27, align 4
  br label %93

93:                                               ; preds = %85, %76
  %94 = load i8*, i8** %26, align 8
  %95 = load i32, i32* %27, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call %struct.TYPE_30__* @svn_io_dir_make(i8* %94, i32 %95, i32* %96)
  store %struct.TYPE_30__* %97, %struct.TYPE_30__** %25, align 8
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %99 = icmp ne %struct.TYPE_30__* %98, null
  br i1 %99, label %100, label %122

100:                                              ; preds = %93
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @APR_STATUS_IS_EEXIST(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %108 = call %struct.TYPE_30__* @svn_error_trace(%struct.TYPE_30__* %107)
  store %struct.TYPE_30__* %108, %struct.TYPE_30__** %5, align 8
  br label %465

109:                                              ; preds = %100
  %110 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %111 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %116 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %117 = call i32 @SVN_ERR_W(%struct.TYPE_30__* %115, i8* %116)
  br label %121

118:                                              ; preds = %109
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %120 = call i32 @svn_error_clear(%struct.TYPE_30__* %119)
  br label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121, %93
  %123 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %124 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %123, i32 0, i32 2
  %125 = load i32 (i32, %struct.TYPE_28__*, i32*)*, i32 (i32, %struct.TYPE_28__*, i32*)** %124, align 8
  %126 = icmp ne i32 (i32, %struct.TYPE_28__*, i32*)* %125, null
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  %128 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %129 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i64 @strcmp(i8* %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %127
  %135 = load i8*, i8** %26, align 8
  %136 = load i32, i32* @svn_wc_notify_update_add, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = call %struct.TYPE_28__* @svn_wc_create_notify(i8* %135, i32 %136, i32* %137)
  store %struct.TYPE_28__* %138, %struct.TYPE_28__** %29, align 8
  %139 = load i64, i64* @svn_node_dir, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %143 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %142, i32 0, i32 2
  %144 = load i32 (i32, %struct.TYPE_28__*, i32*)*, i32 (i32, %struct.TYPE_28__*, i32*)** %143, align 8
  %145 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %146 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 %144(i32 %147, %struct.TYPE_28__* %148, i32* %149)
  br label %151

151:                                              ; preds = %134, %127, %122
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %152, %struct.TYPE_30__** %5, align 8
  br label %465

153:                                              ; preds = %70
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @svn_node_file, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %153
  %160 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %161 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @strcmp(i8* %162, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %167, %struct.TYPE_30__** %5, align 8
  br label %465

168:                                              ; preds = %159
  %169 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %170 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i8*, i8** %7, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @svn_dirent_local_style(i8* %171, i32* %172)
  %174 = call %struct.TYPE_30__* @svn_error_createf(i32 %169, i32* null, i8* %170, i32 %173)
  store %struct.TYPE_30__* %174, %struct.TYPE_30__** %5, align 8
  br label %465

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %183 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = call i64 @strcmp(i8* %184, i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %189, %struct.TYPE_30__** %5, align 8
  br label %465

190:                                              ; preds = %181, %176
  %191 = load i8*, i8** %7, align 8
  %192 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %193 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strcmp(i8* %191, i8* %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %234

197:                                              ; preds = %190
  %198 = load i8*, i8** %26, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @svn_io_check_path(i8* %198, i64* %30, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load i64, i64* %30, align 8
  %203 = load i64, i64* @svn_node_file, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %197
  %206 = load i64, i64* %30, align 8
  %207 = load i64, i64* @svn_node_unknown, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %205, %197
  %210 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %211 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %209
  %215 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %216 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %217 = load i8*, i8** %26, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @svn_dirent_local_style(i8* %217, i32* %218)
  %220 = call %struct.TYPE_30__* @svn_error_createf(i32 %215, i32* null, i8* %216, i32 %219)
  store %struct.TYPE_30__* %220, %struct.TYPE_30__** %5, align 8
  br label %465

221:                                              ; preds = %209, %205
  %222 = load i64, i64* %30, align 8
  %223 = load i64, i64* @svn_node_dir, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %227 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %228 = load i8*, i8** %26, align 8
  %229 = load i32*, i32** %9, align 8
  %230 = call i32 @svn_dirent_local_style(i8* %228, i32* %229)
  %231 = call %struct.TYPE_30__* @svn_error_createf(i32 %226, i32* null, i8* %227, i32 %230)
  store %struct.TYPE_30__* %231, %struct.TYPE_30__** %5, align 8
  br label %465

232:                                              ; preds = %221
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233, %190
  %235 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %236 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %235, i32 0, i32 5
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @svn_opt_revision_working, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %234
  %243 = load i32*, i32** %11, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = load i32*, i32** %9, align 8
  %246 = load i32*, i32** %9, align 8
  %247 = call i32 @svn_wc_get_pristine_contents2(i32** %22, i32* %243, i8* %244, i32* %245, i32* %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  %249 = load i32*, i32** %22, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %242
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %252, %struct.TYPE_30__** %5, align 8
  br label %465

253:                                              ; preds = %242
  %254 = load i32*, i32** %11, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @svn_wc_get_pristine_props(i32** %14, i32* %254, i8* %255, i32* %256, i32* %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  br label %280

260:                                              ; preds = %234
  %261 = load i8*, i8** %7, align 8
  %262 = load i32*, i32** %9, align 8
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @svn_subst_read_specialfile(i32** %22, i8* %261, i32* %262, i32* %263)
  %265 = call i32 @SVN_ERR(i32 %264)
  %266 = load i32*, i32** %11, align 8
  %267 = load i8*, i8** %7, align 8
  %268 = load i32*, i32** %9, align 8
  %269 = load i32*, i32** %9, align 8
  %270 = call i32 @svn_wc_prop_list2(i32** %14, i32* %266, i8* %267, i32* %268, i32* %269)
  %271 = call i32 @SVN_ERR(i32 %270)
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @svn_wc_status_normal, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %260
  %278 = load i8*, i8** @TRUE, align 8
  store i8* %278, i8** %20, align 8
  br label %279

279:                                              ; preds = %277, %260
  br label %280

280:                                              ; preds = %279, %253
  %281 = load i32*, i32** %14, align 8
  %282 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %283 = call %struct.TYPE_29__* @svn_hash_gets(i32* %281, i32 %282)
  store %struct.TYPE_29__* %283, %struct.TYPE_29__** %18, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %285 = icmp ne %struct.TYPE_29__* %284, null
  br i1 %285, label %286, label %297

286:                                              ; preds = %280
  %287 = load i8*, i8** %26, align 8
  %288 = load i32*, i32** %9, align 8
  %289 = load i32*, i32** %9, align 8
  %290 = call i32 @svn_subst_create_specialfile(i32** %23, i8* %287, i32* %288, i32* %289)
  %291 = call i32 @SVN_ERR(i32 %290)
  %292 = load i32*, i32** %22, align 8
  %293 = load i32*, i32** %23, align 8
  %294 = load i32*, i32** %9, align 8
  %295 = call %struct.TYPE_30__* @svn_stream_copy3(i32* %292, i32* %293, i32* null, i32* null, i32* %294)
  %296 = call %struct.TYPE_30__* @svn_error_trace(%struct.TYPE_30__* %295)
  store %struct.TYPE_30__* %296, %struct.TYPE_30__** %5, align 8
  br label %465

297:                                              ; preds = %280
  %298 = load i32*, i32** %14, align 8
  %299 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %300 = call %struct.TYPE_29__* @svn_hash_gets(i32* %298, i32 %299)
  store %struct.TYPE_29__* %300, %struct.TYPE_29__** %15, align 8
  %301 = load i32*, i32** %14, align 8
  %302 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %303 = call %struct.TYPE_29__* @svn_hash_gets(i32* %301, i32 %302)
  store %struct.TYPE_29__* %303, %struct.TYPE_29__** %16, align 8
  %304 = load i32*, i32** %14, align 8
  %305 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %306 = call %struct.TYPE_29__* @svn_hash_gets(i32* %304, i32 %305)
  store %struct.TYPE_29__* %306, %struct.TYPE_29__** %17, align 8
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %308 = icmp ne %struct.TYPE_29__* %307, null
  br i1 %308, label %309, label %318

309:                                              ; preds = %297
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %314 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @get_eol_style(i32* %13, i8** %19, i32 %312, i32 %315)
  %317 = call i32 @SVN_ERR(i32 %316)
  br label %318

318:                                              ; preds = %309, %297
  %319 = load i8*, i8** %20, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %326

321:                                              ; preds = %318
  %322 = load i8*, i8** %7, align 8
  %323 = load i32*, i32** %9, align 8
  %324 = call i32 @svn_io_file_affected_time(i32* %21, i8* %322, i32* %323)
  %325 = call i32 @SVN_ERR(i32 %324)
  br label %330

326:                                              ; preds = %318
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %21, align 4
  br label %330

330:                                              ; preds = %326, %321
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %332 = icmp ne %struct.TYPE_29__* %331, null
  br i1 %332, label %333, label %370

333:                                              ; preds = %330
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* %31, align 4
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %9, align 8
  %344 = call i8* @svn_path_url_add_component2(i32 %339, i32 %342, i32* %343)
  store i8* %344, i8** %33, align 8
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  store i8* %347, i8** %34, align 8
  %348 = load i8*, i8** %20, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %352

350:                                              ; preds = %333
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %32, align 8
  %351 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %351, i8** %34, align 8
  br label %353

352:                                              ; preds = %333
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %32, align 8
  br label %353

353:                                              ; preds = %352, %350
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %9, align 8
  %358 = load i32, i32* %31, align 4
  %359 = load i8*, i8** %32, align 8
  %360 = call i32 @apr_psprintf(i32* %357, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %358, i8* %359)
  %361 = load i8*, i8** %33, align 8
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %21, align 4
  %366 = load i8*, i8** %34, align 8
  %367 = load i32*, i32** %9, align 8
  %368 = call i32 @svn_subst_build_keywords3(i32** %12, i32 %356, i32 %360, i8* %361, i32 %364, i32 %365, i8* %366, i32* %367)
  %369 = call i32 @SVN_ERR(i32 %368)
  br label %370

370:                                              ; preds = %353, %330
  %371 = load i8*, i8** %26, align 8
  %372 = load i32*, i32** %9, align 8
  %373 = call i32 @svn_dirent_dirname(i8* %371, i32* %372)
  %374 = load i32, i32* @svn_io_file_del_none, align 4
  %375 = load i32*, i32** %9, align 8
  %376 = load i32*, i32** %9, align 8
  %377 = call i32 @svn_stream_open_unique(i32** %23, i8** %24, i32 %373, i32 %374, i32* %375, i32* %376)
  %378 = call i32 @SVN_ERR(i32 %377)
  %379 = load i8*, i8** %19, align 8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %388, label %381

381:                                              ; preds = %370
  %382 = load i32*, i32** %12, align 8
  %383 = icmp ne i32* %382, null
  br i1 %383, label %384, label %401

384:                                              ; preds = %381
  %385 = load i32*, i32** %12, align 8
  %386 = call i64 @apr_hash_count(i32* %385)
  %387 = icmp sgt i64 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %384, %370
  %389 = load i32*, i32** %23, align 8
  %390 = load i8*, i8** %19, align 8
  %391 = load i8*, i8** @FALSE, align 8
  %392 = load i32*, i32** %12, align 8
  %393 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %394 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = icmp ne i32 %395, 0
  %397 = xor i1 %396, true
  %398 = zext i1 %397 to i32
  %399 = load i32*, i32** %9, align 8
  %400 = call i32* @svn_subst_stream_translated(i32* %389, i8* %390, i8* %391, i32* %392, i32 %398, i32* %399)
  store i32* %400, i32** %23, align 8
  br label %401

401:                                              ; preds = %388, %384, %381
  %402 = load i32*, i32** %22, align 8
  %403 = load i32*, i32** %23, align 8
  %404 = load i32*, i32** %9, align 8
  %405 = call %struct.TYPE_30__* @svn_stream_copy3(i32* %402, i32* %403, i32* null, i32* null, i32* %404)
  store %struct.TYPE_30__* %405, %struct.TYPE_30__** %25, align 8
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %407 = icmp ne %struct.TYPE_30__* %406, null
  br i1 %407, label %417, label %408

408:                                              ; preds = %401
  %409 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %410 = icmp ne %struct.TYPE_29__* %409, null
  br i1 %410, label %411, label %417

411:                                              ; preds = %408
  %412 = load i8*, i8** %24, align 8
  %413 = load i8*, i8** @TRUE, align 8
  %414 = load i8*, i8** @FALSE, align 8
  %415 = load i32*, i32** %9, align 8
  %416 = call %struct.TYPE_30__* @svn_io_set_file_executable(i8* %412, i8* %413, i8* %414, i32* %415)
  store %struct.TYPE_30__* %416, %struct.TYPE_30__** %25, align 8
  br label %417

417:                                              ; preds = %411, %408, %401
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %419 = icmp ne %struct.TYPE_30__* %418, null
  br i1 %419, label %425, label %420

420:                                              ; preds = %417
  %421 = load i32, i32* %21, align 4
  %422 = load i8*, i8** %24, align 8
  %423 = load i32*, i32** %9, align 8
  %424 = call %struct.TYPE_30__* @svn_io_set_file_affected_time(i32 %421, i8* %422, i32* %423)
  store %struct.TYPE_30__* %424, %struct.TYPE_30__** %25, align 8
  br label %425

425:                                              ; preds = %420, %417
  %426 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %427 = icmp ne %struct.TYPE_30__* %426, null
  br i1 %427, label %428, label %435

428:                                              ; preds = %425
  %429 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %430 = load i8*, i8** %24, align 8
  %431 = load i8*, i8** @FALSE, align 8
  %432 = load i32*, i32** %9, align 8
  %433 = call i32 @svn_io_remove_file2(i8* %430, i8* %431, i32* %432)
  %434 = call %struct.TYPE_30__* @svn_error_compose_create(%struct.TYPE_30__* %429, i32 %433)
  store %struct.TYPE_30__* %434, %struct.TYPE_30__** %5, align 8
  br label %465

435:                                              ; preds = %425
  %436 = load i8*, i8** %24, align 8
  %437 = load i8*, i8** %26, align 8
  %438 = load i8*, i8** @FALSE, align 8
  %439 = load i32*, i32** %9, align 8
  %440 = call i32 @svn_io_file_rename2(i8* %436, i8* %437, i8* %438, i32* %439)
  %441 = call i32 @SVN_ERR(i32 %440)
  %442 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %443 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %442, i32 0, i32 2
  %444 = load i32 (i32, %struct.TYPE_28__*, i32*)*, i32 (i32, %struct.TYPE_28__*, i32*)** %443, align 8
  %445 = icmp ne i32 (i32, %struct.TYPE_28__*, i32*)* %444, null
  br i1 %445, label %446, label %463

446:                                              ; preds = %435
  %447 = load i8*, i8** %26, align 8
  %448 = load i32, i32* @svn_wc_notify_update_add, align 4
  %449 = load i32*, i32** %9, align 8
  %450 = call %struct.TYPE_28__* @svn_wc_create_notify(i8* %447, i32 %448, i32* %449)
  store %struct.TYPE_28__* %450, %struct.TYPE_28__** %35, align 8
  %451 = load i64, i64* @svn_node_file, align 8
  %452 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %453 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %452, i32 0, i32 0
  store i64 %451, i64* %453, align 8
  %454 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %455 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %454, i32 0, i32 2
  %456 = load i32 (i32, %struct.TYPE_28__*, i32*)*, i32 (i32, %struct.TYPE_28__*, i32*)** %455, align 8
  %457 = load %struct.export_info_baton*, %struct.export_info_baton** %10, align 8
  %458 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %461 = load i32*, i32** %9, align 8
  %462 = call i32 %456(i32 %459, %struct.TYPE_28__* %460, i32* %461)
  br label %463

463:                                              ; preds = %446, %435
  %464 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %464, %struct.TYPE_30__** %5, align 8
  br label %465

465:                                              ; preds = %463, %428, %286, %251, %225, %214, %188, %168, %166, %151, %106, %68
  %466 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  ret %struct.TYPE_30__* %466
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_stat(%struct.TYPE_31__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local %struct.TYPE_30__* @svn_error_trace(%struct.TYPE_30__*) #1

declare dso_local i32 @SVN_ERR_W(%struct.TYPE_30__*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_30__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_28__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_error_createf(i32, i32*, i8*, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_wc_get_pristine_contents2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_get_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_prop_list2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_subst_create_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_stream_copy3(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_eol_style(i32*, i8**, i32, i32) #1

declare dso_local i32 @svn_io_file_affected_time(i32*, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i32, i32*) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i32, i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i8*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_io_set_file_executable(i8*, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_io_set_file_affected_time(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_error_compose_create(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
