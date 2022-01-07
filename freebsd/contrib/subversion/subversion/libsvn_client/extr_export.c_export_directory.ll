; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)* }

@ENABLE_EV2_IMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.edit_baton*, %struct.TYPE_12__*, i32*, i32, i32, i32, i32, i8*, %struct.TYPE_11__*, i32*)* @export_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @export_directory(i8* %0, i8* %1, %struct.edit_baton* %2, %struct.TYPE_12__* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9, %struct.TYPE_11__* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_11__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_10__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %15, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %23, align 8
  store i32* %11, i32** %24, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @svn_path_is_url(i8* %31)
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32, i32* @ENABLE_EV2_IMPL, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %12
  %37 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = load i32*, i32** %24, align 8
  %41 = call i32 @get_editor_ev1(i32** %26, i8** %25, %struct.edit_baton* %37, %struct.TYPE_11__* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %50

43:                                               ; preds = %12
  %44 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %46 = load i32*, i32** %24, align 8
  %47 = load i32*, i32** %24, align 8
  %48 = call i32 @get_editor_ev2(i32** %26, i8** %25, %struct.edit_baton* %44, %struct.TYPE_11__* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32*, i32** %17, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %26, align 8
  %59 = load i8*, i8** %25, align 8
  %60 = load i32*, i32** %24, align 8
  %61 = load i32*, i32** %24, align 8
  %62 = call i32 @svn_ra_do_update3(i32* %51, %struct.TYPE_10__** %27, i8** %28, i32 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32* %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32 (i8*, i8*, i32, i32, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)** %65, align 8
  %67 = load i8*, i8** %28, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @svn_depth_infinity, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = load i32*, i32** %24, align 8
  %74 = call i32 %66(i8* %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32* null, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %77, align 8
  %79 = load i8*, i8** %28, align 8
  %80 = load i32*, i32** %24, align 8
  %81 = call i32 %78(i8* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i8*, i8** %14, align 8
  %84 = load i32*, i32** %24, align 8
  %85 = call i32 @svn_io_check_path(i8* %83, i64* %29, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i64, i64* %29, align 8
  %88 = load i64, i64* @svn_node_none, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %50
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %24, align 8
  %100 = call i32 @open_root_internal(i8* %91, i32 %92, i32 %95, i32 %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %90, %50
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* @svn_depth_infinity, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load i8*, i8** %14, align 8
  %111 = load i32*, i32** %24, align 8
  %112 = call i32 @svn_dirent_get_absolute(i8** %30, i8* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %115 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %30, align 8
  %119 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %120 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i8*, i8** %22, align 8
  %124 = load i32, i32* %20, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %126 = load i32*, i32** %24, align 8
  %127 = call i32 @svn_client__export_externals(i32 %116, i8* %117, i8* %118, i32 %121, i32 %122, i8* %123, i32 %124, %struct.TYPE_11__* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %109, %105, %102
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %130
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_editor_ev1(i32**, i8**, %struct.edit_baton*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @get_editor_ev2(i32**, i8**, %struct.edit_baton*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @svn_ra_do_update3(i32*, %struct.TYPE_10__**, i8**, i32, i8*, i32, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @open_root_internal(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_client__export_externals(i32, i8*, i8*, i32, i32, i8*, i32, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
