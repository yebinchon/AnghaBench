; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_reporter_finish_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_reporter_finish_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* (i32, i32*)* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i8*, i32*)* @reporter_finish_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @reporter_finish_report(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.TYPE_14__* @svn_client_open_ra_session2(i32** %6, i32 %18, i32* null, i32 %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(%struct.TYPE_14__* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_14__* @svn_ra_get_locks2(i32* %26, i32** %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %10, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = call i32 @svn_error_clear(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %10, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @apr_hash_make(i32 %48)
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %42, %36, %2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = call i32 @SVN_ERR(%struct.TYPE_14__* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_14__* @svn_ra_get_repos_root2(i32* %53, i8** %8, i32 %56)
  %58 = call i32 @SVN_ERR(%struct.TYPE_14__* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @svn_pool_destroy(i32* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_14__* @svn_wc_status_set_repos_locks(i32 %63, i32* %64, i8* %65, i32 %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_14__* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__* (i32, i32*)*, %struct.TYPE_14__* (i32, i32*)** %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call %struct.TYPE_14__* %75(i32 %78, i32* %79)
  ret %struct.TYPE_14__* %80
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_client_open_ra_session2(i32**, i32, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_ra_get_locks2(i32*, i32**, i8*, i32, i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32* @apr_hash_make(i32) #1

declare dso_local %struct.TYPE_14__* @svn_ra_get_repos_root2(i32*, i8**, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_status_set_repos_locks(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
