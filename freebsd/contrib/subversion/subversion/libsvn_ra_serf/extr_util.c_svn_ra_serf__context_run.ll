; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__context_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__context_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32* (i32)* }

@SVN_NO_ERROR = common dso_local global i64 0, align 8
@SVN_RA_SERF__CONTEXT_RUN_DURATION = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_CONN_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1
@SVN_ERR_BAD_CATEGORY_START = common dso_local global i64 0, align 8
@SVN_ERR_LAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error running context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__context_run(%struct.TYPE_3__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SVN_NO_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32* (i32)*, i32* (i32)** %18, align 8
  %20 = icmp ne i32* (i32)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32* (i32)*, i32* (i32)** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32* %24(i32 %27)
  %29 = call i32 @SVN_ERR(i32* %28)
  br label %30

30:                                               ; preds = %21, %3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @SVN_RA_SERF__CONTEXT_RUN_DURATION, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @serf_context_run(i32 %33, i64 %34, i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %9, align 8
  %41 = load i64, i64* @SVN_NO_ERROR, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @APR_STATUS_IS_TIMEUP(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SVN_RA_SERF__CONTEXT_RUN_DURATION, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i64, i64* @SVN_RA_SERF__CONTEXT_RUN_DURATION, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %68

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* @SVN_ERR_RA_DAV_CONN_TIMEOUT, align 8
  %65 = call i32* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @svn_error_create(i64 %64, i32* null, i32* %65)
  %67 = call i32* @svn_error_compose_create(i32* %63, i32 %66)
  store i32* %67, i32** %4, align 8
  br label %100

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %47
  br label %75

70:                                               ; preds = %30
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %6, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %69
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @SVN_ERR(i32* %76)
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @SVN_ERR_BAD_CATEGORY_START, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @SVN_ERR_LAST, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @svn_error_create(i64 %89, i32* null, i32* null)
  %91 = call i32* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 @SVN_ERR_W(i32 %90, i32* %91)
  br label %93

93:                                               ; preds = %88, %84, %80
  %94 = load i64, i64* %8, align 8
  %95 = call i32* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32* @svn_ra_serf__wrap_err(i64 %94, i32* %95)
  store i32* %96, i32** %4, align 8
  br label %100

97:                                               ; preds = %75
  %98 = load i64, i64* @SVN_NO_ERROR, align 8
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %4, align 8
  br label %100

100:                                              ; preds = %97, %93, %62
  %101 = load i32*, i32** %4, align 8
  ret i32* %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i64 @serf_context_run(i32, i64, i32*) #1

declare dso_local i64 @APR_STATUS_IS_TIMEUP(i64) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_error_create(i64, i32*, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32*) #1

declare dso_local i32* @svn_ra_serf__wrap_err(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
