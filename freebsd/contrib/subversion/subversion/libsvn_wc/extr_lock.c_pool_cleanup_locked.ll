; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_pool_cleanup_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_pool_cleanup_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32*, i64 }
%struct.TYPE_10__ = type { i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pool_cleanup_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_cleanup_locked(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @svn_wc__db_is_closed(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %19
  %26 = load i64, i64* @TRUE, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @svn_wc__adm_area_exists(i32 %31, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %38, i32* %2, align 4
  br label %115

39:                                               ; preds = %25
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @svn_pool_create(i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i64, i64* @TRUE, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.TYPE_10__* @svn_wc__db_open(i32** %9, i32* null, i32 %44, i64 %45, i32* %46, i32* %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %7, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %39
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call %struct.TYPE_10__* @svn_wc__db_wq_fetch_next(i32* %5, i32** %6, i32* %52, i32 %55, i32 0, i32* %56, i32* %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %7, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %51
  %62 = load i32*, i32** %6, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call %struct.TYPE_10__* @svn_wc__db_wclock_release(i32* %65, i32 %68, i32* %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %7, align 8
  br label %71

71:                                               ; preds = %64, %61, %51
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = call i32 @svn_error_clear(%struct.TYPE_10__* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @svn_pool_destroy(i32* %75)
  %77 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %115

78:                                               ; preds = %19
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call %struct.TYPE_10__* @svn_wc__db_wq_fetch_next(i32* %5, i32** %6, i32* %81, i32 %84, i32 0, i32* %87, i32* %90)
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %7, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = icmp ne %struct.TYPE_10__* %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %78
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = icmp ne i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call %struct.TYPE_10__* @close_single(%struct.TYPE_9__* %95, i32 %98, i32* %101)
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %7, align 8
  br label %103

103:                                              ; preds = %94, %78
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %10, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = call i32 @svn_error_clear(%struct.TYPE_10__* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %2, align 4
  br label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %106, %72, %37, %17
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @svn_wc__db_is_closed(i32*) #1

declare dso_local i32 @svn_wc__adm_area_exists(i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__db_open(i32**, i32*, i32, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__db_wq_fetch_next(i32*, i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__db_wclock_release(i32*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_10__* @close_single(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
