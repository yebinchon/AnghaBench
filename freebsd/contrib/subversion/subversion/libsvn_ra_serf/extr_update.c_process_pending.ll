; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_process_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_process_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32 }

@REQUEST_COUNT_TO_RESUME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i32*)* @process_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @process_pending(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %12

12:                                               ; preds = %106, %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %17, %22
  %24 = load i64, i64* @REQUEST_COUNT_TO_RESUME, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %107

26:                                               ; preds = %12
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @serf_bucket_allocator_create(i32* %32, i32* null, i32* null)
  store i32* %33, i32** %7, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @svn_pool_clear(i32* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @svn_spillbuf__read(i8** %8, i32* %9, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %107

54:                                               ; preds = %46, %37
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %10, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call %struct.TYPE_14__* @process_buffer(%struct.TYPE_13__* %63, i32* null, i8* %64, i32 %65, i32 %66, i32* %67, i32* %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %11, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = icmp ne %struct.TYPE_14__* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @APR_STATUS_IS_EAGAIN(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %80 = call i32 @svn_error_clear(%struct.TYPE_14__* %79)
  br label %106

81:                                               ; preds = %72, %62
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @APR_STATUS_IS_EOF(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = call i32 @svn_error_clear(%struct.TYPE_14__* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @svn_pool_destroy(i32* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %3, align 8
  br label %115

98:                                               ; preds = %84, %81
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %103 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %102)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %3, align 8
  br label %115

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %78
  br label %12

107:                                              ; preds = %53, %12
  %108 = load i32*, i32** %6, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @svn_pool_destroy(i32* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %3, align 8
  br label %115

115:                                              ; preds = %113, %101, %90
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %116
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @serf_bucket_allocator_create(i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_spillbuf__read(i8**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @process_buffer(%struct.TYPE_13__*, i32*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
