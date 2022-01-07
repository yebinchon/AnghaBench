; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32* (i32, i32, i32*, i32*)* }
%struct.dir_baton = type { i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root(i8* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.edit_baton*
  store %struct.edit_baton* %16, %struct.edit_baton** %10, align 8
  %17 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @make_dir_baton(%struct.dir_baton** %11, i32* null, %struct.edit_baton* %17, i32* null, i32 %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %23 = bitcast %struct.dir_baton* %22 to i8*
  %24 = load i8**, i8*** %9, align 8
  store i8* %23, i8** %24, align 8
  %25 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %5, align 8
  br label %81

31:                                               ; preds = %4
  %32 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %33 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %31
  %38 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %42 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @ambient_read_info(i64* %13, i64* %12, i32* %14, i32 %40, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @svn_node_unknown, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %37
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %65 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58, %54, %50, %37
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %69 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32* (i32, i32, i32*, i32*)*, i32* (i32, i32, i32*, i32*)** %71, align 8
  %73 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %74 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %79 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %78, i32 0, i32 0
  %80 = call i32* %72(i32 %75, i32 %76, i32* %77, i32* %79)
  store i32* %80, i32** %5, align 8
  br label %81

81:                                               ; preds = %67, %29
  %82 = load i32*, i32** %5, align 8
  ret i32* %82
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_dir_baton(%struct.dir_baton**, i32*, %struct.edit_baton*, i32*, i32, i32*) #1

declare dso_local i32 @ambient_read_info(i64*, i64*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
