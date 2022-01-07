; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_get_editor_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_get_editor_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.svn_delta__extra_baton = type { i32, %struct.edit_baton* }

@target_revision_func = common dso_local global i32 0, align 4
@add_directory_ev2 = common dso_local global i32 0, align 4
@add_file_ev2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fetch_props_func = common dso_local global i32 0, align 4
@fetch_base_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8**, %struct.edit_baton*, %struct.TYPE_3__*, i32*, i32*)* @get_editor_ev2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_editor_ev2(i32** %0, i8** %1, %struct.edit_baton* %2, %struct.TYPE_3__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.svn_delta__extra_baton*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call %struct.svn_delta__extra_baton* @apr_pcalloc(i32* %16, i32 16)
  store %struct.svn_delta__extra_baton* %17, %struct.svn_delta__extra_baton** %14, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32* @apr_palloc(i32* %18, i32 4)
  store i32* %19, i32** %15, align 8
  %20 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %21 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %14, align 8
  %22 = getelementptr inbounds %struct.svn_delta__extra_baton, %struct.svn_delta__extra_baton* %21, i32 0, i32 1
  store %struct.edit_baton* %20, %struct.edit_baton** %22, align 8
  %23 = load i32, i32* @target_revision_func, align 4
  %24 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %14, align 8
  %25 = getelementptr inbounds %struct.svn_delta__extra_baton, %struct.svn_delta__extra_baton* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_editor_create(i32** %13, %struct.edit_baton* %26, i32 %29, i32 %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @add_directory_ev2, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @svn_editor_setcb_add_directory(i32* %37, i32 %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @add_file_ev2, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_editor_setcb_add_file(i32* %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32*, i32** %15, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32**, i32*** %7, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* @fetch_props_func, align 4
  %54 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %55 = load i32, i32* @fetch_base_func, align 4
  %56 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %57 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %14, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_delta__delta_from_editor(i32** %49, i8** %50, i32* %51, i32* null, i32* null, i32* %52, i32* null, i32* null, i32 %53, %struct.edit_baton* %54, i32 %55, %struct.edit_baton* %56, %struct.svn_delta__extra_baton* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %62 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %65 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %68 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %71 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @open_root_internal(i32 %63, i32 %66, i32 %69, i32 %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local %struct.svn_delta__extra_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_editor_create(i32**, %struct.edit_baton*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_editor_setcb_add_directory(i32*, i32, i32*) #1

declare dso_local i32 @svn_editor_setcb_add_file(i32*, i32, i32*) #1

declare dso_local i32 @svn_delta__delta_from_editor(i32**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.edit_baton*, i32, %struct.edit_baton*, %struct.svn_delta__extra_baton*, i32*) #1

declare dso_local i32 @open_root_internal(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
