; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_make_file_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_make_file_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { %struct.edit_baton*, i8* }
%struct.edit_baton = type { i32, i32 }
%struct.dir_baton = type { i64, %struct.edit_baton*, i64 }

@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.file_baton**, %struct.dir_baton*, i8*, i32, i32*)* @make_file_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_file_baton(%struct.file_baton** %0, %struct.dir_baton* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.file_baton**, align 8
  %8 = alloca %struct.dir_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.file_baton*, align 8
  %13 = alloca %struct.edit_baton*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.file_baton** %0, %struct.file_baton*** %7, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.file_baton* @apr_pcalloc(i32* %17, i32 16)
  store %struct.file_baton* %18, %struct.file_baton** %12, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 1
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @SVN_ERR_ASSERT(i8* %22)
  %24 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %25 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %31 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %33 = load %struct.file_baton**, %struct.file_baton*** %7, align 8
  store %struct.file_baton* %32, %struct.file_baton** %33, align 8
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %6, align 8
  br label %111

35:                                               ; preds = %5
  %36 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %37 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i8* @svn_dirent_join(i32 %38, i8* %39, i32* %40)
  store i8* %41, i8** %16, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %46 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %16, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @ambient_read_info(i64* %14, i64* %15, i32* null, i32 %47, i8* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %55

52:                                               ; preds = %35
  %53 = load i64, i64* @svn_wc__db_status_not_present, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* @svn_node_unknown, align 8
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %57 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @svn_depth_empty, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @svn_node_unknown, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73, %69, %65, %61
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %80 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %82 = load %struct.file_baton**, %struct.file_baton*** %7, align 8
  store %struct.file_baton* %81, %struct.file_baton** %82, align 8
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %83, i32** %6, align 8
  br label %111

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %55
  %86 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %87 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @svn_depth_unknown, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i8*, i8** @TRUE, align 8
  %97 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %98 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %100 = load %struct.file_baton**, %struct.file_baton*** %7, align 8
  store %struct.file_baton* %99, %struct.file_baton** %100, align 8
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %6, align 8
  br label %111

102:                                              ; preds = %91, %85
  %103 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %104 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %103, i32 0, i32 1
  %105 = load %struct.edit_baton*, %struct.edit_baton** %104, align 8
  %106 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %107 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %106, i32 0, i32 0
  store %struct.edit_baton* %105, %struct.edit_baton** %107, align 8
  %108 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %109 = load %struct.file_baton**, %struct.file_baton*** %7, align 8
  store %struct.file_baton* %108, %struct.file_baton** %109, align 8
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %6, align 8
  br label %111

111:                                              ; preds = %102, %95, %77, %28
  %112 = load i32*, i32** %6, align 8
  ret i32* %112
}

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ambient_read_info(i64*, i64*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
