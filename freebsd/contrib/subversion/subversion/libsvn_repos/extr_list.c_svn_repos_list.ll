; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_list.c_svn_repos_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_list.c_svn_repos_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@svn_depth_empty = common dso_local global i64 0, align 8
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid depth '%d' in svn_repos_list\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Path '%s' not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_list(i32* %0, i8* %1, %struct.TYPE_5__* %2, i64 %3, i32 %4, i32 (i32*, i32*, i8*, i8*, i32*)* %5, i8* %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32 (i32*, i32*, i8*, i8*, i32*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %16, align 8
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 (i32*, i32*, i8*, i8*, i32*)* %5, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* @svn_depth_empty, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %12
  %33 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %34 = load i64, i64* %17, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32* @svn_error_createf(i32 %33, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32* %36, i32** %13, align 8
  br label %124

37:                                               ; preds = %12
  %38 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %39 = icmp ne i32 (i32*, i32*, i8*, i8*, i32*)* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i8*, i8** %20, align 8
  %45 = load i32*, i32** %25, align 8
  %46 = call i32 %41(i32* %28, i32* %42, i8* %43, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32, i32* %28, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %13, align 8
  br label %124

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32*, i32** %14, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i32*, i32** %25, align 8
  %57 = call i32 @svn_fs_check_path(i64* %27, i32* %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %27, align 8
  %60 = load i64, i64* @svn_node_file, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i64, i64* @svn_depth_empty, align 8
  store i64 %63, i64* %17, align 8
  br label %74

64:                                               ; preds = %53
  %65 = load i64, i64* %27, align 8
  %66 = load i64, i64* @svn_node_dir, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %70 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %15, align 8
  %72 = call i32* @svn_error_createf(i32 %69, i32* null, i8* %70, i8* %71)
  store i32* %72, i32** %13, align 8
  br label %124

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %76 = icmp ne %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %83, i32** %13, align 8
  br label %124

84:                                               ; preds = %77, %74
  %85 = load i32*, i32** %25, align 8
  %86 = call i32 @svn_membuf__create(i32* %26, i32 256, i32* %85)
  %87 = load i8*, i8** %15, align 8
  %88 = load i32*, i32** %25, align 8
  %89 = call i32 @svn_dirent_dirname(i8* %87, i32* %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %91 = call i64 @matches_any(i32 %89, %struct.TYPE_5__* %90, i32* %26)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load i32*, i32** %14, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i64, i64* %27, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i8*, i8** %22, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = call i32 @report_dirent(i32* %94, i8* %95, i64 %96, i32 %97, i32 %98, i8* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %93, %84
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* @svn_depth_empty, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load i32*, i32** %14, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = load i32, i32* %21, align 4
  %116 = load i8*, i8** %22, align 8
  %117 = load i32, i32* %23, align 4
  %118 = load i8*, i8** %24, align 8
  %119 = load i32*, i32** %25, align 8
  %120 = call i32 @do_list(i32* %108, i8* %109, %struct.TYPE_5__* %110, i64 %111, i32 %112, i32 (i32*, i32*, i8*, i8*, i32*)* %113, i8* %114, i32 %115, i8* %116, i32 %117, i8* %118, i32* %26, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  br label %122

122:                                              ; preds = %107, %103
  %123 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %123, i32** %13, align 8
  br label %124

124:                                              ; preds = %122, %82, %68, %50, %32
  %125 = load i32*, i32** %13, align 8
  ret i32* %125
}

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_membuf__create(i32*, i32, i32*) #1

declare dso_local i64 @matches_any(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @report_dirent(i32*, i8*, i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @do_list(i32*, i8*, %struct.TYPE_5__*, i64, i32, i32 (i32*, i32*, i8*, i8*, i32*)*, i8*, i32, i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
