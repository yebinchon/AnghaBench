; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_svn_wc__wq_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_svn_wc__wq_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i8* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_WC_BAD_ADM_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Failed to run the WC DB work queue associated with '%s', work item %d %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__wq_run(i32* %0, i8* %1, i32 (i8*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i8*)* %2, i32 (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i8* @svn_pool_create(i32* %19)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %22 = bitcast %struct.TYPE_4__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = load i32*, i32** %11, align 8
  %24 = call i8* @svn_pool_create(i32* %23)
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  br label %27

27:                                               ; preds = %99, %5
  %28 = load i64, i64* @TRUE, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %101

30:                                               ; preds = %27
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @svn_pool_clear(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_wc__db_wq_fetch_next(i64* %15, i32** %16, i32* %37, i8* %38, i64 %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  br label %61

44:                                               ; preds = %30
  %45 = load i32*, i32** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @svn_wc__db_wq_record_and_fetch_next(i64* %15, i32** %16, i32* %45, i8* %46, i64 %47, i32* %49, i32* %50, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @svn_pool_clear(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load i64, i64* @FALSE, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %44, %36
  %62 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %63 = icmp ne i32 (i8*)* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 %65(i8* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32*, i32** %16, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %101

73:                                               ; preds = %69
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32* @dispatch_work_item(%struct.TYPE_4__* %14, i32* %74, i8* %75, i32* %76, i32 (i8*)* %77, i8* %78, i32* %79)
  store i32* %80, i32** %17, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call %struct.TYPE_5__* @svn_skel__unparse(i32* %84, i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %18, align 8
  %89 = load i32, i32* @SVN_ERR_WC_BAD_ADM_LOG, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %92 = load i8*, i8** %8, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @svn_dirent_local_style(i8* %92, i32* %93)
  %95 = load i64, i64* %15, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i8*, i8** %18, align 8
  %98 = call i32* @svn_error_createf(i32 %89, i32* %90, i32 %91, i32 %94, i32 %96, i8* %97)
  store i32* %98, i32** %6, align 8
  br label %105

99:                                               ; preds = %73
  %100 = load i64, i64* %15, align 8
  store i64 %100, i64* %13, align 8
  br label %27

101:                                              ; preds = %72, %27
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @svn_pool_destroy(i32* %102)
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %6, align 8
  br label %105

105:                                              ; preds = %101, %83
  %106 = load i32*, i32** %6, align 8
  ret i32* %106
}

declare dso_local i8* @svn_pool_create(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wq_fetch_next(i64*, i32**, i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wq_record_and_fetch_next(i64*, i32**, i32*, i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32* @dispatch_work_item(%struct.TYPE_4__*, i32*, i8*, i32*, i32 (i8*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
