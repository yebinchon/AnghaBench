; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_dump_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.edit_baton = type { i32, i32, i32, i32*, i64, i32, i64, i64, i64, i32, i8**, i32 }
%struct.TYPE_12__ = type { i32* }

@FALSE = common dso_local global i8* null, align 8
@svn_repos_notify_warning_invalid_fspath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"E%06d: While validating fspath '%s': %s\00", align 1
@SVN_REPOS_DUMPFILE_NODE_PATH = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_REPOS_DUMPFILE_NODE_KIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Change invalid path '%s' in r%ld\00", align 1
@SVN_REPOS_DUMPFILE_NODE_ACTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Deleting invalid path '%s' in r%ld\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@svn_node_unknown = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Replacing non-existent path '%s' in r%ld\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"Adding already existing path '%s' in r%ld\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Copying from invalid path to '%s' in r%ld\00", align 1
@svn_repos_notify_warning_found_old_reference = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [144 x i8] c"Referencing data in revision %ld, which is older than the oldest dumped revision (r%ld).  Loading this dump into an empty repository will fail.\00", align 1
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_MD5 = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_SHA1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_PROP_DELTA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"PROPS-END\00", align 1
@SVN_REPOS_DUMPFILE_TEXT_DELTA = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_SHA1 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_CONTENT_SHA1 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.edit_baton*, i8*, i64, i32, i8*, i8*, i32, i32*)* @dump_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @dump_node(%struct.edit_baton* %0, i8* %1, i64 %2, i32 %3, i8* %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_13__*, align 8
  %29 = alloca [512 x i8], align 16
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_12__*, align 8
  %36 = alloca %struct.TYPE_12__*, align 8
  %37 = alloca %struct.TYPE_12__*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  store %struct.edit_baton* %0, %struct.edit_baton** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %41 = load i8*, i8** @FALSE, align 8
  store i8* %41, i8** %20, align 8
  %42 = load i8*, i8** @FALSE, align 8
  store i8* %42, i8** %21, align 8
  %43 = load i8*, i8** %11, align 8
  store i8* %43, i8** %22, align 8
  %44 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %45 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %23, align 4
  store i32* null, i32** %24, align 8
  store i32* null, i32** %25, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32* @svn_repos__dumpfile_headers_create(i32* %48)
  store i32* %49, i32** %26, align 8
  %50 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %51 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %8
  %55 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %56 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %54, %8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call %struct.TYPE_13__* @svn_fs__path_valid(i8* %60, i32* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %28, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %100

65:                                               ; preds = %59
  %66 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %67 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i32*, i32** %17, align 8
  %72 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %73 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %76 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @svn_repos_notify_warning_invalid_fspath, align 4
  %79 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %29, i64 0, i64 0
  %86 = call i32 @svn_err_best_message(%struct.TYPE_13__* %84, i8* %85, i32 512)
  %87 = call i32 (i32*, i64, i32, i32, i32, i32, ...) @notify_warning(i32* %71, i64 %74, i32 %77, i32 %78, i32 %79, i32 %82, i8* %83, i32 %86)
  br label %88

88:                                               ; preds = %70, %65
  %89 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %90 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %95 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %9, align 8
  br label %827

96:                                               ; preds = %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %98 = call i32 @svn_error_clear(%struct.TYPE_13__* %97)
  br label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %59
  br label %101

101:                                              ; preds = %100, %54
  %102 = load i32*, i32** %26, align 8
  %103 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_PATH, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @svn_repos__dumpfile_header_push(i32* %102, i32 %103, i8* %104)
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @svn_node_file, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32*, i32** %26, align 8
  %111 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %112 = call i32 @svn_repos__dumpfile_header_push(i32* %110, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %122

113:                                              ; preds = %101
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @svn_node_dir, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32*, i32** %26, align 8
  %119 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %120 = call i32 @svn_repos__dumpfile_header_push(i32* %118, i32 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %109
  %123 = load i8*, i8** %15, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i8*, i8** %15, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i8* @svn_relpath_canonicalize(i8* %126, i32* %127)
  store i8* %128, i8** %15, align 8
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i8*, i8** %15, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i64 @ARE_VALID_COPY_ARGS(i8* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %15, align 8
  store i8* %135, i8** %22, align 8
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %23, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %13, align 4
  switch i32 %138, label %487 [
    i32 130, label %139
    i32 129, label %196
    i32 128, label %229
    i32 131, label %296
  ]

139:                                              ; preds = %137
  %140 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %141 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %148 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = call i32 @node_must_exist(%struct.edit_baton* %145, i8* %146, i32 %149, i64 %150, i32* %151)
  %153 = load i32*, i32** %17, align 8
  %154 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i8*, i8** %11, align 8
  %156 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %157 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @apr_psprintf(i32* %153, i32 %154, i8* %155, i32 %158)
  %160 = call i32 @SVN_ERR_W(i32 %152, i32 %159)
  br label %161

161:                                              ; preds = %144, %139
  %162 = load i32*, i32** %26, align 8
  %163 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %164 = call i32 @svn_repos__dumpfile_header_push(i32* %162, i32 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %165 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %166 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @svn_fs_root_fs(i32* %167)
  %169 = load i32, i32* %23, align 4
  %170 = load i32*, i32** %17, align 8
  %171 = call i32 @svn_fs_revision_root(i32** %24, i32 %168, i32 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  %173 = load i32*, i32** %24, align 8
  %174 = load i8*, i8** %22, align 8
  %175 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %176 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = call i32 @svn_fs_props_changed(i8** %21, i32* %173, i8* %174, i32* %177, i8* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i64, i64* %12, align 8
  %183 = load i64, i64* @svn_node_file, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %161
  %186 = load i32*, i32** %24, align 8
  %187 = load i8*, i8** %22, align 8
  %188 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %189 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i32*, i32** %17, align 8
  %193 = call i32 @svn_fs_contents_changed(i8** %20, i32* %186, i8* %187, i32* %190, i8* %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  br label %195

195:                                              ; preds = %185, %161
  br label %487

196:                                              ; preds = %137
  %197 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %198 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %196
  %202 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %205 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @node_must_exist(%struct.edit_baton* %202, i8* %203, i32 %206, i64 %207, i32* %208)
  %210 = load i32*, i32** %17, align 8
  %211 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %212 = load i8*, i8** %11, align 8
  %213 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %214 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @apr_psprintf(i32* %210, i32 %211, i8* %212, i32 %215)
  %217 = call i32 @SVN_ERR_W(i32 %209, i32 %216)
  %218 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %219 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = call i32 @tracker_path_delete(i32 %220, i8* %221)
  br label %223

223:                                              ; preds = %201, %196
  %224 = load i32*, i32** %26, align 8
  %225 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %226 = call i32 @svn_repos__dumpfile_header_push(i32* %224, i32 %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %227 = load i8*, i8** @FALSE, align 8
  store i8* %227, i8** %20, align 8
  %228 = load i8*, i8** @FALSE, align 8
  store i8* %228, i8** %21, align 8
  br label %487

229:                                              ; preds = %137
  %230 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %231 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %229
  %235 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %236 = load i8*, i8** %11, align 8
  %237 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %238 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* @svn_node_unknown, align 8
  %241 = load i32*, i32** %17, align 8
  %242 = call i32 @node_must_exist(%struct.edit_baton* %235, i8* %236, i32 %239, i64 %240, i32* %241)
  %243 = load i32*, i32** %17, align 8
  %244 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %245 = load i8*, i8** %11, align 8
  %246 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %247 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @apr_psprintf(i32* %243, i32 %244, i8* %245, i32 %248)
  %250 = call i32 @SVN_ERR_W(i32 %242, i32 %249)
  br label %251

251:                                              ; preds = %234, %229
  %252 = load i8*, i8** %14, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %276, label %254

254:                                              ; preds = %251
  %255 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %256 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %255, i32 0, i32 11
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %261 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %260, i32 0, i32 11
  %262 = load i32, i32* %261, align 8
  %263 = load i8*, i8** %11, align 8
  %264 = call i32 @tracker_path_replace(i32 %262, i8* %263)
  br label %265

265:                                              ; preds = %259, %254
  %266 = load i32*, i32** %26, align 8
  %267 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %268 = call i32 @svn_repos__dumpfile_header_push(i32* %266, i32 %267, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %269 = load i64, i64* %12, align 8
  %270 = load i64, i64* @svn_node_file, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %265
  %273 = load i8*, i8** @TRUE, align 8
  store i8* %273, i8** %20, align 8
  br label %274

274:                                              ; preds = %272, %265
  %275 = load i8*, i8** @TRUE, align 8
  store i8* %275, i8** %21, align 8
  br label %487

276:                                              ; preds = %251
  %277 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %278 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %277, i32 0, i32 11
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %283 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %282, i32 0, i32 11
  %284 = load i32, i32* %283, align 8
  %285 = load i8*, i8** %11, align 8
  %286 = call i32 @tracker_path_delete(i32 %284, i8* %285)
  br label %287

287:                                              ; preds = %281, %276
  %288 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %289 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i8*, i8** %11, align 8
  %292 = load i32*, i32** %17, align 8
  %293 = call i32 @dump_node_delete(i32 %290, i8* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32 %293)
  br label %295

295:                                              ; preds = %287
  br label %296

296:                                              ; preds = %137, %295
  %297 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %298 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %296
  %302 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %303 = load i8*, i8** %11, align 8
  %304 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %305 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32*, i32** %17, align 8
  %308 = call i32 @node_must_not_exist(%struct.edit_baton* %302, i8* %303, i32 %306, i32* %307)
  %309 = load i32*, i32** %17, align 8
  %310 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %311 = load i8*, i8** %11, align 8
  %312 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %313 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @apr_psprintf(i32* %309, i32 %310, i8* %311, i32 %314)
  %316 = call i32 @SVN_ERR_W(i32 %308, i32 %315)
  br label %317

317:                                              ; preds = %301, %296
  %318 = load i32*, i32** %26, align 8
  %319 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %320 = call i32 @svn_repos__dumpfile_header_push(i32* %318, i32 %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %321 = load i8*, i8** %14, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %342, label %323

323:                                              ; preds = %317
  %324 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %325 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %330 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %329, i32 0, i32 11
  %331 = load i32, i32* %330, align 8
  %332 = load i8*, i8** %11, align 8
  %333 = call i32 @tracker_path_add(i32 %331, i8* %332)
  br label %334

334:                                              ; preds = %328, %323
  %335 = load i64, i64* %12, align 8
  %336 = load i64, i64* @svn_node_file, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %340

338:                                              ; preds = %334
  %339 = load i8*, i8** @TRUE, align 8
  store i8* %339, i8** %20, align 8
  br label %340

340:                                              ; preds = %338, %334
  %341 = load i8*, i8** @TRUE, align 8
  store i8* %341, i8** %21, align 8
  br label %486

342:                                              ; preds = %317
  %343 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %344 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %343, i32 0, i32 11
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %369

347:                                              ; preds = %342
  %348 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %349 = load i8*, i8** %22, align 8
  %350 = load i32, i32* %23, align 4
  %351 = load i64, i64* %12, align 8
  %352 = load i32*, i32** %17, align 8
  %353 = call i32 @node_must_exist(%struct.edit_baton* %348, i8* %349, i32 %350, i64 %351, i32* %352)
  %354 = load i32*, i32** %17, align 8
  %355 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %356 = load i8*, i8** %11, align 8
  %357 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %358 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @apr_psprintf(i32* %354, i32 %355, i8* %356, i32 %359)
  %361 = call i32 @SVN_ERR_W(i32 %353, i32 %360)
  %362 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %363 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %362, i32 0, i32 11
  %364 = load i32, i32* %363, align 8
  %365 = load i8*, i8** %11, align 8
  %366 = load i8*, i8** %22, align 8
  %367 = load i32, i32* %23, align 4
  %368 = call i32 @tracker_path_copy(i32 %364, i8* %365, i8* %366, i32 %367)
  br label %369

369:                                              ; preds = %347, %342
  %370 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %371 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %370, i32 0, i32 8
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %410, label %374

374:                                              ; preds = %369
  %375 = load i32, i32* %16, align 4
  %376 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %377 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp slt i32 %375, %378
  br i1 %379, label %380, label %410

380:                                              ; preds = %374
  %381 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %382 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %381, i32 0, i32 6
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %410

385:                                              ; preds = %380
  %386 = load i32*, i32** %17, align 8
  %387 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %388 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %387, i32 0, i32 6
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %391 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @svn_repos_notify_warning_found_old_reference, align 4
  %394 = call i32 @_(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.12, i64 0, i64 0))
  %395 = load i32, i32* %16, align 4
  %396 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %397 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (i32*, i64, i32, i32, i32, i32, ...) @notify_warning(i32* %386, i64 %389, i32 %392, i32 %393, i32 %394, i32 %395, i32 %398)
  %400 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %401 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %400, i32 0, i32 10
  %402 = load i8**, i8*** %401, align 8
  %403 = icmp ne i8** %402, null
  br i1 %403, label %404, label %409

404:                                              ; preds = %385
  %405 = load i8*, i8** @TRUE, align 8
  %406 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %407 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %406, i32 0, i32 10
  %408 = load i8**, i8*** %407, align 8
  store i8* %405, i8** %408, align 8
  br label %409

409:                                              ; preds = %404, %385
  br label %410

410:                                              ; preds = %409, %380, %374, %369
  %411 = load i32*, i32** %26, align 8
  %412 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, align 4
  %413 = load i32, i32* %16, align 4
  %414 = call i32 @svn_repos__dumpfile_header_pushf(i32* %411, i32 %412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %413)
  %415 = load i32*, i32** %26, align 8
  %416 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, align 4
  %417 = load i8*, i8** %15, align 8
  %418 = call i32 @svn_repos__dumpfile_header_push(i32* %415, i32 %416, i8* %417)
  %419 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %420 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %419, i32 0, i32 3
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 @svn_fs_root_fs(i32* %421)
  %423 = load i32, i32* %23, align 4
  %424 = load i32*, i32** %17, align 8
  %425 = call i32 @svn_fs_revision_root(i32** %24, i32 %422, i32 %423, i32* %424)
  %426 = call i32 @SVN_ERR(i32 %425)
  %427 = load i32*, i32** %24, align 8
  %428 = load i8*, i8** %22, align 8
  %429 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %430 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %429, i32 0, i32 3
  %431 = load i32*, i32** %430, align 8
  %432 = load i8*, i8** %11, align 8
  %433 = load i32*, i32** %17, align 8
  %434 = call i32 @svn_fs_props_changed(i8** %21, i32* %427, i8* %428, i32* %431, i8* %432, i32* %433)
  %435 = call i32 @SVN_ERR(i32 %434)
  %436 = load i64, i64* %12, align 8
  %437 = load i64, i64* @svn_node_file, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %485

439:                                              ; preds = %410
  %440 = load i32*, i32** %24, align 8
  %441 = load i8*, i8** %22, align 8
  %442 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %443 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %442, i32 0, i32 3
  %444 = load i32*, i32** %443, align 8
  %445 = load i8*, i8** %11, align 8
  %446 = load i32*, i32** %17, align 8
  %447 = call i32 @svn_fs_contents_changed(i8** %20, i32* %440, i8* %441, i32* %444, i8* %445, i32* %446)
  %448 = call i32 @SVN_ERR(i32 %447)
  %449 = load i32, i32* @svn_checksum_md5, align 4
  %450 = load i32*, i32** %24, align 8
  %451 = load i8*, i8** %22, align 8
  %452 = load i8*, i8** @FALSE, align 8
  %453 = load i32*, i32** %17, align 8
  %454 = call i32 @svn_fs_file_checksum(i32** %30, i32 %449, i32* %450, i8* %451, i8* %452, i32* %453)
  %455 = call i32 @SVN_ERR(i32 %454)
  %456 = load i32*, i32** %30, align 8
  %457 = load i32*, i32** %17, align 8
  %458 = call i8* @svn_checksum_to_cstring(i32* %456, i32* %457)
  store i8* %458, i8** %31, align 8
  %459 = load i8*, i8** %31, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %466

461:                                              ; preds = %439
  %462 = load i32*, i32** %26, align 8
  %463 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_MD5, align 4
  %464 = load i8*, i8** %31, align 8
  %465 = call i32 @svn_repos__dumpfile_header_push(i32* %462, i32 %463, i8* %464)
  br label %466

466:                                              ; preds = %461, %439
  %467 = load i32, i32* @svn_checksum_sha1, align 4
  %468 = load i32*, i32** %24, align 8
  %469 = load i8*, i8** %22, align 8
  %470 = load i8*, i8** @FALSE, align 8
  %471 = load i32*, i32** %17, align 8
  %472 = call i32 @svn_fs_file_checksum(i32** %30, i32 %467, i32* %468, i8* %469, i8* %470, i32* %471)
  %473 = call i32 @SVN_ERR(i32 %472)
  %474 = load i32*, i32** %30, align 8
  %475 = load i32*, i32** %17, align 8
  %476 = call i8* @svn_checksum_to_cstring(i32* %474, i32* %475)
  store i8* %476, i8** %31, align 8
  %477 = load i8*, i8** %31, align 8
  %478 = icmp ne i8* %477, null
  br i1 %478, label %479, label %484

479:                                              ; preds = %466
  %480 = load i32*, i32** %26, align 8
  %481 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_SHA1, align 4
  %482 = load i8*, i8** %31, align 8
  %483 = call i32 @svn_repos__dumpfile_header_push(i32* %480, i32 %481, i8* %482)
  br label %484

484:                                              ; preds = %479, %466
  br label %485

485:                                              ; preds = %484, %410
  br label %486

486:                                              ; preds = %485, %340
  br label %487

487:                                              ; preds = %137, %486, %274, %223, %195
  %488 = load i8*, i8** %20, align 8
  %489 = icmp ne i8* %488, null
  br i1 %489, label %505, label %490

490:                                              ; preds = %487
  %491 = load i8*, i8** %21, align 8
  %492 = icmp ne i8* %491, null
  br i1 %492, label %505, label %493

493:                                              ; preds = %490
  %494 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %495 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = load i32*, i32** %26, align 8
  %498 = load i32*, i32** %17, align 8
  %499 = call i32 @svn_repos__dump_headers(i32 %496, i32* %497, i32* %498)
  %500 = call i32 @SVN_ERR(i32 %499)
  store i32 1, i32* %19, align 4
  %501 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %502 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = call %struct.TYPE_13__* @svn_stream_write(i32 %503, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %19)
  store %struct.TYPE_13__* %504, %struct.TYPE_13__** %9, align 8
  br label %827

505:                                              ; preds = %490, %487
  %506 = load i8*, i8** %21, align 8
  %507 = icmp ne i8* %506, null
  br i1 %507, label %508, label %652

508:                                              ; preds = %505
  store i32* null, i32** %33, align 8
  %509 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %510 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %509, i32 0, i32 3
  %511 = load i32*, i32** %510, align 8
  %512 = load i8*, i8** %11, align 8
  %513 = load i32*, i32** %17, align 8
  %514 = call i32 @svn_fs_node_proplist(i32** %32, i32* %511, i8* %512, i32* %513)
  %515 = call i32 @SVN_ERR(i32 %514)
  %516 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %517 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %516, i32 0, i32 8
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %556, label %520

520:                                              ; preds = %508
  %521 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %522 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %521, i32 0, i32 6
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %556

525:                                              ; preds = %520
  %526 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %527 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = icmp sgt i32 %528, 1
  br i1 %529, label %530, label %556

530:                                              ; preds = %525
  %531 = load i32*, i32** %32, align 8
  %532 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %533 = call %struct.TYPE_12__* @svn_hash_gets(i32* %531, i32 %532)
  store %struct.TYPE_12__* %533, %struct.TYPE_12__** %35, align 8
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %535 = icmp ne %struct.TYPE_12__* %534, null
  br i1 %535, label %536, label %555

536:                                              ; preds = %530
  %537 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %538 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %537, i32 0, i32 9
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %541 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %540, i32 0, i32 0
  %542 = load i32*, i32** %541, align 8
  %543 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %544 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %547 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %546, i32 0, i32 6
  %548 = load i64, i64* %547, align 8
  %549 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %550 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %549, i32 0, i32 5
  %551 = load i32, i32* %550, align 8
  %552 = load i32*, i32** %17, align 8
  %553 = call %struct.TYPE_13__* @verify_mergeinfo_revisions(i32 %539, i32* %542, i32 %545, i64 %548, i32 %551, i32* %552)
  %554 = call i32 @svn_error_clear(%struct.TYPE_13__* %553)
  br label %555

555:                                              ; preds = %536, %530
  br label %556

556:                                              ; preds = %555, %525, %520, %508
  %557 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %558 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %557, i32 0, i32 8
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %613

561:                                              ; preds = %556
  %562 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %563 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %562, i32 0, i32 7
  %564 = load i64, i64* %563, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %613

566:                                              ; preds = %561
  %567 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %568 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %567, i32 0, i32 6
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %613

571:                                              ; preds = %566
  %572 = load i32*, i32** %32, align 8
  %573 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %574 = call %struct.TYPE_12__* @svn_hash_gets(i32* %572, i32 %573)
  store %struct.TYPE_12__* %574, %struct.TYPE_12__** %36, align 8
  %575 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %576 = icmp ne %struct.TYPE_12__* %575, null
  br i1 %576, label %577, label %612

577:                                              ; preds = %571
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %37, align 8
  %578 = load i32*, i32** %24, align 8
  %579 = icmp ne i32* %578, null
  br i1 %579, label %580, label %589

580:                                              ; preds = %577
  %581 = load i32*, i32** %24, align 8
  %582 = load i8*, i8** %22, align 8
  %583 = load i32*, i32** %17, align 8
  %584 = call i32 @svn_fs_node_proplist(i32** %33, i32* %581, i8* %582, i32* %583)
  %585 = call i32 @SVN_ERR(i32 %584)
  %586 = load i32*, i32** %33, align 8
  %587 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %588 = call %struct.TYPE_12__* @svn_hash_gets(i32* %586, i32 %587)
  store %struct.TYPE_12__* %588, %struct.TYPE_12__** %37, align 8
  br label %589

589:                                              ; preds = %580, %577
  %590 = load i8*, i8** %11, align 8
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 0
  %593 = load i32*, i32** %592, align 8
  %594 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %595 = icmp ne %struct.TYPE_12__* %594, null
  br i1 %595, label %596, label %600

596:                                              ; preds = %589
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 0
  %599 = load i32*, i32** %598, align 8
  br label %601

600:                                              ; preds = %589
  br label %601

601:                                              ; preds = %600, %596
  %602 = phi i32* [ %599, %596 ], [ null, %600 ]
  %603 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %604 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %603, i32 0, i32 6
  %605 = load i64, i64* %604, align 8
  %606 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %607 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %606, i32 0, i32 5
  %608 = load i32, i32* %607, align 8
  %609 = load i32*, i32** %17, align 8
  %610 = call i32 @check_mergeinfo_normalization(i8* %590, i32* %593, i32* %602, i64 %605, i32 %608, i32* %609)
  %611 = call i32 @SVN_ERR(i32 %610)
  br label %612

612:                                              ; preds = %601, %571
  br label %613

613:                                              ; preds = %612, %566, %561, %556
  %614 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %615 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %614, i32 0, i32 4
  %616 = load i64, i64* %615, align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %634

618:                                              ; preds = %613
  %619 = load i32*, i32** %24, align 8
  %620 = icmp ne i32* %619, null
  br i1 %620, label %621, label %634

621:                                              ; preds = %618
  %622 = load i32*, i32** %33, align 8
  %623 = icmp ne i32* %622, null
  br i1 %623, label %630, label %624

624:                                              ; preds = %621
  %625 = load i32*, i32** %24, align 8
  %626 = load i8*, i8** %22, align 8
  %627 = load i32*, i32** %17, align 8
  %628 = call i32 @svn_fs_node_proplist(i32** %33, i32* %625, i8* %626, i32* %627)
  %629 = call i32 @SVN_ERR(i32 %628)
  br label %630

630:                                              ; preds = %624, %621
  %631 = load i32*, i32** %26, align 8
  %632 = load i32, i32* @SVN_REPOS_DUMPFILE_PROP_DELTA, align 4
  %633 = call i32 @svn_repos__dumpfile_header_push(i32* %631, i32 %632, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %637

634:                                              ; preds = %618, %613
  %635 = load i32*, i32** %17, align 8
  %636 = call i32* @apr_hash_make(i32* %635)
  store i32* %636, i32** %33, align 8
  br label %637

637:                                              ; preds = %634, %630
  %638 = load i32*, i32** %17, align 8
  %639 = call i32* @svn_stringbuf_create_ensure(i32 0, i32* %638)
  store i32* %639, i32** %18, align 8
  %640 = load i32*, i32** %18, align 8
  %641 = load i32*, i32** %17, align 8
  %642 = call i32* @svn_stream_from_stringbuf(i32* %640, i32* %641)
  store i32* %642, i32** %34, align 8
  %643 = load i32*, i32** %32, align 8
  %644 = load i32*, i32** %33, align 8
  %645 = load i32*, i32** %34, align 8
  %646 = load i32*, i32** %17, align 8
  %647 = call i32 @svn_hash_write_incremental(i32* %643, i32* %644, i32* %645, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %646)
  %648 = call i32 @SVN_ERR(i32 %647)
  %649 = load i32*, i32** %34, align 8
  %650 = call i32 @svn_stream_close(i32* %649)
  %651 = call i32 @SVN_ERR(i32 %650)
  br label %652

652:                                              ; preds = %637, %505
  %653 = load i8*, i8** %20, align 8
  %654 = icmp ne i8* %653, null
  br i1 %654, label %655, label %766

655:                                              ; preds = %652
  %656 = load i64, i64* %12, align 8
  %657 = load i64, i64* @svn_node_file, align 8
  %658 = icmp eq i64 %656, %657
  br i1 %658, label %659, label %766

659:                                              ; preds = %655
  %660 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %661 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %660, i32 0, i32 4
  %662 = load i64, i64* %661, align 8
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %717

664:                                              ; preds = %659
  %665 = load i32*, i32** %24, align 8
  %666 = load i8*, i8** %22, align 8
  %667 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %668 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %667, i32 0, i32 3
  %669 = load i32*, i32** %668, align 8
  %670 = load i8*, i8** %11, align 8
  %671 = load i32*, i32** %17, align 8
  %672 = call i32 @store_delta(i32** %25, i32* %27, i32* %665, i8* %666, i32* %669, i8* %670, i32* %671)
  %673 = call i32 @SVN_ERR(i32 %672)
  %674 = load i32*, i32** %26, align 8
  %675 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA, align 4
  %676 = call i32 @svn_repos__dumpfile_header_push(i32* %674, i32 %675, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %677 = load i32*, i32** %24, align 8
  %678 = icmp ne i32* %677, null
  br i1 %678, label %679, label %716

679:                                              ; preds = %664
  %680 = load i32, i32* @svn_checksum_md5, align 4
  %681 = load i32*, i32** %24, align 8
  %682 = load i8*, i8** %22, align 8
  %683 = load i8*, i8** @FALSE, align 8
  %684 = load i32*, i32** %17, align 8
  %685 = call i32 @svn_fs_file_checksum(i32** %38, i32 %680, i32* %681, i8* %682, i8* %683, i32* %684)
  %686 = call i32 @SVN_ERR(i32 %685)
  %687 = load i32*, i32** %38, align 8
  %688 = load i32*, i32** %17, align 8
  %689 = call i8* @svn_checksum_to_cstring(i32* %687, i32* %688)
  store i8* %689, i8** %39, align 8
  %690 = load i8*, i8** %39, align 8
  %691 = icmp ne i8* %690, null
  br i1 %691, label %692, label %697

692:                                              ; preds = %679
  %693 = load i32*, i32** %26, align 8
  %694 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5, align 4
  %695 = load i8*, i8** %39, align 8
  %696 = call i32 @svn_repos__dumpfile_header_push(i32* %693, i32 %694, i8* %695)
  br label %697

697:                                              ; preds = %692, %679
  %698 = load i32, i32* @svn_checksum_sha1, align 4
  %699 = load i32*, i32** %24, align 8
  %700 = load i8*, i8** %22, align 8
  %701 = load i8*, i8** @FALSE, align 8
  %702 = load i32*, i32** %17, align 8
  %703 = call i32 @svn_fs_file_checksum(i32** %38, i32 %698, i32* %699, i8* %700, i8* %701, i32* %702)
  %704 = call i32 @SVN_ERR(i32 %703)
  %705 = load i32*, i32** %38, align 8
  %706 = load i32*, i32** %17, align 8
  %707 = call i8* @svn_checksum_to_cstring(i32* %705, i32* %706)
  store i8* %707, i8** %39, align 8
  %708 = load i8*, i8** %39, align 8
  %709 = icmp ne i8* %708, null
  br i1 %709, label %710, label %715

710:                                              ; preds = %697
  %711 = load i32*, i32** %26, align 8
  %712 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_SHA1, align 4
  %713 = load i8*, i8** %39, align 8
  %714 = call i32 @svn_repos__dumpfile_header_push(i32* %711, i32 %712, i8* %713)
  br label %715

715:                                              ; preds = %710, %697
  br label %716

716:                                              ; preds = %715, %664
  br label %725

717:                                              ; preds = %659
  %718 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %719 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %718, i32 0, i32 3
  %720 = load i32*, i32** %719, align 8
  %721 = load i8*, i8** %11, align 8
  %722 = load i32*, i32** %17, align 8
  %723 = call i32 @svn_fs_file_length(i32* %27, i32* %720, i8* %721, i32* %722)
  %724 = call i32 @SVN_ERR(i32 %723)
  br label %725

725:                                              ; preds = %717, %716
  %726 = load i32, i32* @svn_checksum_md5, align 4
  %727 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %728 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %727, i32 0, i32 3
  %729 = load i32*, i32** %728, align 8
  %730 = load i8*, i8** %11, align 8
  %731 = load i8*, i8** @FALSE, align 8
  %732 = load i32*, i32** %17, align 8
  %733 = call i32 @svn_fs_file_checksum(i32** %38, i32 %726, i32* %729, i8* %730, i8* %731, i32* %732)
  %734 = call i32 @SVN_ERR(i32 %733)
  %735 = load i32*, i32** %38, align 8
  %736 = load i32*, i32** %17, align 8
  %737 = call i8* @svn_checksum_to_cstring(i32* %735, i32* %736)
  store i8* %737, i8** %39, align 8
  %738 = load i8*, i8** %39, align 8
  %739 = icmp ne i8* %738, null
  br i1 %739, label %740, label %745

740:                                              ; preds = %725
  %741 = load i32*, i32** %26, align 8
  %742 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5, align 4
  %743 = load i8*, i8** %39, align 8
  %744 = call i32 @svn_repos__dumpfile_header_push(i32* %741, i32 %742, i8* %743)
  br label %745

745:                                              ; preds = %740, %725
  %746 = load i32, i32* @svn_checksum_sha1, align 4
  %747 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %748 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %747, i32 0, i32 3
  %749 = load i32*, i32** %748, align 8
  %750 = load i8*, i8** %11, align 8
  %751 = load i8*, i8** @FALSE, align 8
  %752 = load i32*, i32** %17, align 8
  %753 = call i32 @svn_fs_file_checksum(i32** %38, i32 %746, i32* %749, i8* %750, i8* %751, i32* %752)
  %754 = call i32 @SVN_ERR(i32 %753)
  %755 = load i32*, i32** %38, align 8
  %756 = load i32*, i32** %17, align 8
  %757 = call i8* @svn_checksum_to_cstring(i32* %755, i32* %756)
  store i8* %757, i8** %39, align 8
  %758 = load i8*, i8** %39, align 8
  %759 = icmp ne i8* %758, null
  br i1 %759, label %760, label %765

760:                                              ; preds = %745
  %761 = load i32*, i32** %26, align 8
  %762 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_CONTENT_SHA1, align 4
  %763 = load i8*, i8** %39, align 8
  %764 = call i32 @svn_repos__dumpfile_header_push(i32* %761, i32 %762, i8* %763)
  br label %765

765:                                              ; preds = %760, %745
  br label %766

766:                                              ; preds = %765, %655, %652
  %767 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %768 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %767, i32 0, i32 2
  %769 = load i32, i32* %768, align 8
  %770 = load i32*, i32** %26, align 8
  %771 = load i8*, i8** %21, align 8
  %772 = icmp ne i8* %771, null
  br i1 %772, label %773, label %775

773:                                              ; preds = %766
  %774 = load i32*, i32** %18, align 8
  br label %776

775:                                              ; preds = %766
  br label %776

776:                                              ; preds = %775, %773
  %777 = phi i32* [ %774, %773 ], [ null, %775 ]
  %778 = load i8*, i8** %20, align 8
  %779 = load i8*, i8** %20, align 8
  %780 = icmp ne i8* %779, null
  br i1 %780, label %781, label %783

781:                                              ; preds = %776
  %782 = load i32, i32* %27, align 4
  br label %784

783:                                              ; preds = %776
  br label %784

784:                                              ; preds = %783, %781
  %785 = phi i32 [ %782, %781 ], [ 0, %783 ]
  %786 = load i8*, i8** @TRUE, align 8
  %787 = load i32*, i32** %17, align 8
  %788 = call i32 @svn_repos__dump_node_record(i32 %769, i32* %770, i32* %777, i8* %778, i32 %785, i8* %786, i32* %787)
  %789 = call i32 @SVN_ERR(i32 %788)
  %790 = load i8*, i8** %20, align 8
  %791 = icmp ne i8* %790, null
  br i1 %791, label %792, label %822

792:                                              ; preds = %784
  %793 = load i64, i64* %12, align 8
  %794 = load i64, i64* @svn_node_file, align 8
  %795 = icmp eq i64 %793, %794
  br i1 %795, label %796, label %822

796:                                              ; preds = %792
  %797 = load i32*, i32** %25, align 8
  %798 = icmp ne i32* %797, null
  br i1 %798, label %799, label %804

799:                                              ; preds = %796
  %800 = load i32*, i32** %25, align 8
  %801 = load i8*, i8** @FALSE, align 8
  %802 = load i32*, i32** %17, align 8
  %803 = call i32* @svn_stream_from_aprfile2(i32* %800, i8* %801, i32* %802)
  store i32* %803, i32** %40, align 8
  br label %812

804:                                              ; preds = %796
  %805 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %806 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %805, i32 0, i32 3
  %807 = load i32*, i32** %806, align 8
  %808 = load i8*, i8** %11, align 8
  %809 = load i32*, i32** %17, align 8
  %810 = call i32 @svn_fs_file_contents(i32** %40, i32* %807, i8* %808, i32* %809)
  %811 = call i32 @SVN_ERR(i32 %810)
  br label %812

812:                                              ; preds = %804, %799
  %813 = load i32*, i32** %40, align 8
  %814 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %815 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 8
  %817 = load i32*, i32** %17, align 8
  %818 = call i32 @svn_stream_disown(i32 %816, i32* %817)
  %819 = load i32*, i32** %17, align 8
  %820 = call i32 @svn_stream_copy3(i32* %813, i32 %818, i32* null, i32* null, i32* %819)
  %821 = call i32 @SVN_ERR(i32 %820)
  br label %822

822:                                              ; preds = %812, %792, %784
  store i32 2, i32* %19, align 4
  %823 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %824 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %823, i32 0, i32 2
  %825 = load i32, i32* %824, align 8
  %826 = call %struct.TYPE_13__* @svn_stream_write(i32 %825, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32* %19)
  store %struct.TYPE_13__* %826, %struct.TYPE_13__** %9, align 8
  br label %827

827:                                              ; preds = %822, %493, %93
  %828 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %828
}

declare dso_local i32* @svn_repos__dumpfile_headers_create(i32*) #1

declare dso_local %struct.TYPE_13__* @svn_fs__path_valid(i8*, i32*) #1

declare dso_local i32 @notify_warning(i32*, i64, i32, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_err_best_message(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_repos__dumpfile_header_push(i32*, i32, i8*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i64 @ARE_VALID_COPY_ARGS(i8*, i32) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @node_must_exist(%struct.edit_baton*, i8*, i32, i64, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i32 @svn_fs_props_changed(i8**, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_contents_changed(i8**, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @tracker_path_delete(i32, i8*) #1

declare dso_local i32 @tracker_path_replace(i32, i8*) #1

declare dso_local i32 @dump_node_delete(i32, i8*, i32*) #1

declare dso_local i32 @node_must_not_exist(%struct.edit_baton*, i8*, i32, i32*) #1

declare dso_local i32 @tracker_path_add(i32, i8*) #1

declare dso_local i32 @tracker_path_copy(i32, i8*, i8*, i32) #1

declare dso_local i32 @svn_repos__dumpfile_header_pushf(i32*, i32, i8*, i32) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32*, i32*) #1

declare dso_local i32 @svn_repos__dump_headers(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_stream_write(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @verify_mergeinfo_revisions(i32, i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @check_mergeinfo_normalization(i8*, i32*, i32*, i64, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(i32*, i32*) #1

declare dso_local i32 @svn_hash_write_incremental(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @store_delta(i32**, i32*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_file_length(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_repos__dump_node_record(i32, i32*, i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_file_contents(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stream_disown(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
