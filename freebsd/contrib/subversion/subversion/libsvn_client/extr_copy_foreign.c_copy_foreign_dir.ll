; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_copy_foreign_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_copy_foreign_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.edit_baton_t = type { i8*, i8*, i32, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)* }

@edit_open = common dso_local global i32 0, align 4
@edit_close = common dso_local global i32 0, align 4
@dir_add = common dso_local global i32 0, align 4
@dir_change_prop = common dso_local global i32 0, align 4
@dir_close = common dso_local global i32 0, align 4
@file_add = common dso_local global i32 0, align 4
@file_change_prop = common dso_local global i32 0, align 4
@file_textdelta = common dso_local global i32 0, align 4
@file_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_12__*, i32*, i8*, i32, i32, i8*, i32, i8*, i32*)* @copy_foreign_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_foreign_dir(i32* %0, %struct.TYPE_12__* %1, i32* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.edit_baton_t, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca %struct.TYPE_11__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = call %struct.TYPE_11__* @svn_delta_default_editor(i32* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %22, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %21, i32 0, i32 4
  store i32* %29, i32** %30, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %21, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %21, i32 0, i32 3
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* %16, align 4
  %36 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %21, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %21, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @edit_open, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @edit_close, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @dir_add, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @dir_change_prop, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @dir_close, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @file_add, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @file_change_prop, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @file_textdelta, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @file_close, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 @svn_delta_get_cancellation_editor(i32 %66, i8* %67, %struct.TYPE_11__* %68, %struct.edit_baton_t* %21, %struct.TYPE_11__** %23, i8** %24, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @svn_depth_infinity, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %80 = load i8*, i8** %24, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = call i32 @svn_ra_do_update3(i32* %72, %struct.TYPE_10__** %25, i8** %26, i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, %struct.TYPE_11__* %79, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32 (i8*, i8*, i32, i32, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)** %86, align 8
  %88 = load i8*, i8** %26, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @TRUE, align 4
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 %87(i8* %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, i32 %93, i32* null, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %98, align 8
  %100 = load i8*, i8** %26, align 8
  %101 = load i32*, i32** %20, align 8
  %102 = call i32 %99(i8* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %104
}

declare dso_local %struct.TYPE_11__* @svn_delta_default_editor(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i8*, %struct.TYPE_11__*, %struct.edit_baton_t*, %struct.TYPE_11__**, i8**, i32*) #1

declare dso_local i32 @svn_ra_do_update3(i32*, %struct.TYPE_10__**, i8**, i32, i8*, i32, i32, i32, %struct.TYPE_11__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
