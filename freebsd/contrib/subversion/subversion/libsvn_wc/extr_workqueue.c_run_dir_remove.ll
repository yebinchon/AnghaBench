; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_dir_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_dir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32*, %struct.TYPE_12__*, i8*, i32, i8*, i32*)* @run_dir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @run_dir_remove(i32* %0, i32* %1, %struct.TYPE_12__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %16, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @apr_pstrmemdup(i32* %27, i32 %30, i32 %33)
  store i8* %34, i8** %17, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @svn_wc__db_from_relpath(i8** %18, i32* %35, i8* %36, i8* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %7
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @svn_skel__parse_int(i64* %20, i64 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i64, i64* %20, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %47, %7
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i8*, i8** %18, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call %struct.TYPE_13__* @svn_io_remove_dir2(i8* %61, i32 %62, i32 %63, i8* %64, i32* %65)
  %67 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %66)
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %8, align 8
  br label %98

68:                                               ; preds = %57
  %69 = load i8*, i8** %18, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call %struct.TYPE_13__* @svn_io_dir_remove_nonrecursive(i8* %69, i32* %70)
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %21, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @APR_STATUS_IS_ENOENT(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @APR_STATUS_IS_ENOTEMPTY(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %80, %74
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %94 = call i32 @svn_error_clear(%struct.TYPE_13__* %93)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  br label %95

95:                                               ; preds = %92, %86, %68
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %97 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %8, align 8
  br label %98

98:                                               ; preds = %95, %60
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  ret %struct.TYPE_13__* %99
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_skel__parse_int(i64*, i64, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @svn_io_remove_dir2(i8*, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_io_dir_remove_nonrecursive(i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local i64 @APR_STATUS_IS_ENOTEMPTY(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
