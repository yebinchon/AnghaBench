; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_svn_repos_get_commit_editor5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_svn_repos_get_commit_editor5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edit_baton = type { i8*, i32, i32, i32*, i32, i32, i32*, i8*, i32 (i32, i32*, i32*, i32*, i8*, i32*)*, i8*, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.edit_baton*, i32, i32, i32 }

@svn_authz_write = common dso_local global i32 0, align 4
@SVN_ERR_AUTHZ_UNWRITABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Not authorized to open a commit editor.\00", align 1
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@abort_edit = common dso_local global i32 0, align 4
@fetch_props_func = common dso_local global i32 0, align 4
@fetch_kind_func = common dso_local global i32 0, align 4
@fetch_base_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_get_commit_editor5(%struct.TYPE_10__** %0, i8** %1, i32* %2, i32* %3, i8* %4, i8* %5, i32* %6, i32 %7, i8* %8, i32 (i32, i32*, i32*, i32*, i8*, i32*)* %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32 (i32, i32*, i32*, i32*, i8*, i32*)*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.edit_baton*, align 8
  %29 = alloca %struct.TYPE_9__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %14, align 8
  store i8** %1, i8*** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 (i32, i32*, i32*, i32*, i8*, i32*)* %9, i32 (i32, i32*, i32*, i32*, i8*, i32*)** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = load i32*, i32** %25, align 8
  %33 = call i32* @svn_pool_create(i32* %32)
  store i32* %33, i32** %27, align 8
  %34 = load i32*, i32** %25, align 8
  %35 = call %struct.TYPE_9__* @svn_delta_shim_callbacks_default(i32* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %29, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = load i32*, i32** %25, align 8
  %38 = call i8* @svn_path_uri_encode(i8* %36, i32* %37)
  store i8* %38, i8** %30, align 8
  %39 = load i32 (i32, i32*, i32*, i32*, i8*, i32*)*, i32 (i32, i32*, i32*, i32*, i8*, i32*)** %23, align 8
  %40 = icmp ne i32 (i32, i32*, i32*, i32*, i8*, i32*)* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %12
  %42 = load i32 (i32, i32*, i32*, i32*, i8*, i32*)*, i32 (i32, i32*, i32*, i32*, i8*, i32*)** %23, align 8
  %43 = load i32, i32* @svn_authz_write, align 4
  %44 = load i8*, i8** %24, align 8
  %45 = load i32*, i32** %25, align 8
  %46 = call i32 %42(i32 %43, i32* %31, i32* null, i32* null, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32, i32* %31, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @SVN_ERR_AUTHZ_UNWRITABLE, align 4
  %52 = call i32* @svn_error_create(i32 %51, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32* %52, i32** %13, align 8
  br label %178

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %12
  %55 = load i32*, i32** %25, align 8
  %56 = call %struct.TYPE_10__* @svn_delta_default_editor(i32* %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %26, align 8
  %57 = load i32*, i32** %27, align 8
  %58 = call %struct.edit_baton* @apr_pcalloc(i32* %57, i32 80)
  store %struct.edit_baton* %58, %struct.edit_baton** %28, align 8
  %59 = load i32, i32* @open_root, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @delete_entry, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @add_directory, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @open_directory, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @change_dir_prop, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @add_file, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @open_file, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @close_file, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @apply_textdelta, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @change_file_prop, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @close_edit, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @abort_edit, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %27, align 8
  %96 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %97 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %96, i32 0, i32 12
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %20, align 8
  %99 = load i32*, i32** %27, align 8
  %100 = call i32 @svn_prop_hash_dup(i32* %98, i32* %99)
  %101 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %102 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %105 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load i8*, i8** %22, align 8
  %107 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %108 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load i32 (i32, i32*, i32*, i32*, i8*, i32*)*, i32 (i32, i32*, i32*, i32*, i8*, i32*)** %23, align 8
  %110 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %111 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %110, i32 0, i32 8
  store i32 (i32, i32*, i32*, i32*, i8*, i32*)* %109, i32 (i32, i32*, i32*, i32*, i8*, i32*)** %111, align 8
  %112 = load i8*, i8** %24, align 8
  %113 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %114 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = load i32*, i32** %27, align 8
  %117 = call i32 @svn_fspath__canonicalize(i8* %115, i32* %116)
  %118 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %119 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %122 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %121, i32 0, i32 6
  store i32* %120, i32** %122, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %125 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = load i32*, i32** %27, align 8
  %128 = call i32 @svn_repos_path(i32* %126, i32* %127)
  %129 = load i32*, i32** %27, align 8
  %130 = call i32 @svn_dirent_basename(i32 %128, i32* %129)
  %131 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %132 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @svn_repos_fs(i32* %133)
  %135 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %136 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %139 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %138, i32 0, i32 3
  store i32* %137, i32** %139, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = icmp eq i32* %140, null
  %142 = zext i1 %141 to i32
  %143 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %144 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %146 = bitcast %struct.edit_baton* %145 to i8*
  %147 = load i8**, i8*** %15, align 8
  store i8* %146, i8** %147, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %149 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %149, align 8
  %150 = load i32, i32* @fetch_props_func, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @fetch_kind_func, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @fetch_base_func, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store %struct.edit_baton* %159, %struct.edit_baton** %161, align 8
  %162 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %163 = load i8**, i8*** %15, align 8
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i8**, i8*** %15, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %30, align 8
  %169 = load %struct.edit_baton*, %struct.edit_baton** %28, align 8
  %170 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %173 = load i32*, i32** %25, align 8
  %174 = load i32*, i32** %25, align 8
  %175 = call i32 @svn_editor__insert_shims(%struct.TYPE_10__** %162, i8** %163, %struct.TYPE_10__* %165, i8* %167, i8* %168, i32 %171, %struct.TYPE_9__* %172, i32* %173, i32* %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %177, i32** %13, align 8
  br label %178

178:                                              ; preds = %54, %50
  %179 = load i32*, i32** %13, align 8
  ret i32* %179
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_delta_shim_callbacks_default(i32*) #1

declare dso_local i8* @svn_path_uri_encode(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_prop_hash_dup(i32*, i32*) #1

declare dso_local i32 @svn_fspath__canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i32, i32*) #1

declare dso_local i32 @svn_repos_path(i32*, i32*) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_10__**, i8**, %struct.TYPE_10__*, i8*, i8*, i32, %struct.TYPE_9__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
