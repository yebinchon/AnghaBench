; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_add_subdir_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_add_subdir_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, i8* }
%struct.TYPE_6__ = type { i64, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_fs_path_change_delete = common dso_local global i64 0, align 8
@svn_fs_path_change_replace = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8*, i32* (i8**, i32*, i8*, i8*, i32*)*, i8*, i32*, i32*, i32*)* @add_subdir_ev2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_subdir_ev2(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* (i8**, i32*, i8*, i8*, i32*)* %5, i8* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32* (i8**, i32*, i8*, i8*, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_5__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_6__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32* (i8**, i32*, i8*, i8*, i32*)* %5, i32* (i8**, i32*, i8*, i8*, i32*)** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %21, align 8
  store i32* null, i32** %24, align 8
  store i32* null, i32** %25, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = call i32* @svn_fs_node_proplist(i32** %24, i32* %39, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i32*, i32** %25, align 8
  %47 = load i32*, i32** %24, align 8
  %48 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %49 = call i32* @svn_editor_add_directory(i32* %44, i8* %45, i32* %46, i32* %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = call i32* @svn_fs_dir_entries(i32** %23, i32* %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32* %54)
  %56 = load i32*, i32** %20, align 8
  %57 = load i32*, i32** %23, align 8
  %58 = call i32* @apr_hash_first(i32* %56, i32* %57)
  store i32* %58, i32** %22, align 8
  br label %59

59:                                               ; preds = %233, %10
  %60 = load i32*, i32** %22, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %236

62:                                               ; preds = %59
  %63 = load i8*, i8** @TRUE, align 8
  store i8* %63, i8** %27, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = call %struct.TYPE_6__* @apr_hash_this_val(i32* %64)
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %28, align 8
  store i8* null, i8** %29, align 8
  %66 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %66, i32* %30, align 4
  %67 = load i32*, i32** %21, align 8
  %68 = call i32 @svn_pool_clear(i32* %67)
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = call i8* @svn_relpath_join(i8* %69, i32 %72, i32* %73)
  store i8* %74, i8** %31, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = load i8*, i8** %31, align 8
  %77 = call %struct.TYPE_5__* @svn_hash_gets(i32* %75, i8* %76)
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %26, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %79 = icmp ne %struct.TYPE_5__* %78, null
  br i1 %79, label %80, label %122

80:                                               ; preds = %62
  %81 = load i32*, i32** %18, align 8
  %82 = load i8*, i8** %31, align 8
  %83 = call i32 @svn_hash_sets(i32* %81, i8* %82, i32* null)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @svn_fs_path_change_delete, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %233

90:                                               ; preds = %80
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @svn_fs_path_change_replace, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %12, align 8
  %107 = load i8*, i8** %31, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = call i32* @svn_fs_copied_from(i32* %103, i8** %105, i32* %106, i8* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32* %109)
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %101, %96
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %29, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %30, align 4
  br label %121

121:                                              ; preds = %114, %90
  br label %122

122:                                              ; preds = %121, %62
  %123 = load i32* (i8**, i32*, i8*, i8*, i32*)*, i32* (i8**, i32*, i8*, i8*, i32*)** %16, align 8
  %124 = icmp ne i32* (i8**, i32*, i8*, i8*, i32*)* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32* (i8**, i32*, i8*, i8*, i32*)*, i32* (i8**, i32*, i8*, i8*, i32*)** %16, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = load i8*, i8** %31, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = call i32* %126(i8** %27, i32* %127, i8* %128, i8* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32* %131)
  br label %133

133:                                              ; preds = %125, %122
  %134 = load i8*, i8** %27, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  br label %233

137:                                              ; preds = %133
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @svn_node_dir, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %197

143:                                              ; preds = %137
  %144 = load i8*, i8** %29, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i32*, i32** %11, align 8
  %148 = call i32* @svn_fs_root_fs(i32* %147)
  store i32* %148, i32** %34, align 8
  %149 = load i32*, i32** %34, align 8
  %150 = load i32, i32* %30, align 4
  %151 = load i32*, i32** %19, align 8
  %152 = call i32* @svn_fs_revision_root(i32** %32, i32* %149, i32 %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32* %152)
  %154 = load i8*, i8** %29, align 8
  store i8* %154, i8** %33, align 8
  br label %163

155:                                              ; preds = %143
  %156 = load i32*, i32** %11, align 8
  store i32* %156, i32** %32, align 8
  %157 = load i8*, i8** %15, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %21, align 8
  %162 = call i8* @svn_fspath__join(i8* %157, i32 %160, i32* %161)
  store i8* %162, i8** %33, align 8
  br label %163

163:                                              ; preds = %155, %146
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @svn_fs_path_change_replace, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load i8*, i8** %29, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32*, i32** %13, align 8
  %177 = load i8*, i8** %31, align 8
  %178 = load i32*, i32** %25, align 8
  %179 = load i32*, i32** %24, align 8
  %180 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %181 = call i32* @svn_editor_add_directory(i32* %176, i8* %177, i32* %178, i32* %179, i32 %180)
  %182 = call i32 @SVN_ERR(i32* %181)
  br label %196

183:                                              ; preds = %172, %166, %163
  %184 = load i32*, i32** %32, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i8*, i8** %31, align 8
  %188 = load i8*, i8** %33, align 8
  %189 = load i32* (i8**, i32*, i8*, i8*, i32*)*, i32* (i8**, i32*, i8*, i8*, i32*)** %16, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = load i32*, i32** %18, align 8
  %192 = load i32*, i32** %19, align 8
  %193 = load i32*, i32** %21, align 8
  %194 = call i32* @add_subdir_ev2(i32* %184, i32* %185, i32* %186, i8* %187, i8* %188, i32* (i8**, i32*, i8*, i8*, i32*)* %189, i8* %190, i32* %191, i32* %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32* %194)
  br label %196

196:                                              ; preds = %183, %175
  br label %232

197:                                              ; preds = %137
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @svn_node_file, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %229

203:                                              ; preds = %197
  %204 = load i32*, i32** %12, align 8
  %205 = load i8*, i8** %31, align 8
  %206 = load i32*, i32** %21, align 8
  %207 = call i32* @svn_fs_node_proplist(i32** %24, i32* %204, i8* %205, i32* %206)
  %208 = call i32 @SVN_ERR(i32* %207)
  %209 = load i32*, i32** %12, align 8
  %210 = load i8*, i8** %31, align 8
  %211 = load i32*, i32** %21, align 8
  %212 = call i32* @svn_fs_file_contents(i32** %36, i32* %209, i8* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32* %212)
  %214 = load i32, i32* @svn_checksum_sha1, align 4
  %215 = load i32*, i32** %12, align 8
  %216 = load i8*, i8** %31, align 8
  %217 = load i8*, i8** @TRUE, align 8
  %218 = load i32*, i32** %21, align 8
  %219 = call i32* @svn_fs_file_checksum(i32** %35, i32 %214, i32* %215, i8* %216, i8* %217, i32* %218)
  %220 = call i32 @SVN_ERR(i32* %219)
  %221 = load i32*, i32** %13, align 8
  %222 = load i8*, i8** %31, align 8
  %223 = load i32*, i32** %35, align 8
  %224 = load i32*, i32** %36, align 8
  %225 = load i32*, i32** %24, align 8
  %226 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %227 = call i32* @svn_editor_add_file(i32* %221, i8* %222, i32* %223, i32* %224, i32* %225, i32 %226)
  %228 = call i32 @SVN_ERR(i32* %227)
  br label %231

229:                                              ; preds = %197
  %230 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %231

231:                                              ; preds = %229, %203
  br label %232

232:                                              ; preds = %231, %196
  br label %233

233:                                              ; preds = %232, %136, %89
  %234 = load i32*, i32** %22, align 8
  %235 = call i32* @apr_hash_next(i32* %234)
  store i32* %235, i32** %22, align 8
  br label %59

236:                                              ; preds = %59
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 @svn_pool_destroy(i32* %237)
  %239 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %239
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local i32* @svn_editor_add_directory(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32* @svn_fs_dir_entries(i32**, i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32* @svn_fs_root_fs(i32*) #1

declare dso_local i32* @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i32, i32*) #1

declare dso_local i32* @svn_fs_file_contents(i32**, i32*, i8*, i32*) #1

declare dso_local i32* @svn_fs_file_checksum(i32**, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32* @svn_editor_add_file(i32*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
