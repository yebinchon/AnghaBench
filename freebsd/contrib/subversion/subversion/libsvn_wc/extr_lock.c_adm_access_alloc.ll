; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_adm_access_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_adm_access_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i64, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@pool_cleanup_locked = common dso_local global i32 0, align 4
@pool_cleanup_readonly = common dso_local global i32 0, align 4
@pool_cleanup_child = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i8*, i32*, i64, i64, i32*, i32*)* @adm_access_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @adm_access_alloc(%struct.TYPE_6__** %0, i8* %1, i32* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = call %struct.TYPE_6__* @apr_palloc(i32* %19, i32 48)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %17, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @apr_pstrdup(i32* %32, i8* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @svn_dirent_get_absolute(i32* %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %47, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %7
  %51 = load i32*, i32** %11, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @svn_wc__db_wclock_owns_lock(i64* %18, i32* %51, i8* %52, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %18, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i64 @svn_wc__adm_retrieve_internal2(i32* %60, i32 %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %59, %50
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @svn_wc__db_wclock_obtain(i32* %68, i32 %71, i32 0, i32 %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %67, %59
  br label %77

77:                                               ; preds = %76, %7
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i32* @add_to_shared(%struct.TYPE_6__* %78, i32* %79)
  store i32* %80, i32** %16, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @svn_wc__db_wclock_release(i32* %85, i32 %88, i32* %89)
  %91 = call i32* @svn_error_compose_create(i32* %84, i32 %90)
  store i32* %91, i32** %8, align 8
  br label %108

92:                                               ; preds = %77
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @pool_cleanup_locked, align 4
  br label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @pool_cleanup_readonly, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load i32, i32* @pool_cleanup_child, align 4
  %106 = call i32 @apr_pool_cleanup_register(i32* %95, %struct.TYPE_6__* %96, i32 %104, i32 %105)
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %107, i32** %8, align 8
  br label %108

108:                                              ; preds = %103, %83
  %109 = load i32*, i32** %8, align 8
  ret i32* %109
}

declare dso_local %struct.TYPE_6__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock(i64*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @svn_wc__adm_retrieve_internal2(i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_obtain(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @add_to_shared(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__db_wclock_release(i32*, i32, i32*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
