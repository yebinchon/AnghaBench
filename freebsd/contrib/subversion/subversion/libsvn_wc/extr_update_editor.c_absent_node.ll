; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_absent_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_absent_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.dir_baton = type { i32, i32, i32, i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { i32, i32, i32, i64, i32, i32*, i32, i32, i32, i32 (i32, i32*, i32*)* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc_notify_update_skip_obstruction = common dso_local global i32 0, align 4
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32, i8*, i32*)* @absent_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @absent_node(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.dir_baton*
  store %struct.dir_baton* %25, %struct.dir_baton** %10, align 8
  %26 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %27 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %26, i32 0, i32 5
  %28 = load %struct.edit_baton*, %struct.edit_baton** %27, align 8
  store %struct.edit_baton* %28, %struct.edit_baton** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %12, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @svn_dirent_basename(i8* %31, i32* null)
  store i8* %32, i8** %13, align 8
  store i32* null, i32** %18, align 8
  %33 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %5, align 8
  br label %260

39:                                               ; preds = %4
  %40 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %41 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i8* @svn_dirent_join(i32 %42, i8* %43, i32* %44)
  store i8* %45, i8** %14, align 8
  %46 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call %struct.TYPE_8__* @svn_wc__db_read_info(i64* %16, i32* %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %48, i8* %49, i32* %50, i32* %51)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %15, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %39
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %63 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %5, align 8
  br label %260

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %66 = call i32 @svn_error_clear(%struct.TYPE_8__* %65)
  %67 = load i64, i64* @svn_wc__db_status_not_present, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i32, i32* @svn_node_unknown, align 4
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %64, %39
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @mark_directory_edited(%struct.dir_baton* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* @svn_wc__db_status_normal, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %136

82:                                               ; preds = %78
  %83 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %84 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @svn_wc__db_is_wcroot(i64* %19, i32 %85, i8* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i64, i64* %19, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %135

93:                                               ; preds = %82
  %94 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %95 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %20, i32 %96, i8* %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i64, i64* %20, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %93
  %105 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %106 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %105, i32 0, i32 9
  %107 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %106, align 8
  %108 = icmp ne i32 (i32, i32*, i32*)* %107, null
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* @svn_wc_notify_update_skip_obstruction, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = call i32* @svn_wc_create_notify(i8* %110, i32 %111, i32* %112)
  store i32* %113, i32** %22, align 8
  %114 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %115 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %114, i32 0, i32 9
  %116 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %115, align 8
  %117 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %118 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %22, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 %116(i32 %119, i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %109, %104
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @svn_pool_destroy(i32* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %5, align 8
  br label %260

127:                                              ; preds = %93
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @delete_entry(i8* %128, i32 %129, %struct.dir_baton* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %92
  br label %177

136:                                              ; preds = %78
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %140, %136
  br label %176

149:                                              ; preds = %144
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* @svn_wc__db_status_normal, align 8
  %152 = icmp ne i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @SVN_ERR_ASSERT(i32 %153)
  %155 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %156 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %149
  %160 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %161 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %159
  %165 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i64, i64* %16, align 8
  %168 = load i32, i32* @FALSE, align 4
  %169 = load i32, i32* @svn_node_unknown, align 4
  %170 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @check_tree_conflict(i32** %18, %struct.edit_baton* %165, i8* %166, i64 %167, i32 %168, i32 %169, i32 %170, i32* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  br label %175

175:                                              ; preds = %164, %159, %149
  br label %176

176:                                              ; preds = %175, %148
  br label %177

177:                                              ; preds = %176, %135
  %178 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %179 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = call i8* @svn_relpath_join(i32 %180, i8* %181, i32* %182)
  store i8* %183, i8** %23, align 8
  %184 = load i32*, i32** %18, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %198

186:                                              ; preds = %177
  %187 = load i32*, i32** %18, align 8
  %188 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %191 = load i8*, i8** %23, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* @svn_node_unknown, align 4
  %194 = load i32*, i32** %12, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @complete_conflict(i32* %187, %struct.edit_baton* %188, i8* %189, i32* null, i32 %190, i8* %191, i32 %192, i32 %193, i32* null, i32* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  br label %198

198:                                              ; preds = %186, %177
  %199 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %200 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = load i8*, i8** %23, align 8
  %204 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %205 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %208 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %211 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %216 = load i32*, i32** %18, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = call i32 @svn_wc__db_base_add_excluded_node(i32 %201, i8* %202, i8* %203, i32 %206, i32 %209, i32 %213, i32 %214, i64 %215, i32* %216, i32* null, i32* %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load i32*, i32** %18, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %256

222:                                              ; preds = %198
  %223 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %224 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %249

227:                                              ; preds = %222
  %228 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %229 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load i8*, i8** %14, align 8
  %232 = load i32, i32* %17, align 4
  %233 = load i32*, i32** %18, align 8
  %234 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %235 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %238 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %241 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %244 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** %12, align 8
  %247 = call i32 @svn_wc__conflict_invoke_resolver(i32 %230, i8* %231, i32 %232, i32* %233, i32* null, i64 %236, i32 %239, i32 %242, i32 %245, i32* %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  br label %249

249:                                              ; preds = %227, %222
  %250 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %251 = load i8*, i8** %14, align 8
  %252 = load i32, i32* %17, align 4
  %253 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %254 = load i32*, i32** %12, align 8
  %255 = call i32 @do_notification(%struct.edit_baton* %250, i8* %251, i32 %252, i32 %253, i32* %254)
  br label %256

256:                                              ; preds = %249, %198
  %257 = load i32*, i32** %12, align 8
  %258 = call i32 @svn_pool_destroy(i32* %257)
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %259, %struct.TYPE_8__** %5, align 8
  br label %260

260:                                              ; preds = %256, %123, %61, %37
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %261
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_directory_edited(%struct.dir_baton*, i32*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @delete_entry(i8*, i32, %struct.dir_baton*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @check_tree_conflict(i32**, %struct.edit_baton*, i8*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @complete_conflict(i32*, %struct.edit_baton*, i8*, i32*, i32, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_add_excluded_node(i32, i8*, i8*, i32, i32, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_invoke_resolver(i32, i8*, i32, i32*, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @do_notification(%struct.edit_baton*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
