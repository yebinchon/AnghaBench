; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_crop.c_svn_wc_crop_tree2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_crop.c_svn_wc_crop_tree2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_empty = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can only crop a working copy with a restrictive depth\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can only crop directories\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Cannot crop '%s': it is going to be removed from repository. Try commit instead\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Cannot crop '%s': it is to be added to the repository. Try commit instead\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_crop_tree2(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %18, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @svn_depth_infinity, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %9, align 8
  br label %103

30:                                               ; preds = %8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @svn_depth_empty, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @svn_depth_infinity, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %41 = call i32* @svn_error_create(i32 %39, i32* null, i32 %40)
  store i32* %41, i32** %9, align 8
  br label %103

42:                                               ; preds = %34
  %43 = load i32*, i32** %18, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @svn_wc__db_read_info(i32* %19, i64* %20, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %43, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %20, align 8
  %50 = load i64, i64* @svn_node_dir, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32* @svn_error_create(i32 %53, i32* null, i32 %54)
  store i32* %55, i32** %9, align 8
  br label %103

56:                                               ; preds = %42
  %57 = load i32, i32* %19, align 4
  switch i32 %57, label %82 [
    i32 129, label %58
    i32 128, label %58
    i32 133, label %65
    i32 134, label %72
    i32 132, label %79
    i32 130, label %81
    i32 131, label %81
  ]

58:                                               ; preds = %56, %56
  %59 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %11, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @svn_dirent_local_style(i8* %61, i32* %62)
  %64 = call i32* @svn_error_createf(i32 %59, i32* null, i32 %60, i32 %63)
  store i32* %64, i32** %9, align 8
  br label %103

65:                                               ; preds = %56
  %66 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i8*, i8** %11, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @svn_dirent_local_style(i8* %68, i32* %69)
  %71 = call i32* @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %70)
  store i32* %71, i32** %9, align 8
  br label %103

72:                                               ; preds = %56
  %73 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i8*, i8** %11, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @svn_dirent_local_style(i8* %75, i32* %76)
  %78 = call i32* @svn_error_createf(i32 %73, i32* null, i32 %74, i32 %77)
  store i32* %78, i32** %9, align 8
  br label %103

79:                                               ; preds = %56
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %80, i32** %9, align 8
  br label %103

81:                                               ; preds = %56, %56
  br label %84

82:                                               ; preds = %56
  %83 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %84

84:                                               ; preds = %82, %81
  %85 = load i32*, i32** %18, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %16, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @crop_children(i32* %85, i8* %86, i32 %87, i32 %88, i32 %89, i8* %90, i32 %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32*, i32** %18, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i8*, i8** %14, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @svn_wc__wq_run(i32* %96, i8* %97, i32 %98, i8* %99, i32* %100)
  %102 = call i32* @svn_error_trace(i32 %101)
  store i32* %102, i32** %9, align 8
  br label %103

103:                                              ; preds = %84, %79, %72, %65, %58, %52, %38, %28
  %104 = load i32*, i32** %9, align 8
  ret i32* %104
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @crop_children(i32*, i8*, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
