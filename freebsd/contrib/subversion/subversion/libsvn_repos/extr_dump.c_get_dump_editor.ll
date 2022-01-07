; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_get_dump_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_get_dump_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32* (i8*, i32*)*, i32, i32, i32, i32 }
%struct.edit_baton = type { i8**, i8**, i32*, i8*, i8*, i8*, i8*, i32*, i32, i32, i8*, i8*, i32, i32* }
%struct.TYPE_9__ = type { %struct.edit_baton*, i32, i32, i32 }

@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@fetch_kind_func = common dso_local global i32 0, align 4
@fetch_props_func = common dso_local global i32 0, align 4
@fetch_base_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__**, i8**, i32*, i8*, i8*, i32*, i8**, i8**, i32* (i8*, i32*)*, i32, i8*, i8*, i8*, i8*, i8*, i32*)* @get_dump_editor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dump_editor(%struct.TYPE_10__** %0, i8** %1, i32* %2, i8* %3, i8* %4, i32* %5, i8** %6, i8** %7, i32* (i8*, i32*)* %8, i32 %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i32* %15) #0 {
  %17 = alloca %struct.TYPE_10__**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32* (i8*, i32*)*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.edit_baton*, align 8
  %34 = alloca %struct.TYPE_10__*, align 8
  %35 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %17, align 8
  store i8** %1, i8*** %18, align 8
  store i32* %2, i32** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i32* %5, i32** %22, align 8
  store i8** %6, i8*** %23, align 8
  store i8** %7, i8*** %24, align 8
  store i32* (i8*, i32*)* %8, i32* (i8*, i32*)** %25, align 8
  store i32 %9, i32* %26, align 4
  store i8* %10, i8** %27, align 8
  store i8* %11, i8** %28, align 8
  store i8* %12, i8** %29, align 8
  store i8* %13, i8** %30, align 8
  store i8* %14, i8** %31, align 8
  store i32* %15, i32** %32, align 8
  %36 = load i32*, i32** %32, align 8
  %37 = call %struct.edit_baton* @apr_pcalloc(i32* %36, i32 104)
  store %struct.edit_baton* %37, %struct.edit_baton** %33, align 8
  %38 = load i32*, i32** %32, align 8
  %39 = call %struct.TYPE_10__* @svn_delta_default_editor(i32* %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %34, align 8
  %40 = load i32*, i32** %32, align 8
  %41 = call %struct.TYPE_9__* @svn_delta_shim_callbacks_default(i32* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %35, align 8
  %42 = load i32*, i32** %22, align 8
  %43 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %44 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %43, i32 0, i32 13
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %26, align 4
  %46 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %27, align 8
  %49 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %50 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %49, i32 0, i32 11
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %28, align 8
  %52 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %53 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %32, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = call i32 @apr_pstrdup(i32* %54, i8* %55)
  %57 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %58 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %60 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %59, i32 0, i32 8
  %61 = load i32*, i32** %19, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i32*, i32** %32, align 8
  %64 = call i32 @svn_fs_revision_root(i32* %60, i32* %61, i8* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %19, align 8
  %67 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %68 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %67, i32 0, i32 7
  store i32* %66, i32** %68, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %71 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %29, align 8
  %73 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %74 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %30, align 8
  %76 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %77 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %31, align 8
  %79 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %80 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i8**, i8*** %23, align 8
  %82 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %83 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %82, i32 0, i32 0
  store i8** %81, i8*** %83, align 8
  %84 = load i8**, i8*** %24, align 8
  %85 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %86 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %85, i32 0, i32 1
  store i8** %84, i8*** %86, align 8
  %87 = load i8*, i8** %30, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %16
  %90 = load i8*, i8** %20, align 8
  %91 = load i32*, i32** %32, align 8
  %92 = call i32* @tracker_create(i8* %90, i32* %91)
  br label %94

93:                                               ; preds = %16
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32* [ %92, %89 ], [ null, %93 ]
  %96 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %97 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load i32, i32* @open_root, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @delete_entry, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @add_directory, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @open_directory, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %25, align 8
  %111 = icmp ne i32* (i8*, i32*)* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %94
  %113 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %25, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  store i32* (i8*, i32*)* %113, i32* (i8*, i32*)** %115, align 8
  br label %119

116:                                              ; preds = %94
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  store i32* (i8*, i32*)* @close_directory, i32* (i8*, i32*)** %118, align 8
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32, i32* @change_dir_prop, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @add_file, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @open_file, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %130 = bitcast %struct.edit_baton* %129 to i8*
  %131 = load i8**, i8*** %18, align 8
  store i8* %130, i8** %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %133, align 8
  %134 = load i32, i32* @fetch_kind_func, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @fetch_props_func, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @fetch_base_func, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store %struct.edit_baton* %143, %struct.edit_baton** %145, align 8
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %147 = load i8**, i8*** %18, align 8
  %148 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i8**, i8*** %18, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %153 = load i32*, i32** %32, align 8
  %154 = load i32*, i32** %32, align 8
  %155 = call i32 @svn_editor__insert_shims(%struct.TYPE_10__** %146, i8** %147, %struct.TYPE_10__* %149, i8* %151, i32* null, i32* null, %struct.TYPE_9__* %152, i32* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %157
}

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_delta_shim_callbacks_default(i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32*, i32*, i8*, i32*) #1

declare dso_local i32* @tracker_create(i8*, i32*) #1

declare dso_local i32* @close_directory(i8*, i32*) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_10__**, i8**, %struct.TYPE_10__*, i8*, i32*, i32*, %struct.TYPE_9__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
