; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i32 }

@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@SVN_DIRENT_SIZE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@SVN_DIRENT_HAS_PROPS = common dso_local global i32 0, align 4
@SVN_DIRENT_TIME = common dso_local global i32 0, align 4
@SVN_DIRENT_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_DIRENT_CREATED_REV = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32**, i32*, i32**, i8*, i32, i32, i32*)* @svn_ra_local__get_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__get_dir(%struct.TYPE_10__* %0, i32** %1, i32* %2, i32** %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_12__*, align 8
  %30 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %21, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i8* @svn_fspath__join(i32 %38, i8* %39, i32* %40)
  store i8* %41, i8** %22, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @SVN_IS_VALID_REVNUM(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @svn_fs_youngest_rev(i32* %18, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @svn_fs_revision_root(i32** %17, i32 %54, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* %18, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %45
  br label %73

65:                                               ; preds = %8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @svn_fs_revision_root(i32** %17, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %65, %64
  %74 = load i32**, i32*** %10, align 8
  %75 = icmp ne i32** %74, null
  br i1 %75, label %76, label %214

76:                                               ; preds = %73
  %77 = load i32*, i32** %16, align 8
  %78 = call i32* @svn_pool_create(i32* %77)
  store i32* %78, i32** %23, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = load i8*, i8** %22, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @svn_fs_dir_entries(i32** %19, i32* %79, i8* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32* @apr_hash_make(i32* %84)
  %86 = load i32**, i32*** %10, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call i32* @apr_hash_first(i32* %87, i32* %88)
  store i32* %89, i32** %20, align 8
  br label %90

90:                                               ; preds = %208, %76
  %91 = load i32*, i32** %20, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %211

93:                                               ; preds = %90
  %94 = load i32*, i32** %16, align 8
  %95 = call %struct.TYPE_13__* @svn_dirent_create(i32* %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %30, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = call i32 @svn_pool_clear(i32* %96)
  %98 = load i32*, i32** %20, align 8
  %99 = call i32 @apr_hash_this(i32* %98, i8** %24, i32* null, i8** %25)
  %100 = load i8*, i8** %24, align 8
  store i8* %100, i8** %27, align 8
  %101 = load i8*, i8** %25, align 8
  %102 = bitcast i8* %101 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %29, align 8
  %103 = load i8*, i8** %22, align 8
  %104 = load i8*, i8** %27, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = call i8* @svn_dirent_join(i8* %103, i8* %104, i32* %105)
  store i8* %106, i8** %28, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %93
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %93
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @SVN_DIRENT_SIZE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @svn_node_dir, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  br label %140

132:                                              ; preds = %122
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 5
  %135 = load i32*, i32** %17, align 8
  %136 = load i8*, i8** %28, align 8
  %137 = load i32*, i32** %23, align 8
  %138 = call i32 @svn_fs_file_length(i32* %134, i32* %135, i8* %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  br label %140

140:                                              ; preds = %132, %128
  br label %141

141:                                              ; preds = %140, %117
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @SVN_DIRENT_HAS_PROPS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 4
  %149 = load i32*, i32** %17, align 8
  %150 = load i8*, i8** %28, align 8
  %151 = load i32*, i32** %23, align 8
  %152 = call i32 @svn_fs_node_has_props(i32* %148, i32* %149, i8* %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @SVN_DIRENT_TIME, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @SVN_DIRENT_LAST_AUTHOR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @SVN_DIRENT_CREATED_REV, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %164, %159, %154
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = load i32*, i32** %17, align 8
  %175 = load i8*, i8** %28, align 8
  %176 = load i32*, i32** %23, align 8
  %177 = call i32 @svn_repos_get_committed_info(i32* %171, i8** %26, i64* %173, i32* %174, i8* %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  %179 = load i8*, i8** %26, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %169
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load i8*, i8** %26, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = call i32 @svn_time_from_cstring(i32* %183, i8* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  br label %188

188:                                              ; preds = %181, %169
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load i32*, i32** %16, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @apr_pstrdup(i32* %194, i64 %197)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %193, %188
  br label %202

202:                                              ; preds = %201, %164
  %203 = load i32**, i32*** %10, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = load i8*, i8** %27, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %207 = call i32 @svn_hash_sets(i32* %204, i8* %205, %struct.TYPE_13__* %206)
  br label %208

208:                                              ; preds = %202
  %209 = load i32*, i32** %20, align 8
  %210 = call i32* @apr_hash_next(i32* %209)
  store i32* %210, i32** %20, align 8
  br label %90

211:                                              ; preds = %90
  %212 = load i32*, i32** %23, align 8
  %213 = call i32 @svn_pool_destroy(i32* %212)
  br label %214

214:                                              ; preds = %211, %73
  %215 = load i32**, i32*** %12, align 8
  %216 = icmp ne i32** %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load i32**, i32*** %12, align 8
  %219 = load i32*, i32** %17, align 8
  %220 = load i8*, i8** %22, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = load i32*, i32** %16, align 8
  %226 = call i32 @get_node_props(i32** %218, i32* %219, i8* %220, i32 %223, i32* %224, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  br label %228

228:                                              ; preds = %217, %214
  %229 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %229
}

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_dir_entries(i32**, i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_dirent_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_file_length(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_has_props(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_repos_get_committed_info(i32*, i8**, i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i8*, i32*) #1

declare dso_local i64 @apr_pstrdup(i32*, i64) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_13__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @get_node_props(i32**, i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
