; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_revert.c_revert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_revert.c_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.svn_wc__db_info_t = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i8*, i32, i64, i64, i64, i32, i8*, i32, i8*, i32*)* @revert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @revert(i32* %0, i8* %1, i32 %2, i64 %3, i64 %4, i64 %5, i32 %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca %struct.svn_wc__db_info_t*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  store %struct.svn_wc__db_info_t* null, %struct.svn_wc__db_info_t** %24, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %25, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @svn_depth_empty, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @svn_depth_infinity, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %11
  %37 = phi i1 [ true, %11 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i32*, i32** %22, align 8
  %43 = call i32 @svn_wc__db_is_wcroot(i64* %27, i32* %40, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %27, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = load i8*, i8** %13, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = call i8* @svn_dirent_dirname(i8* %48, i32* %49)
  store i8* %50, i8** %26, align 8
  br label %53

51:                                               ; preds = %36
  %52 = load i8*, i8** %13, align 8
  store i8* %52, i8** %26, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32*, i32** %12, align 8
  %55 = load i8*, i8** %26, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = call i32 @svn_wc__write_check(i32* %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i64, i64* %16, align 8
  %63 = load i32*, i32** %22, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = call i32 @svn_wc__db_op_revert(i32* %59, i8* %60, i32 %61, i64 %62, i32* %63, i32* %64)
  %66 = call %struct.TYPE_7__* @svn_error_trace(i32 %65)
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %23, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %53
  %70 = load i32*, i32** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* @FALSE, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load i32*, i32** %22, align 8
  %75 = call i32 @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t** %24, i32* %70, i8* %71, i64 %72, i32* %73, i32* %74)
  %76 = call %struct.TYPE_7__* @svn_error_trace(i32 %75)
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %23, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %87 = call i32 @svn_error_clear(%struct.TYPE_7__* %86)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %23, align 8
  store %struct.svn_wc__db_info_t* null, %struct.svn_wc__db_info_t** %24, align 8
  br label %88

88:                                               ; preds = %85, %79, %69
  br label %89

89:                                               ; preds = %88, %53
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %24, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load i8*, i8** %19, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i8*, i8** %21, align 8
  %104 = load i32*, i32** %22, align 8
  %105 = call i32 @revert_restore(i64* %25, i32* %93, i8* %94, i32 %95, i64 %96, i64 %97, i32 %98, %struct.svn_wc__db_info_t* %99, i32 %100, i8* %101, i32 %102, i8* %103, i32* %104)
  %106 = call %struct.TYPE_7__* @svn_error_trace(i32 %105)
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %23, align 8
  br label %107

107:                                              ; preds = %92, %89
  %108 = load i64, i64* %25, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load i8*, i8** %19, align 8
  %116 = load i32*, i32** %22, align 8
  %117 = call i32 @svn_wc__wq_run(i32* %112, i8* %113, i32 %114, i8* %115, i32* %116)
  %118 = call %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__* %111, i32 %117)
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %23, align 8
  br label %119

119:                                              ; preds = %110, %107
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32*, i32** %22, align 8
  %124 = call i32 @svn_wc__db_revert_list_done(i32* %121, i8* %122, i32* %123)
  %125 = call %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__* %120, i32 %124)
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %23, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  ret %struct.TYPE_7__* %126
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__write_check(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__db_op_revert(i32*, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t**, i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @revert_restore(i64*, i32*, i8*, i32, i64, i64, i32, %struct.svn_wc__db_info_t*, i32, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_revert_list_done(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
